pragma solidity 0.5.10;

import "./EllipticCurve.sol";

contract EllipticCurveInterface is EllipticCurve{
    uint256 public pp = uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F);
    uint256 public nn = uint256(0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141);
    uint256 public gx = uint256(0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798);
    uint256 public gy = uint256(0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8);

    function eAdd( uint256 _x1 , uint256 _y1 , uint256 _x2 , uint256 _y2 )
        public
        view
        returns ( uint256 _x3 , uint256 _y3 )
    {
        (_x3,_y3) = ecAdd(_x1,_y1,_x2,_y2,0,pp);
    }

    function eSub( uint256 _x1 , uint256 _y1 , uint256 _x2 , uint256 _y2 )
        public
        view
        returns ( uint256 _x3 , uint256 _y3 )
    {
        (_x3,_y3) = ecSub(_x1,_y1,_x2,_y2,0,pp);
    }

    function eMul( uint256 _z , uint256 _x1 , uint256 _y1 )
        public
        view
        returns ( uint256 _x2 , uint256 _y2 )
    {
        (_x2,_y2) = ecMul(_z,_x1,_y1,0,pp);
    }

}