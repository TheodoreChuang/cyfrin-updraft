// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

contract DeployCounter is Script {
    function run() external returns (Counter) {
        vm.startBroadcast();

        Counter counter = new Counter();

        vm.stopBroadcast();

        return counter;
    }
}
