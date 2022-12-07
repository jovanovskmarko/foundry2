// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract MyContract is ERC20{
    address public admin;

    constructor() ERC20('Marko Token','MTN') payable{
        _mint(msg.sender,10000 * 10 ** 18);
        admin = msg.sender;
    }
    //vaka ustvari gi prefrlam tokenite na mojot wallet

    function mint(address to, uint amount) external{
        require(msg.sender == admin,'only admin');
        _mint(to,amount);
    }
    //so prae voa?? dali primer jas ako sum admin mozam da mu dadam tokeni na viktor so ne se od prviot totalsuply

    function burn(uint amount) external{
        _burn(msg.sender,amount);
    }
    //malku da go rascackame voa

}