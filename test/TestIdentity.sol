pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Identity.sol";

contract TestIdentity {

  Identity identity = Identity(DeployedAddresses.Identity());


  // Testing the setIdentity() function
  function testSetIdentity() public {
    bytes32 param1 = "firstidentityhash";
    bytes32 returnHash1 = identity.setIdentity(1,param1);

    bytes32 param2 = "secondidentityhash";
    bytes32 returnHash2 = identity.setIdentity(2,param2);

    bytes32 expected1 = "firstidentityhash";

    bytes32 expected2 = "secondidentityhash";

    Assert.equal(returnHash1, expected1, "Identity for 1 is firstidentityhash");
    Assert.equal(returnHash2, expected2, "Identity for 2 is secondidentityhash");

  }

  // Testing the setIdentity() function
  function testGetIdentity() public {

    bytes32 retrievedHash1 = identity.getIdentity(1);
    bytes32 expected1 = "firstidentityhash";

    bytes32 retrievedHash2 = identity.getIdentity(2);
    bytes32 expected2 = "secondidentityhash";

    Assert.equal(retrievedHash1, expected1, "Identity for 1 is firstidentityhash");
    Assert.equal(retrievedHash2, expected2, "Identity for 2 is secondidentityhash");

  }


}
