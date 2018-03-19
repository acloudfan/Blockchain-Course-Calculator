// #1 Get an instance of the contract to be deployed/migrated
var Calculator = artifacts.require("./Calculator.sol");
var CalculatorV2 = artifacts.require("./CalculatorV2.sol");

module.exports = function(deployer) {
  // #2 Deploy the instance of the contract
  deployer.deploy(Calculator);//, 10);
  deployer.deploy(CalculatorV2, 10);
};


