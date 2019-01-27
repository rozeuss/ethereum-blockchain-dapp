var Election = artifacts.require("./Election.sol");
var HelloWorld = artifacts.require("./HelloWorld.sol");

module.exports = function (deployer) {
    deployer.deploy(Election);
    deployer.deploy(HelloWorld);
};
