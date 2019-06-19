pragma solidity ^0.5.7;

contract IUPXCustody {
    function relay(address to, uint256 amount, string memory bnbTxId) public returns (bool);

    function getCustody() view public returns (uint256);
}
