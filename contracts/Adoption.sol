pragma solidity ^0.6.12;

contract Adoption {

    address [17] public adopters;


    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
         require(petId >= 0 && petId <= 15);

         adopters[petId] = msg.sender;

          return petId;
    }
    // Adopting a pet
    // function adopt(uint petId) public returns (uint) {
    //      require(petId >= 0 && petId <= 15);

    //      adopters[petId] = msg.sender;

    //      return petId;
    // }
    // Retrieving the adopters
    function getAdopters() public view returns (address[17] memory) {
        return adopters;
    }


}       