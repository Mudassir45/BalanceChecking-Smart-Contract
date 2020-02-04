pragma solidity ^0.5.0;

contract Balances {
    address owner;

    constructor () public {
        owner = msg.sender;
    }
    modifier onlyOwner {
        require(owner == msg.sender, "Only Owner Can Check Balance");
        _;
    } 

    function contractAddress() public view returns(address) {
        return address(this);
    }

    function ownerAddress() public view returns(address) {
        return owner;
    } 

    function senderAddress() public view returns(address) {
        return msg.sender;
    }

    function contractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function contractOwnerBalance() public view onlyOwner returns(uint) {
        return owner.balance;
    }

    function senderBalance() public view returns(uint) {
        return msg.sender.balance;
    }
}

