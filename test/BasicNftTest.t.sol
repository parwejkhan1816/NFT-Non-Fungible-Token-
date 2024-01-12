
pragma solidity ^0.8.20 ; 

import {Test} from "forge-std/Test.sol"  ;
import  {BasicNft} from "../src/BasicNft.sol" ; 
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol" ; 
contract BasicNftTest is Test {
    DeployBasicNft public deployer ; 
    BasicNft public basicnft ; 

    address public USER = makeAddr("USER") ;

    function setUp() public{
        deployer = new DeployBasicNft()  ; 
        basicnft  = deployer.run() ; 
    } 
    
    function testnameisCorrect() public view {
       string memory expect  =  "Dogie"  ; 
       string memory actual = basicnft.name() ; 

       assert(keccak256(abi.encodePacked(expect)) == keccak256(abi.encodePacked(actual)))  ; 
    }
 }