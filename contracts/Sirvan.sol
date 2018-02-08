pragma solidity ^0.4.4;

contract Sirvan {

    struct Person {
      string Name;
      string DOB;
      string address1;

    }

    Person sirvan;


    function Sirvan(string _name, string _dob, string _address){
      sirvan.Name = _name;
      sirvan.DOB = _dob;
      sirvan.address1 = _address;
    }

    function storeSirvan(string _name, string _dob, string _address){
      sirvan.Name = _name;
      sirvan.DOB = _dob;
      sirvan.address1 = _address;
    }

    function getName() constant returns (string _name){
      return sirvan.Name;
    }

}
