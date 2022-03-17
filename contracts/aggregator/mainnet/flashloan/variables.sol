//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./interfaces.sol";

contract ConstantVariables {

    IWeth internal constant wethToken = IWeth(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    IAaveLending internal constant aaveLending = IAaveLending(0x7d2768dE32b0b80b7a3454c06BdAc94A69DDc7A9);
    IERC3156FlashLender internal constant makerLending = IERC3156FlashLender(0x1EB4CF3A948E7D72A198fe073cCb8C7a948cD853);
    IBalancerLending internal constant balancerLending = IBalancerLending(0xBA12222222228d8Ba445958a75a0704d566BF2C8);
    address internal constant daiTokenAddr = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address internal constant cdaiTokenAddr = 0x5d3a536E4D6DbD6114cc1Ead35777bAB948E3643;
    uint256 internal constant daiBorrowAmount = 500000000000000000000000000;
    address internal constant cethTokenAddr = 0x4Ddc2D193948926D02f9B1fE9e1daa0718270ED5;
    uint256 internal constant wethBorrowAmountPercentage = 80;
    address internal constant stEthTokenAddr = 0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84;
    IWstETH internal constant wstEthToken = IWstETH(0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0);
    Comptroller internal constant troller = Comptroller(0x3d9819210A31b4961b30EF54bE2aeD79B9c9Cd3B);
    address internal constant treasuryAddr = 0x28849D2b63fA8D361e5fc15cB8aBB13019884d09;
    ListInterface internal constant instaList = ListInterface(0x4c8a1BEb8a87765788946D6B19C6C6355194AbEb);
    uint256 public constant InstaFeeBPS = 5; // in BPS; 1 BPS = 0.01%

}

contract Variables is ConstantVariables{

    bytes32 internal dataHash;
    // if 1 then can enter flashlaon, if 2 then callback
    uint internal status;

    struct FlashloanVariables {
        address[] _tokens;
        uint256[] _amounts;
        uint256[] _iniBals;
        uint256[] _finBals;
        uint256[] _instaFees;
    }

    mapping(address => address) public tokenToCToken;

    // stETH allowance status
    uint internal stETHStatus;

}