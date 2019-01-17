// pk: changed to latest version 0.4.23
pragma solidity ^0.4.23;

// pk: changed the contract version from 2 to 3
contract CalculatorV3 {

    uint result;

    event NumberAdded(uint n);
    event NumberSubtracted(uint n);
    event NumberMultiplied(uint n);
    event NumberDivided(uint n);

    // pk: changed the function name to something other than the contract name
    function Calculator(uint num) public {
        // constructor
        result = num;
    }

    // returns the result
    // pk: "constant" deprecated, replaced with "view"
    function getResult() public view returns (uint){
        return result;
    }

    // result = result + num
    function addToNumber(uint num) public returns (uint) {
        result += num;
        // pk: inserted "emit" before  calling the event
        emit NumberAdded(num);
        return result;
    }

    // result = result - num
    function substractNumber(uint num) public returns (uint) {
        result -= num;
        // pk: inserted "emit" before  calling the event
        emit NumberSubtracted(num);
        return result;
    }

    // result = result * num
    function multiplyWithNumber(uint num) public returns (uint) {
        result *= num;
        // pk: inserted "emit" before  calling the event
        emit NumberMultiplied(num);
        return result;
    }

    // result = result / num
    function divideByNumber(uint num) public returns (uint) {
        result /= num;
        // pk: inserted "emit" before  calling the event
        emit NumberDivided(num);
        return result;
    }

}
