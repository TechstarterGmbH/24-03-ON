function failIfNotANumber(args) {
  for (let i = 0; i < args.length; i++) {
    const val = args[i];
    if (typeof val !== "number") {
      throw new Error(`Argument ${val} is not a number`)
    }
  }
}

function add(a, b) {
  failIfNotANumber([a, b])
  return a + b;
}

function subtract(a, b) {
  failIfNotANumber([a, b])
  return a - b;
}

function multiply(a, b) {
  failIfNotANumber([a, b])
  return a * b;
}

function divide(a, b) {
  failIfNotANumber([a, b])
  return a / b;
}

function square(a) {
  failIfNotANumber([a])
  return a * a;
}

function squareRoot(a) {
  failIfNotANumber([a])
  if (a < 0) {
    throw new Error("Can't get squareRoot of negative number");
  }
  return Math.sqrt(a);
}

module.exports = {
  add,
  subtract,
  multiply,
  divide,
  square,
  squareRoot,
}
