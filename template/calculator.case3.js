// SOLUTION to the exercise
// Please copy/paste the code in /test/calculator.js

// Test case#3 Checks if calls to multiply/divide for ((Initial_Value * 10) / 5) = 20
it("should multiply by 10 and then diide by 5 to get a result=20", function () {
    // Transaction
    var calculator = null;
    // Create a new dployment of contract so that result=10
    return Calculator.new().then(function (instance) {
      calculator = instance
      // Multiply by 10 
      return calculator.multiplyWithNumber(10, from)
    }).then(function () {
      return calculator.getResult.call();
    }).then(function (result) {
      // Check if the result = 100
      assert.equal(result.toNumber(), 100, "Result after multiplying with 10 should be 100");
      // Now divide by 5
      return calculator.divideByNumber(5, from);
    }).then(function () {
      return calculator.getResult.call();
    }).then(function (result) {
      assert.equal(result.toNumber(), 20, "Result after dividing with 5 should be 20");
    });
  });