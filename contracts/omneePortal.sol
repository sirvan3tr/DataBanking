pragma solidity ^0.4.6;
import "./omneeID.sol";

contract omneePortal {
    mapping (address => address) private directory;
    address public usersOmneeID;
    
    // Create a new identity
    function createID(uint _entity_type, string _f_name, 
                        string _l_name, string _email) returns(string outputmessage) {
        if(directory[msg.sender] == 0) {
            omneeID newID = new omneeID(1, _f_name, _l_name, _email);
            directory[msg.sender] = newID;
            outputmessage = "New ID was created";
            // we have created an ID
        } else {
            // identity already exists, so lets login
            outputmessage = "ID already exists";
        }
        //usersOmneeID = directory[msg.sender];
    }
    string mymsg;
    function userExists() returns(string){
        if(directory[msg.sender] == 0) {
            // user doesnt exist
            mymsg = 'User doesnt exist m8';
        } else {
            // user exists
            mymsg = 'User does exist m8y';
        }
        return mymsg;
    }
    
    // Returns the users contract address
    function returnID() returns(address omneeIDC, string themsg) {
        if(directory[msg.sender] == 0) {
            // no ID here to return
        } else {
            usersOmneeID = directory[msg.sender];
            omneeIDC = directory[msg.sender];
        }
    }
}