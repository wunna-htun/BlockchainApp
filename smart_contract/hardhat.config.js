//https://eth-ropsten.alchemyapi.io/v2/JTYSsgktm23okriuXAaILgk0VLbuIKDx


require("@nomiclabs/hardhat-waffle");


module.exports={
  solidity:'0.8.0',
  networks:{
    ropsten:{
      url:'https://eth-ropsten.alchemyapi.io/v2/JTYSsgktm23okriuXAaILgk0VLbuIKDx',
      accounts:['b620a1e051f2dc745f9d5a6dda1ac71e3ab2ce7d9be406d1840a5deaa7d54abf']
    }
  }
}