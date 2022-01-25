/*/ SPDX-License-Identifier: MIT


pragma solidity 0.8.0;

// import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";
// import "./ERC20_Interface.sol"; */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.0.0/contracts/token/ERC20/IERC20.sol
interface IERC20 {
    function totalSupply() external view returns (uint);

    function balanceOf(address account) external view returns (uint);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}



contract Taketoken{
    

    
   
    function checkBalance(IERC20 token, address account) public view returns(uint256) {

        // using SafeERC20 for IERC20;
        IERC20 token = IERC20(0x3d64146Ec0Fd0897eb2066834C533B0f8B6d5C32);
        
        
       // uint256 erc20balance = token.balanceOf(address(this));
        //token.transfer(to, amount);
        
        return token.balanceOf(account);
        
    }
}
