//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Purchase} from "../src/Purchase.sol";

contract DeployPurchase is Script {
    address[] public tokenAddresses;
    address[] public priceFeedAddresses;

    function run() external {
        vm.startBroadcast();
        new Purchase{value: 20 wei}();
        vm.stopBroadcast();
    }
}
