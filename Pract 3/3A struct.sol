pragma solidity ^0.5.0;
contract structdemo {
struct Book {
string name;
string author;
uint256 id;
bool availability;
}
Book book2;
Book book1 = Book("A Little Life", "Hanya Yanagihara", 2, false);
function set_details() public {
book2 = Book("Almond", "Sohn won-pyung", 1, true);
}
function book_info()
public
view
returns (
string memory,
string memory,
uint256,
bool
)
{
return (book1.name, book1.author, book1.id, book1.availability);
}
function get_details()
public
view
returns (
string memory, string memory, uint256, bool
)
{
return (book2.name, book2.author, book2.id, book2.availability);
}
}