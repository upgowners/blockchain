// pragma solidity ^0.5.0; 
// contract SolidityTest {
//     uint storedData; // State variable 
//     constructor() public {
//         storedData = 10; 
//     }
//     function getResult() public view returns(uint)
//     { 
//         uint a = 1; // local variable
//         uint b = 6;
//         uint result = a + b;
//         return result; //access the state variable 
//     }
// }


// Solidity program to demonstrate local variables
// pragma solidity ^0.5.0;
// contract SolidityTest {
//     uint storedData; // State variable
//     constructor() public {
//         storedData = 10;
//     }
//     function getResult() public view returns(uint){
//         uint a = 1; // local variable
//         uint b = 2;
//         uint result = a + b;
//         return result; //access the state variable
//     }
// }

// Solidity program to show Global variables
// pragma solidity ^0.5.0;
// contract Solidity_var_Test {
//     uint8 public state_var;
//     constructor() public {
//         state_var = 16;
//     }
// }

// Solidity program to show Global variables
// pragma solidity ^0.5.0;
// contract Test {
//     address public admin;
//     constructor() public { 
//         admin = msg.sender; 
//     }
// }



// Solidity contract to demonstrate Arithematic Operator
// pragma solidity ^0.5.0;
// contract SolidityTest {
//     uint16 public a = 20; 
//     uint16 public b = 10;
//     uint public sum = a + b;
//     uint public diff = a - b;
//     uint public mul = a * b;
//     uint public div = a / b;
//     uint public mod = a % b;
//     uint public dec = --b;
//     uint public inc = ++a;
// }

// Solidity program to demonstrate Relational Operator
// pragma solidity ^0.5.0;
// contract SolidityTest {
//     uint16 public a = 20; 
//     uint16 public b = 10;
//     bool public eq = a == b;
//     bool public noteq = a != b;
//     bool public gtr = a > b;
//     bool public les = a < b;
//     bool public gtreq = a >= b;
//     bool public leseq = a <= b;
// }


// Solidity program to demonstrate Logical Operators
// pragma solidity ^0.5.0;
// contract logicalOperator{
//     function Logic(bool a, bool b) public view returns( bool, bool, bool){
//         bool and = a&&b;
//         bool or = a||b;
//         bool not = !a;
//         return (and, or, not); 
//     }
// }

// Solidity program to demonstrate Bitwise Operator
// pragma solidity ^0.5.0;
// contract SolidityTest {
//     uint16 public a = 20; 
//     uint16 public b = 10;
//     uint16 public and = a & b;
//     uint16 public or = a | b;
//     uint16 public xor = a ^ b;
//     // Initializing a variable
//     // to '<<' value
//     uint16 public leftshift = a << b;
//     // Initializing a variable
//     // to '>>' value
//     uint16 public rightshift = a >> b;
//     // Initializing a variable
//     // to '~' value
//     uint16 public not = ~a ;
// }

// Solidity program to demonstrate Assignment Operator
// pragma solidity ^0.5.0;
//     contract SolidityTest {
//         uint16 public assignment = 20; 
//         uint public assignment_add = 50; 
//         uint public assign_sub = 50;
//         uint public assign_mul = 10; 
//         uint public assign_div = 50; 
//         uint public assign_mod = 32;
//         function getResult() public { 
//             assignment_add += 10;
//             assign_sub -= 20;
//             assign_mul *= 10;
//             assign_div /= 10;
//             assign_mod %= 20; 
//             return ; 
//         } 
// }


// Solidity program to demonstrate Conditional Operator
// pragma solidity ^0.5.0;
// contract SolidityTest{
//     function sub(uint a, uint b) public view returns(uint) {
//         uint result = (a > b? a-b : b-a); return result; 
//     }
// }

// while loop
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint[] data; 
//     uint8 j = 0;
//     function loop() public returns(uint[] memory){
//     while(j < 5) {
//         j++;
//         data.push(j);
//      }
//       return data;
//     }
// }

// 'Do-While loop'
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint[] data; 
//     uint8 j = 0;
//     function loop() public returns(uint[] memory){
//     do{
//         j++;
//         data.push(j);
//      }while(j < 9) ;
//       return data;
//     }
// }

// of 'For loop'
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint[] data; 
//     function loop() public returns(uint[] memory){
//     for(uint i=0; i<7; i++){
//         data.push(i);
//      }
//       return data;
//     }
// }

// while loop break 
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint[] data; 
//     uint8 j = 0;
//     function loop() public returns(uint[] memory){
//     while(j < 9) {
//         j++;
//         data.push(j);
//         if(j == 7){
//             break;
//         }
//      }
//       return data;
//     }
// }


// while loop continue 
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint[] data; 
//     uint8 j = 0;
//     function loop() public returns(uint[] memory){
//     while(j < 9) {
//         j++;
//         if(j == 7){
//             continue;
//         }
//         data.push(j);
//      }
//       return data;
//     }
// }


// use of 'if statement'
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint i = 10;
//     function decision_making() public view returns(string memory){
//         if(10 % 2 == 0){
//             return "number is even";
//         }
//     }
// }

// 'if...else' statement
// pragma solidity ^0.5.0; 
// contract Types { 
//     uint i = 10;
//     bool even;
//     function decision_making() public returns(bool){
//         if(i%2 == 0){
//             even = true;
//         }
//         else{
//             even = false;
//         }
//         return even;
//     }
// }


// of 'if-else if-else statement'
// pragma solidity ^0.5.0;
// // Creating a contract
// contract Types {
// 	uint public i = 10;
// 	string public result;
// 	function decision_making() public returns(string memory){
// 		if(i<10){
// 			result = "less than 10";
// 		}
// 		else if(i == 10){
// 			result = "equal to 10";
// 		}
// 		else{
// 			result = "greater than 10";
// 		}
// 		return result;
// 	}	
// }


// Strings 

// pragma solidity ^0.5.0;
// contract String {
//     string store = "abcdef";
//     uint256 public strLen = bytes(store).length;

//     function createString() public pure returns (string memory) {
//         string memory newString = new string(3);
//         bytes memory byteString = bytes(newString);
//         byteString[0] = "A";
//         byteString[1] = "B";
//         byteString[2] = "C";        
//         return string(byteString);
//     }
// }

// Array
// pragma solidity ^0.5.0;
// contract Types {
//     uint[6] data; 
//     uint x;
//     function array_example() public returns (uint[6] memory)
//     { 
//         data = [10, 20, 30, 40, 50, 60]; 
//     }
//     function result() public view returns(uint[6] memory){
//         return data; 
//     }
//     function array_element() public view returns (uint){
//         uint x = data[2];
//         return x; 
//     }
// }

// structure
// pragma solidity ^0.5.0;
// contract test {
//     struct Book {
//         string title;
//         string author;
//         uint book_id;
//     }
//     Book book;
//     function setBook() public {
//         book = Book('Learn Java', 'TP', 1);
//     }
//     function getBookId() public view returns (uint) {
//         return book.book_id;
//     }
// }


pragma solidity ^0.5.0;
contract LedgerBalance {
    mapping(address => string) name;
    function updateBalance() public returns(string memory){
        name[msg.sender] = "UPG";
        return name[msg.sender];
    }
    function printsender() public view returns(address) {
        return msg.sender;
    }
}