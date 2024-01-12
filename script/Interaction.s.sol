
pragma solidity ^0.8.20 ; 

import {Script} from "forge-std/Script.sol" ; 
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol" ;
import {BasicNft} from "../src/BasicNft.sol" ; 
contract MintBasicNft is Script {
    string constant public pug = "ipfs:mnm" ; 
    function run() external  {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "BasicNft",
            block.chainid
        );
        minNftOnContract(mostRecentlyDeployed) ; 
    }      

    function minNftOnContract(address contractAddress) public {
        // vm.startBroadcast() ; 
        BasicNft(contractAddress).mintNFT(pug) ; 
        // vm.stopBroadcast() ; 
    }
}