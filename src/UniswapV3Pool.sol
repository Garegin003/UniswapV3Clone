// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

import "./lib/Tick.sol";
import "./lib/Position.sol";

contract UniswapV3Pool {
    using Tick for mapping (int24 => Tick.Info);
    using Position for mapping (bytes32 => Position.Info);
    using Position for Position.Info;

   int24 internal constant MIN_TICK = -887272;
    int24 internal constant MAX_TICK = -MIN_TICK;

//Pool tokens
    address public immutable token0;
    address public immutable token1;

//The Slot0 struct holds the current price and tick information for the pool.
    struct Slot0 {
        uint160 sqrtPriceX96;
        int24 tick;
    }

    Slot0 public slot0;

//amount of all liquidity: L
    uint128 public liquidity;

// Ticks info
    mapping(int24 => Tick.Info) public ticks;
// Position Info
    mapping(bytes32 => Position.Info) public positions;

    constructor(address _token0,address _token1,uint160 _sqrtPriceX96,int24 _tick) {
        token0 = _token0;
        token1 = _token1;
        slot0 = Slot0({sqrtPriceX96: _sqrtPriceX96,tick: _tick});
    }


}