pragma solidity ^0.5.7;

import "./UPXCustodyEvent.sol";
import "./UPXCustodyLayout.sol";
import "./IUPXCustody.sol";
import "../proxy/Delegate.sol";

contract UPXCustodyLogic is UPXCustodyLayout, UPXCustodyEvent, IUPXCustody, Delegate {

    function relay(address to, uint256 amount, string memory bnbTxId) public returns (bool){

        require(msg.sender == custodyAdmin);
        require(amount <= getCustody());
        require(!bnbTxIdRecord[bnbTxId]);
        bnbTxIdRecord[bnbTxId] = true;
        upxContract.transfer(to, amount);
        emit RelayFromBnbChain(to, amount, bnbTxId, bnbTxId);
    }

    function getCustody() view public returns (uint256){
        return upxContract.balanceOf(address(this));
    }
}
