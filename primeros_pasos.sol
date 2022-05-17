// SPDX-License-Identifier: MIT

// Version del compilador
pragma solidity ^0.8.0; //pragma solidity >=0.6.0 < 0.8.0;

//Importación de repositorio externo de Openzeppelin
import "@openzeppelin/contracts@4.4.2/token/ERC721/ERC721.sol";

//Creación de nuestro smart contract
contract myContract is ERC721 {

    //Dirección de la persona que despliega el smart contract
    address owner;

    /*Vamos a guardar en la variable owner la dirección de la persona
    que despliega el contrato*/
    constructor(string memory _name, string memory _symbol)
    ERC721(_name,_symbol){
        owner = msg.sender;
    }

}
