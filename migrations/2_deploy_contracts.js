var Adoption = artifacts.require("Adoption");
var Sirvan = artifacts.require("Sirvan");
var strg = artifacts.require("Storage");
var omneeID = artifacts.require("omneeID");
var omneePortal = artifacts.require("omneePortal");
var userInfoContract = artifacts.require("userInfoContract");

module.exports = function(deployer) {
  deployer.deploy(omneePortal);
  deployer.deploy(omneeID);
  deployer.deploy(Adoption);
  deployer.deploy(strg);
  deployer.deploy(Sirvan, "James Bond", "26012017", "Westminster");
  deployer.deploy(userInfoContract);
};
