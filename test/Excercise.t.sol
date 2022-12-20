// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Excercise.sol";

contract ExcerciseTest is Test{
    Excercise counter;

    function setUp() public{
        counter = new Excercise(10);
    }

    function testGetCount() public{
        int value = counter.getCount();
        assertEq(value, 10);
        emit log_named_int("The value is: ",value);

    }

    function testIncrementCounter() public{
        counter.incrementCounter();
        int value = counter.getCount();
        assertEq(value, 11);
        emit log_named_int("The value is: ",value);
    }

    function testDecrementCounter() public {
        counter.decrementCounter();
        counter.decrementCounter();
        int value = counter.getCount();
        assertEq(value,8);
        emit log_named_int("The value is: ",value);
    }
}

//forge script ./test/Excercise.t.sol:ExcerciseTest --sig "testIncrementCounter()" --debug