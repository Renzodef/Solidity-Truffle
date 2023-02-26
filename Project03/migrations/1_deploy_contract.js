var DistributeMoney = artifacts.require("DistributeMoney");

module.exports = function(deployer) {
    deployer.deploy(DistributeMoney);
};