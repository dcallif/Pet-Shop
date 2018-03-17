pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
	Adoption adoption = Adoption(DeployedAddresses.Adoption());

	//Test adopt() function
	function testUserCanAdoptPet() public {
		uint returnedId = adoption.adopt(8);

		uint expected = 8;

		Assert.equal(returnedId, expected, "Adoption failed.");
	}

	//Test adopter address is correct
	function testGetAdopterAddressByPetId() public {
		//Should be owner of petId 8
		address expected = this;

		address adopter = adoption.adopters(8);

		Assert.equal(adopter, expected, "Adoption address is incorrect!");
	}

	//Test retrieval of all addresses
	function testGetAdopterAddressByPetIdInArray() public {
		//Should be owner of petId 8
		address expected = this;

		//Store all addresses in memory
		address[16] memory adopters = adoption.getAdopters();

		Assert.equal(adopters[8], expected, "Failed to get address 8");
	}
}