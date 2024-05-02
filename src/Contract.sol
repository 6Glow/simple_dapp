// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleCounter {
    uint256 public counter;
    address public owner;
    constructor() {
      counter = 0;
      owner = msg.sender;
    }

    modifier onlyOwner() {
      require(msg.sender == owner, "Only owner can call this function");
      _;
    }

    function increment() public onlyOwner {
      counter++;
    }

    function decrement() public onlyOwner {
      require(counter > 0 , "Counter cannot be negative");
      counter--;
    }

    function reset() public onlyOwner {
      counter = 0;
    }

    function getCounter() public view returns (uint256)  {
      return counter;
    }

}


