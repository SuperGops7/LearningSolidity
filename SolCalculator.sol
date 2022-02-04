pragma solidity ^0.8.11;

contract LeCalculator{
    
    function add(int a, int b) public view returns(int){
        return(a+b);
    }

    function subtract(int a, int b) public view returns(int){
        return(a-b);
    }

    function multiply(int a, int b) public view returns(int){
        return(a*b);
    }

    function divide(int a, int b) public view returns(int){
        return(a/b);
    }

    function modulus(int a, int b) public view returns(int){
        return(a%b);
    }
}