pragma solidity ^0.4.4;

contract Identity {
  //bytes32 [16] public identities;
  mapping(address => Claim[15]) public identities;

  struct Claim {
    bytes32 claimHash;
    address validator;
  }

  // set an Identity
  function setIdentity(address user, uint index, bytes32 value) payable public returns (bytes32) {
    //require(profileID >= 0 && profileID <= 15);

    (identities[user])[index].claimHash = value;
    (identities[user])[index].validator = msg.sender;
  }

  // Retrieving the userHash
  function getIdentity(address user, uint index) public constant returns (bytes32) {
    //require(profileID >= 0 && profileID <= 15);

    return identities[user][index].claimHash;
  }
}
