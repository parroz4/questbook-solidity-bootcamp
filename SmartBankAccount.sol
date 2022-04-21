pragma solidity ^0.8.11;
// pragma solidity >=0.7.0 <0.9.0;
// SPDX-License-Identifier: MIT

contract SmartBankAccount {

    uint totalContractBalance = 0;

    function getContractBalance() public view returns(uint){
        return totalContractBalance;
    }
    
    mapping(address => uint) balances;
    mapping(address => uint) depositTimestamps;
    
    function addBalance(address userAddress) public payable returns(address,uint,uint,uint){
        balances[userAddress] = msg.value;
        totalContractBalance = totalContractBalance + msg.value;
        depositTimestamps[userAddress] = block.timestamp;
        return (userAddress,depositTimestamps[userAddress],balances[userAddress],totalContractBalance);
    }
    
    function getBalanceBank(address userAddress) public view returns(uint) {
        uint principal = balances[userAddress];
        uint timeElapsed = block.timestamp - depositTimestamps[userAddress]; //seconds
        return principal + uint((principal * 7 * timeElapsed) / (100 * 365 * 24 * 60 * 60)) + 1; //simple interest of 0.07%  per year
    }

    function getBalanceOutsideBank(address userAddress) public view returns(uint) {
        return userAddress.balance; 
    }
    
    function withdraw(address userAddress) public payable {
        address payable withdrawTo = payable(userAddress);
        uint amountToTransfer = getBalanceBank(userAddress);
        require(amountToTransfer < totalContractBalance,"insufficient funds on bank");
        withdrawTo.transfer(amountToTransfer);
        totalContractBalance = totalContractBalance - amountToTransfer;
        balances[userAddress] = 0;
    }

    function withdrawAmount(uint amount,address userAddress) public payable{
        address payable withdrawTo = payable(userAddress);
        require(amount < getBalanceBank(userAddress),"insufficient funds on user account");
        withdrawTo.transfer(amount);
        balances[userAddress] -= amount;
        totalContractBalance -= amount;
    }
    
    function addMoneyToContract() public payable {
        totalContractBalance += msg.value;
    }

    
}
@parroz4
 
