pragma solidity ^0.5.7;

import "../openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";

contract UPXCustodyLayout {

    address internal custodyAdmin;
    mapping(string => bool) bnbTxIdRecord;
    IERC20 internal upxContract;
}
