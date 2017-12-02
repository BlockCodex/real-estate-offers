pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Identity.sol";

contract TestIdentity {

  Identity identity = Identity(DeployedAddresses.Identity());
  address constant testUserAddress = 0x699A58Ef59e924325A6F87Db3bD213A84e8c9fF8;
  bytes32 constant firstidentityhash = "firstidentityhash";
  bytes32 constant secondidentityhash = "secondidentityhash";

  function testSetIdentity() public {
    identity.setIdentity(testUserAddress, 0, firstidentityhash);
    identity.setIdentity(testUserAddress, 1 ,secondidentityhash);

    var (firstReturnHash, returnAddress1) = identity.identities(testUserAddress, 0);
    var (secondReturnHash, returnAddress2) = identity.identities(testUserAddress, 1);
    Assert.equal(firstReturnHash, firstidentityhash, "Identity for 0 is firstidentityhash");
    Assert.equal(secondReturnHash, secondidentityhash, "Identity for 1 is secondidentityhash");
  }

  function testGetIdentity() public {
    bytes32 firstRetrievedHash = identity.getIdentity(testUserAddress, 0);
    bytes32 secondRetrievedHash = identity.getIdentity(testUserAddress, 1);

    Assert.equal(firstRetrievedHash, firstidentityhash, "Identity for 1 is firstidentityhash");
    Assert.equal(secondRetrievedHash, secondidentityhash, "Identity for 2 is secondidentityhash");

  }


}
