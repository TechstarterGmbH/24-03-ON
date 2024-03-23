# This is the Makefile to build the lessons from markdown to html and then pdf

# ---( MISC )------------------------------------------------------------------

# The current working directory
CWD := $(shell pwd)

TMP_DIR := $(CWD)/.tmp

# ---( Variables )-------------------------------------------------------------

# Markdown file extension to process
MD_EXT := md

# Markdown file extension to use for slides
SLIDES_MD_EXT := slides.md

# Output extensions to use
# The html files will only be intermediate files, the final output will be the pdf
HTML_OUT_EXT := generated.html
PDF_OUT_EXT := pdf

SLIDES_OUT_EXT := slides.pdf

# The output directory for the generated files
MODULE_DIR := $(CWD)/modules

# The directory where the markdown files are located to process
PROCESS_DIR ?= $(MODULE_DIR)

# The browser to use for the pdf generation
CHROME_BIN ?= chromium

# The translation file extension
TRANS_FILE_NAME := translationfile

# Combined translation file (all paths to files, that need to be translated)
FULL_TRANS_FILENAME := all_translations
FULL_TRANS_FILE := $(TMP_DIR)/$(FULL_TRANS_FILENAME)

TRANS_OUT_MD_EXT := en.md

TRANS_OUT_LANG ?= EN-US

# ---( Dynamic Variables )------------------------------------------------------

# All the markdown files to process
# ALL_MD_FILES := $(shell find $(PROCESS_DIR) -name "*.$(MD_EXT)" | grep -v "$(SLIDES_MD_EXT)" | grep -v node_modules)
#
ALL_MD_FILES := $(shell find $(PROCESS_DIR) -type f -iname "*.$(MD_EXT)" | grep -v "$(SLIDES_MD_EXT)" | grep -v node_modules)

ALL_HTML_FILES := $(ALL_MD_FILES:%.$(MD_EXT)=%.$(HTML_OUT_EXT))
ALL_PDF_FILES := $(ALL_MD_FILES:%.$(MD_EXT)=%.$(PDF_OUT_EXT))

# All the slides markdown files to process
ALL_SLIDES_MD_FILES := $(shell find $(PROCESS_DIR) -name "*.$(SLIDES_MD_EXT)" | grep -v node_modules)

ALL_SLIDES_PDF_FILES := $(ALL_SLIDES_MD_FILES:%.$(SLIDES_MD_EXT)=%.$(SLIDES_OUT_EXT))

# All translation files (all files that contain the translationfile in the name)
ALL_TRANSL_FILES := $(shell find $(PROCESS_DIR) -name "$(TRANS_FILE_NAME)")

# All files that need to be translated
ALL_FILES_TO_TRANSLATE := $(shell cat $(FULL_TRANS_FILE))

# All files that are translated
ALL_TRANS_OUT_FILES := $(ALL_FILES_TO_TRANSLATE:%.$(MD_EXT)=%.$(TRANS_OUT_MD_EXT))

# ---( TF Vars )---------------------------------------------------------------
TF_DIR := $(CWD)/infrastructure/terraform


# ---( Targets )---------------------------------------------------------------

.PHONY: all clean test help debug check docs slides trans run-always

# ---( Misc )------------------------------------------------------------------

run-always:
	@echo "Running always"

help:
	@echo "Usage: make <target>"

debug:
	@echo "CWD: $(CWD)"
	@echo "MODULE_DIR: $(MODULE_DIR)"
	@echo "PROCESS_DIR: $(PROCESS_DIR)"
	@echo "ALL_MD_FILES: $(ALL_MD_FILES)"
	@echo "ALL_HTML_FILES: $(ALL_HTML_FILES)"
	@echo "ALL_PDF_FILES: $(ALL_PDF_FILES)"
	@echo "ALL_SLIDES_MD_FILES: $(ALL_SLIDES_MD_FILES)"
	@echo "ALL_SLIDES_PDF_FILES: $(ALL_SLIDES_PDF_FILES)"
	@echo "ALL_TRANSL_FILES: $(ALL_TRANSL_FILES)"
	@echo "ALL_FILES_TO_TRANSLATE: $(ALL_FILES_TO_TRANSLATE)"
	@echo "ALL_TRANS_OUT_FILES: $(ALL_TRANS_OUT_FILES)"


