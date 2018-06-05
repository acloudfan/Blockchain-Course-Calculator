pragma solidity ^0.4.6;

contract CalculatorV2 {

  uint result;

  event NumberAdded(uint n);
  event NumberSubtracted(uint n);
  event NumberMultiplied(uint n);
  event NumberDivided(uint n);

  function CalculatorV2(uint num) public {
    // constructor
    result=num;
  }

  // returns the result
  function getResult() public constant returns (uint){
    return result;
  }

  // result = result + num
  function addToNumber(uint num) public returns (uint) {
    result += num;
    emit NumberAdded(num);
    return result;
  }

  // result = result - num
  function substractNumber(uint num) public returns (uint) {
    result -= num;
    emit NumberSubtracted(num);
    return result;
  }

  // result = result * num
  function multiplyWithNumber(uint num) public returns (uint) {
    result *= num;
    emit NumberMultiplied(num);
    return result;
  }

  // result = result / num
  function divideByNumber(uint num) public returns (uint) {
    result /= num;
    emit NumberDivided(num);
    return result;
  }

}
