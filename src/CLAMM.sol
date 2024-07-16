// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.26;

contract CLAMM {

    address immutable token0;
    address immutable token1;
    uint24 immutable fee;
    int24 immutable tickspacing;


    constructor(address _token0,address _token1,uint24 _fee,int24 _tickspacing) {
        token0 = _token0;
        token1 = _token1;
        fee = _fee;
        tickspacing = _tickspacing;
    }
}


