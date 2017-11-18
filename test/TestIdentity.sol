pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Identity.sol";

contract TestIdentity {

  Identity identity = Identity(DeployedAddresses.Identity());


  // Testing the setIdentity() function
  function testSetIdentity() {
    bytes32 param = "firstidentity";
    bytes32 returnHash = identity.setIdentity(1,param);

    bytes32 expected = "firstidentity";

    Assert.equal(returnHash, expected, "Identity for 1 is firstidentity");
  }

}
