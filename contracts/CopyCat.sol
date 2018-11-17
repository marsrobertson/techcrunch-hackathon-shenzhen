pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "openzeppelin-solidity/contracts/token/ERC721/ERC721Mintable.sol";

contract MyNFT is ERC721Full, ERC721Mintable {

    mapping(uint256 => uint256) public newToOld;

    constructor() ERC721Full("CopyCat", "CPC") public {
    }

    function mintWithBase(address to, uint256 tokenId, uint256 baseTokenId) public {
        _mint(to, tokenId);
        newToOld[tokenId] = baseTokenId;
    }

}