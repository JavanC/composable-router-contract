// SPDX-License-Identifier: MIT

import {ERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/ERC1155.sol';

pragma solidity ^0.8.0;

contract MockERC1155 is ERC1155 {
    constructor(string memory url) ERC1155(url) {}

    function mint(
        address to,
        uint256 id,
        uint256 amount
    ) external {
        _mint(to, id, amount, '');
    }

    function mintBatch(
        address to,
        uint256[] memory ids,
        uint256[] memory amounts
    ) external {
        _mintBatch(to, ids, amounts, '');
    }
}
