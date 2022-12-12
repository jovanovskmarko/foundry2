// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
import 'op/contracts/token/ERC20/ERC20.sol';

contract Counter is ERC20{
    address public admin;

    constructor() ERC20('Marko Token','MTN') payable{
        _mint(msg.sender,10000 * 10 ** 18);
        admin = msg.sender;
    }

    function mint(address to, uint amount) external{
        require(msg.sender == admin,'only admin');
        _mint(to,amount);
    }

    function burn(uint amount) external{
        _burn(msg.sender,amount);
    }
    
}

//forge create --rpc-url https://eth-goerli.g.alchemy.com/v2/3JKNEoGH-6Gh6Idw3AAlYm0J_PkrCuye --private-key a4f972223530b0c1d25af92187b44492c4a6aff98b2b91de93ffaaf8fd75b300 src/Counter.sol:Counter 
//forge verify-contract 0x97600918f8520baD6B95C038A0aCFd2B949618F6