// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.2;

contract Functions {

    uint LuckyNumber = 10;

    function ShowNumber() public view returns (uint) {
        return LuckyNumber;
    }

    function SetNumber(uint newNumber) public {
        LuckyNumber = newNumber;
    }

    // function nothing() public pure returns(uint, bool, bool) {
    //     return (5, true, false);
    // }

    function nothing() public pure returns(uint x, bool y, bool z) {
        x = 6;
        y = true;
        z = true;
     }

     uint a = 3;

     function viewA() public view returns(uint) {
        return a;
     }

     function setA() public  view returns (uint) {
        return a;
     }

     function Sum(uint y) public  view returns (uint) {
        return a + y;
     }

     function Add(uint m, uint n) public view returns (uint) {
        return m + n + block.timestamp;
     }

     function Add2(uint m, uint n) public pure returns (uint) {
        return m + n;
     }

     // Erişim belirteçleri: public, private, internal, external
     //  Public: fonksiyonu hem kullanıcılar çağırabilir hem de kontratlar çağırabilir

     function Add3(uint m, uint n) public pure returns (uint) {
        return  m + n;
     }

     function Add4(uint k, uint l) public pure returns (uint) {
        return Add3(k,l); // Add3 is public
     }

     function PublicKeyword () public pure returns (string memory) {
        return "This is a public function";
     }

     function callPublicKeyword() public pure returns (string memory) {
        return PublicKeyword(); // calling function is public
     }

     // Private: fonksiyonu sadece mevcut kontrat çağırabilir. Dışarıdan erişime kapalıdır

     function PrivateKeyword() private pure returns (string memory) {
        return "This is a private functions";
     }

     // We can access a private function from a public function (just in contract)
     function PublicKeyword2() public pure returns (string memory) {
        return PrivateKeyword();
     }

     // Internal: private fonksiyon gibi dışarıdan çağrıma kapalıdır ama
     // eğer mevcut kontratı bir başka kontrat miras olarak alırsa internal fonksiyonu kullanabilir

     function InternalKeyword() internal pure returns (string memory) {
        return "This is an internal function";
     }

     // We can access an internal function from a public function (just in contract)
     function PublicKeyword3() public pure returns (string memory) {
        return InternalKeyword();
     }

     // External: dışarıdan çağrılabilir fakat kontrat içerisinden çağrılmaz

     function ExternalCall() external pure returns (string memory) {
        return "This is an external function";
     }

     // We can't access an external function from a public function (just in contract)
     function PublicKeyword4() public pure returns (string memory) {
        // return ExternalKeyword();
     }    
}