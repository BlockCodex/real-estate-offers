pragma solidity ^0.4.4;

contract Identity {
  //bytes32 [16] public identities;
  mapping(uint => bytes32) public identities;

  struct Multihash {
    bytes32 hash;
    uint8 hash_function;
    uint8 size;
  }

  // set an Identity
  function setIdentity(uint profileID, bytes32 userHash) public returns (bytes32) {
    //require(profileID >= 0 && profileID <= 15);

    identities[profileID] = userHash;

    return userHash;
  }

  // Retrieving the userHash
  function getIdentity(uint profileID) public constant returns (bytes32) {
    //require(profileID >= 0 && profileID <= 15);

    return identities[profileID];
  }
}
