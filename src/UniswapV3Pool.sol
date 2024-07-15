// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

import "./lib/Tick.sol";
import "./lib/Position.sol";

contract UniswapV3Pool {
    using Tick for mapping (int24 => Tick.Info);
    using Position for mapping (bytes32 => Position.Info);
    using Position for Position.Info;
}