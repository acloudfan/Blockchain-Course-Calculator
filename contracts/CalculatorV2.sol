pragma solidity ^0.4.6;

contract CalculatorV2 {

  uint result;

  event NumberAdded(uint n);
  event NumberSubtracted(uint n);
  event NumberMultiplied(uint n);
  event NumberDivided(uint n);

  function CalculatorV2(uint num) {
    // constructor
    result=num;
  }

  // returns the result
  function getResult() constant returns (uint){
    return result;
  }

  // result = result + num
  function addToNumber(uint num) returns (uint) {
    result += num;
    NumberAdded(num);
    return result;
  }

  // result = result - num
  function substractNumber(uint num) returns (uint) {
    result -= num;
    NumberSubtracted(num);
    return result;
  }

  // result = result * num
  function multiplyWithNumber(uint num) returns (uint) {
    result *= num;
    NumberMultiplied(num);
    return result;
  }

  // result = result / num
  function divideByNumber(uint num) returns (uint) {
    result /= num;
    NumberDivided(num);
    return result;
  }

}
