const PC = artifacts.require("PedersenCommitment");

module.exports = function(deployer) {
  deployer.deploy(PC).then(async function (pcI) {
    console.log("Governance Contracts Setup - Started")
  });
};
