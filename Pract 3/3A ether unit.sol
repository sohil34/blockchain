// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SolidityTest {
function convert_Amount_to_Wei(uint256 Amount)
public
pure
returns (uint256)
{
return Amount * 1 wei;
}
function convert_Amount_To_Ether(uint256 Amount)
public
pure
returns (uint256)
{
return Amount * 1 ether;
}
function convert_Amount_To_Gwei(uint256 Amount)
public
pure
returns (uint256)
{
return Amount * 1 gwei;
}
function convert_seconds_To_mins(uint256 _seconds)
public
pure
returns (uint256)
{
return _seconds / 60;}
function convert_seconds_To_Hours(uint256 _seconds)
public
pure
returns (uint256)
{
return _seconds / 3600;
}
function convert_Mins_To_Seconds(uint256 _mins)
public
pure
returns (uint256)
{
return _mins * 60;
}
}