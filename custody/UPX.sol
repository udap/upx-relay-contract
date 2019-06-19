pragma solidity ^0.5.7;

import "../openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

//this is not the upx smart contract on mainnet, just a simulate copy
contract UPX is ERC20 {

    string public name = "UDAP Token";
    string public symbol = "UPX";
    uint256 public decimals = 18;

    constructor(uint256 _initialSupply) public {
        _mint(msg.sender, _initialSupply * 10 ** uint256(decimals));
    }
}