# ---( Check )------------------------------------------------------------------

check-dirs:
	@if [ ! -d "$(MODULE_DIR)" ]; then \
		echo "Error: The module directory does not exist: $(MODULE_DIR)"; \
		exit 1; \
	fi

	@if [ ! -d "$(PROCESS_DIR)" ]; then \
		echo "Error: The process directory does not exist: $(PROCESS_DIR)"; \
		exit 1; \
	fi
	@echo "Directories check passed"

check: check-dirs
	@echo "All checks passed"

# ---( Build )------------------------------------------------------------------

# Build all the markdown files to html
# TODO: Get title from the markdown file
%.$(HTML_OUT_EXT): %.$(MD_EXT)
	@echo "Building HTML $@ from md: $<"
	@markdown2html-converter $< \
		--title "Techstarter: Fabio Keller" \
		--html-path $@ \
		--force \
		--no-safe

# Build all the generated html files to pdf
$(ALL_PDF_FILES): %.$(PDF_OUT_EXT): %.$(HTML_OUT_EXT)
	@echo "Building PDF $@ from html: $<"
	@$(CHROME_BIN) \
		--headless \
		--disable-gpu \
		--run-all-compositor-stages-before-draw \
		--no-pdf-header-footer \
		--print-to-pdf-no-header \
		--print-to-pdf=$@ \
		$<

$(ALL_SLIDES_PDF_FILES): %.$(SLIDES_OUT_EXT): %.$(SLIDES_MD_EXT)
	@echo "Building pdf $@ from md $<"
	@marp $< --pdf --allow-local-files --output $@

# ---( Translation )-----------------------------------------------------------

# Combine all translation files into one
$(FULL_TRANS_FILE): $(ALL_TRANSL_FILES) run-always
	@echo "Combining all translation files into one"
	@mkdir -p $(TMP_DIR)
	@test -f $@.new && rm $@.new || true
	@for file in $(ALL_TRANSL_FILES); do \
		echo "Combining file: $$file"; \
		directory=$$(dirname $$file); \
		echo "Directory: $$directory"; \
		cat $$file | while read line; do \
			if [ -n "$$line" ]; then \
				thefile="$$directory/$$line"; \
				echo "Adding file: $$thefile"; \
				echo $$thefile >> $@.new; \
			fi; \
		done; \
	done
	@diff $@ $@.new || mv $@.new $@

# Translate
$(ALL_TRANS_OUT_FILES): %.$(TRANS_OUT_MD_EXT): %.$(MD_EXT)
	@echo "Translating $< to $@"
	@test -z $$DEEPL_AUTH_KEY && echo "Error: DEEPL_AUTH_KEY is not set" && exit 1 || true
	@deepl text --to $(TRANS_OUT_LANG) --from DE --preserve-formatting - < $< > $@

#---( Collections )------------------------------------------------------------------

docs: $(ALL_PDF_FILES)

docs-clean:
	@echo "Cleaning all generated files"
	@rm -f $(ALL_HTML_FILES) $(ALL_PDF_FILES)

slides: $(ALL_SLIDES_PDF_FILES)

slides-clean:
	@echo "Cleaning all generated slides"
	@rm -f $(ALL_SLIDES_PDF_FILES)

trans-prepare: $(FULL_TRANS_FILE)

trans: $(ALL_TRANS_OUT_FILES)

all: check docs slides
	@echo "All files built"

clean: docs-clean slides-clean

all-clean: clean all

#-----------------------------------------------------------------------------------
# ---( Terraform )-----------------------------------------------------------------------
#-----------------------------------------------------------------------------------

tf-init:
	@echo "Initializing Terraform"
	@terraform -chdir=${TF_DIR} init

tf-plan:
	@echo "Planning Terraform"
	@terraform -chdir=${TF_DIR} plan

tf-apply:
	@echo "Applying Terraform"
	@terraform -chdir=${TF_DIR} apply

