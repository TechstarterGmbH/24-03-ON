const math = require("./math")

describe("testing add function", () => {
  test("2 plus 2 is 4", () => {
    expect(math.add(2,2)).toBe(4);
  })

  test("-2 plus -2 is -4", () => {
    expect(math.add(-2,-2)).toBe(-4);
  })

  test("'a' plus 'b' should throw error", () => {
    expect(() => math.add("a", "b")).toThrow()
  })

  test("undefined plus undefined should throw error", () => {
    expect(() => math.add(undefined, undefined)).toThrow()
  })
})

describe("testing subtract function", () => {
  test("2 minus 2 is 0", () => {
    expect(math.subtract(2, 2)).toBe(0)
  })

  test("-2 minus -2 is 0", () => {
    expect(math.subtract(-2, -2)).toBe(0)
  })

  test("undefined minus 'a' should throw", () => {
    expect(() => math.subtract(undefined, "a")).toThrow()
  })
})

describe("testing multiply function", () => {
  test("2 times 2 is 4", () => {
    expect(math.multiply(2, 2)).toBe(4)
  })

  test("-2 times 2 is -4", () => {
    expect(math.multiply(-2, 2)).toBe(-4)
  })

  test("undefined times 'a' should throw", () => {
    expect(() => math.multiply(undefined, "a")).toThrow()
  })
})

describe("testing divide function", () => {
  test("2 divided by 2 is 1", () => {
    expect(math.divide(2, 2)).toBe(1)
  })

  test("-2 divided 2 is -1", () => {
    expect(math.divide(-2, 2)).toBe(-1)
  })

  test("undefined times 'a' should throw", () => {
    expect(() => math.divide(undefined, "a")).toThrow()
  })
})

describe("testing square function", () => {
  test("2 square is 4", () => {
    expect(math.square(2)).toBe(4)
  })

  test("-2 square is 4", () => {
    expect(math.square(-2)).toBe(4)
  })

  test("undefined square should throw", () => {
    expect(() => math.square(undefined)).toThrow()
  })
})

describe("testing squareRoot function", () => {
  test("squareRoot of 4 is 2", () => {
    expect(math.squareRoot(4)).toBe(2)
  })

  test("squareRoot of -4 should throw", () => {
    expect(() => math.squareRoot(-4)).toThrow()
  })

  test("undefined square should throw", () => {
    expect(() => math.square(undefined)).toThrow()
  })
})
