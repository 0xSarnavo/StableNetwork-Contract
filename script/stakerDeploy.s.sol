// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Staker} from "../src/staker.sol";

//This Contract is setup for Avalanche Fuji Testnet
contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();

        address usdc = 0x5425890298aed601595a70AB815c96711a31Bc65;
        Staker staker = new Staker(usdc);

        vm.stopBroadcast();

        console.log("MyContract deployed to:", address(staker));
    }
}