// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
import 'op/contracts/token/ERC20/ERC20.sol';

contract Excercise is ERC20{
    int private counter;
    address public admin;

    constructor(int _counter) ERC20('MR Token','MTN') payable{
        _mint(msg.sender,10000 * 10 ** 18);
        admin = msg.sender;
        counter = _counter;
    }


    function incrementCounter() public{
        counter += 1;
    }

    function decrementCounter() public{
        counter -= 1;
    }

    function getCount() public view returns(int){
        return counter;
    }

}

//cast send 0x6a4660a9Eb923B94BaB46a286FdbCACA8E2f16B3 "incrementCounter()" --private-key a4f972223530b0c1d25af92187b44492c4a6aff98b2b91de93ffaaf8fd75b300
//forge create --rpc-url https://eth-goerli.g.alchemy.com/v2/U_-G-4jXwiUrHoKrfaGOQBL4geCr3uBZ --private-key a4f972223530b0c1d25af92187b44492c4a6aff98b2b91de93ffaaf8fd75b300 src/Excercise.sol:Excercise --constructor-args 1 --verify