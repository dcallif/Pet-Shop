pragma solidity ^0.4.17;

contract Adoption {
	address[16] public adopters;

	//Adopt a pet
	function adopt(uint petId) public returns (uint) {
		require(petId >= 0 && petId <= 15);

		adopters[petId] = msg.sender;

		return petId;
	}

	//Get adopters
	function getAdopters() public view returns (address[16]) {
		return adopters;
	}
}