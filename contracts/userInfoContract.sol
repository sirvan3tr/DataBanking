pragma solidity ^0.4.4;

contract userInfoContract {

  event userInfo(
    string _name,
    address indexed _sender,
    string _dob,
    uint256 _time);

  function storeUserInfo(string _name, string _dob) returns (int256) {
    // perform deposit, update user’s balance, etc
    userInfo(_name, msg.sender, _dob, now);
  }

}
