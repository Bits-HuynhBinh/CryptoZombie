pragma solidity ^0.4.19;

import "./ZombieFactory.sol";

contract ZombieFeeding is ZombieFactory {

  function feedAndMultiply(uint _zombieId, uint _targetDna) public {
    require(msg.sender == zombieToOwner[_zombieId]);
    Zombie storage myZombie = zombies[_zombieId];
    // start here
    _targetDna = _targetDna % dnaModulus;
    uint newDna = (zombies[_zombieId].dna + _targetDna) / 2;

    _createZombie("NoName", newDna);
  }
}
