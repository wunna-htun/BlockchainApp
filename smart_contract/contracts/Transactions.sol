// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


contract Transcations{
    uint256 transcationCount;

    event Transfer(address from , address receiver, uint256 amount , string message , uint256 timestamp , string keyword);
    

    struct TrasferStruct {
        address sender;
        address receiver ;
        uint amount ;
        string message ;
        uint256 timestamp ;
        string keyword ;

    }

    TrasferStruct[] transcations;

    function addToBlockchain(address payable receiver ,uint amount , string memory message ,string memory keyword) public{

        transcationCount +=1;
        transcations.push(TrasferStruct(msg.sender,receiver ,amount , message,block.timestamp, keyword));
        
        emit Transfer(msg.sender,receiver ,amount , message,block.timestamp, keyword );

    }
    function getAllTransactions() public view returns (TrasferStruct[] memory) {



        return transcations ;
        
    }
    function getTranscationCount() public view returns(uint256) {
        
        return transcationCount; 
    }




}