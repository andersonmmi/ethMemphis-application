var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var Application = artifacts.require("./Application.sol");

module.exports = function(deployer) {
  deployer.deploy(SimpleStorage);
  deployer.deploy(Application);
};
