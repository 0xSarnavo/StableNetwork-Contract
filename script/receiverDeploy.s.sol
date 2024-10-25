// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Sender} from "../src/sender.sol";

//This Contract is setup for Avalanche Fuji Testnet
contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();

        address router = 0xF694E193200268f9a4868e4Aa017A0118C9a8177;
        address link = 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846;
        address usdc = 0x5425890298aed601595a70AB815c96711a31Bc65;
        Sender sender = new Sender(router, link, usdc);

        vm.stopBroadcast();

        console.log("MyContract deployed to:", address(sender));
    }
}
