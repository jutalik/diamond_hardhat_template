import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import fs from "fs";

const func: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { getNamedAccounts, deployments, getChainId } = hre;

  const { diamond } = deployments;

  const { deployer, diamondAdmin } = await getNamedAccounts();

  await diamond.deploy("TEST", {
    from: deployer,
    owner: diamondAdmin,
    facets: ["Erc20FacetToken"],
  });
};
export default func;
