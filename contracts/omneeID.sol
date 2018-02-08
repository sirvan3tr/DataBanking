pragma solidity ^0.4.6;

contract omneeID {

    struct omneeInfo {
        // whether org or person, 1 for person, 2 for org
        uint entity_type;
        uint256 user_id;
        string firstname;
        string lastname; // and other names
        uint dob_day;
        uint dob_month;
        uint dob_year;
        string address1;
        string address2;
        string postcode;
        string email;
        string passportnum;
        bool validated;
    }

    omneeInfo theUser;
    address public owner;

    // Constructor
    function omneeID(uint _entity_type, string _f_name,
                        string _l_name, string _email) {
        theUser.entity_type = _entity_type;
        theUser.firstname = _f_name;
        theUser.lastname = _l_name;
        theUser.email = _email;
        owner = msg.sender;
    }

    // function to make changes to users primary information
    function changeInfo() constant returns(string) {
        // Only the creator can alter the name --
        // the comparison is possible since contracts
        // are implicitly convertible to addresses.
        if (msg.sender == address(owner)) {
            return "hello world";
        } else {
            return "wtf";
        }
    }

    // Ask the owner if they can link their identity
    function () {

    }

    //
    function getInfo() constant returns(string name) {
        return theUser.firstname;
    }

    function whoIsOwner() constant returns(address owner) {
        return owner;
    }

    function saySomethingElse(string newSaying) returns(bool success) {
        //saySomething = newSaying;
        //return true;
    }
}
