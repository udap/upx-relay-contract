pragma solidity ^0.5.7;

contract UPXCustodyEvent {

    event RelayFromBnbChain(address indexed to, uint256 amount, string indexed bnbTxHashIndex, string bnbTxHash);
}
