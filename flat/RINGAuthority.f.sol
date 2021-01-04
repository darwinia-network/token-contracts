// hevm: flattened sources of src/RINGAuthority.sol
pragma solidity >=0.4.24 <0.5.0;

////// src/RINGAuthority.sol
/* pragma solidity ^0.4.24; */

contract RINGAuthority {

    address public ringOwner;

    constructor(address _ringOwner) public {
        ringOwner = _ringOwner;
    }

    function canCall(
        address _src, address _dst, bytes4 _sig
    ) public view returns (bool) {
        return ( ringOwner == _src );
    }
}
