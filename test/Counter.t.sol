// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";
import "ds-test/test.sol"; 



contract CounterTest is Test {
    Counter private counter;

    function setUp() public {
        counter = new Counter();

    }
}
