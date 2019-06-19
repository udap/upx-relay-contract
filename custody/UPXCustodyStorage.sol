pragma solidity ^0.5.7;

import "./UPXCustodyLayout.sol";
import "../proxy/Proxy.sol";

contract UPXCustodyStorage is UPXCustodyLayout, Proxy {
    constructor(IERC20 _upxContract, address _custodyAdmin, address _sysAdmin) Proxy(_sysAdmin) public{
        require(address(_upxContract) != address(0));
        require(_custodyAdmin != address(0));
        upxContract = _upxContract;
        custodyAdmin = _custodyAdmin;
    }
}
