pragma solidity ^0.8.11;

// SPDX-License-Identifier: MIT

contract MySecondContract{

 /*   uint public x=10;
    // function visiblity keywords
    //1. external external anyone outside the smart contracts can call the funciont (just look under the deployed
    // contract and look at the function button)
    //2. private
    //3. internal for inheritated contract
    //4. public and you can call the function everywhere also inside the contract
    //variables visibility keywords
    //public, private, internal
    //type/modifier of function
    //view only reading function
    //pure not read state variables
    //nothing 
    function Add(uint i) external returns(uint){
        x=25;
        return x+i;
    }
    if (x==50){
        //
    }
    else if(x==100 && x==150){
        //
    }
    else {
        //
    }
    for(uint i=0; i<10; i++){
    }
*/

    uint[] rrr;

    function ForLoopDemo() external  returns(uint){

        //rrr=10,20,11,21,12,22,23,33

        for (uint j=0; j<5; j++){
            rrr.push(j+10);
            //iter 1 => 10, j=0
            //iter 2 => 11, j=1
            //iter 3 j=2
            //iter 4 j=3
            //iter 5 j=4

            if(j==5){
                rrr.pop(); //rimuove l'elemento numero j dell'array quindi sparisce 13 e rimane 14
                //delete rrr[j]; //replace index j of array with 0 (default value of array uint)
            }
            else if(j==4){
                //rrr.push(j+50);
                rrr.pop();
            }
            else{
                rrr.push(j+20);
            }

            while(j<3){
                rrr.push(j+15);
                j++;
            }

        }
        
        //return (rrr[7],rrr[8],rrr[9]);
        return rrr.length;
    }

    

}
@parroz4
 
