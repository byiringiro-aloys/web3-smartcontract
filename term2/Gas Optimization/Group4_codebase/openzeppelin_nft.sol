//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint256 private _tokenIdCounter;
    
    constructor() ERC721("MyNFT", "MNFT") Ownable(msg.sender) {}
    
    // Mint a new NFT
    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;
        _safeMint(to, tokenId);
    }
    
    // Get total minted NFTs
    function totalSupply() public view returns (uint256) {
        return _tokenIdCounter;
    }
    
    // Override tokenURI for metadata
    function tokenURI(uint256 tokenId) public view virtual override 
        returns (string memory) {
        require(ownerOf(tokenId) != address(0), "Token does not exist");
        return string(abi.encodePacked("https://myapi.com/nft/", 
                                       Strings.toString(tokenId)));
    }
}

/*
 * TO TEST IN REMIX:
 * 1. Deploy the contract
 * 2. Call safeMint(your_address) to create NFT #0
 * 3. Check ownerOf(0) - should return your address
 * 4. Call balanceOf(your_address) - should show 1
 * 5. Try transferFrom(from, to, tokenId) to transfer NFT
 */
