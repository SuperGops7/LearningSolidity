pragma solidity ^0.8.11;
contract arraysAndLoops{
    uint [] arr;

    function test(uint j) public returns(uint)
    {
        for(uint i=0; i<7; i++)
        {
            arr.push(j+10);
            if(i==2)
                delete arr[i];
            else if (i==4)
            {
                arr.pop();
            }
        }

        return arr.length;
    }
    function check() public view returns(uint)
    {
        return arr[4];
    }
    
}