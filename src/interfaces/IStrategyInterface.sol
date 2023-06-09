// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

import {IStrategy} from "@tokenized-strategy/interfaces/IStrategy.sol";
import {IUniswapV3Swapper} from "@periphery/swappers/interfaces/IUniswapV3Swapper.sol";

interface IStrategyInterface is IStrategy, IUniswapV3Swapper {
    function setUniFees(address _token0, address _token1, uint24 _fee) external;
    function setMinAmountToSell(uint256 _minAmountToSell) external;
    function manualRedeemAave() external;
    function balanceAsset() external view returns (uint256);
    function balanceDSR() external view returns (uint256);
    function balanceUpdatedDSR() external returns (uint256);
    function emergencyWithdrawDirect(uint256 _pieAmount, uint256 _daiJoinAmount) external;
}
