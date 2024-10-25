// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script, console} from "forge-std/Script.sol";
import {Receiver} from "../src/receiver.sol";

//This Contract is setup for Polygon Amoy Testnet
contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();

        address router = 0x9C32fCB86BF0f4a1A8921a9Fe46de3198bb884B2;
        address link = 0x0Fd9e8d3aF1aaee056EB9e802c3A762a667b1904;
        address usdc = 0x41E94Eb019C0762f9Bfcf9Fb1E58725BfB0e7582;
        Receiver receiver = new Receiver(router, link, usdc);

        vm.stopBroadcast();

        console.log("MyContract deployed to:", address(receiver));
    }
}
