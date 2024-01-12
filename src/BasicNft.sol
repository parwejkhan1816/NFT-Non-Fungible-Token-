
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter  ; 
    mapping(uint256 => string) private s_tokenIdtoURI ; 

    constructor() ERC721("Dogie" , "DOG"){
        s_tokenCounter = 0 ; 
    }

    function mintNFT(string memory tokenUri)  public {
        s_tokenIdtoURI[s_tokenCounter] = tokenUri ; 
        _safeMint(msg.sender,s_tokenCounter) ; 
        s_tokenCounter++ ;
    }

    function tokenURI(uint256 tokenId) public view override returns(string memory)
    {
        return s_tokenIdtoURI[tokenId] ; 
    }
}