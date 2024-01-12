
pragma solidity ^0.8.20 ; 

import {Script} from "forge-std/Script.sol" ; 
import {BasicNft} from "../src/BasicNft.sol" ; 

contract DeployBasicNft is Script {

    function run() external returns(BasicNft) {
        vm.startBroadcast() ; 
        BasicNft basicnft = new BasicNft() ;
        vm.stopBroadcast() ; 
        return basicnft ; 
    }
}