pragma solidity ^0.4.4;

contract Identity {
  //bytes32 [16] public identities;
  mapping(unit => hash) public identities;


  // set an Identity
  function setIdentity(uint profileID, hash userHash) public returns (hash) {
    require(profileID >= 0 && profileID <= 15);

    identities[profileID] = userHash;

    return userHash;
  }

  // Retrieving the userHash
  function getIdentity(uint profileID) public constant returns (hash) {
    require(profileID >= 0 && profileID <= 15);

    return identities[profileID];
  }
}
