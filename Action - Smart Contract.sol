//https://remix.ethereum.org./#optimize=true&version=soljson-v0.4.25+commit.59dbf8f1.js
//assigning the version number
//website to check latest version https://github.com/ethereum/solc-js/releases
//version:0.4.25+commit.59dbf8f1.Emscripten.clang
pragma solidity ^0.4.19;

//class is a template for an object.
//smart contract
//auction house whose the purpose is solely to deploy the contract and finish the auction. 
//And there is a seller who wants to auction items. There are bidders to bid the item.
contract Auction{
    //Address here means where the smart contract lives, or your account lives. 
    address public manager;
    address public seller;
    uint public latestBid;
    address public latestBidder;
    uint auctionFinish;
    uint minBid;
    string actionName;
    mapping(address => uint) pendingReturns;
    
    //() means this function does not accept any argument.
    //Public keyword means this function can be called from outside
    constructor(string _actionName,uint _minBid, uint _actionTime) public{
        actionName = _actionName;
        minBid = _minBid;
        auctionFinish = now + _actionTime;
        //maxBid =_maxBid;
        // msg variable represents the address that run that function.
        manager =msg.sender;
    }
    
    event LogMessage(string msg, string value);

    // function getName() public view returns (string){
    // 	return actionName;
    // }
    
    // function setName(string _value) private{
    // 	actionName = _value;	
    // }
    
    function logName() public{
    	emit LogMessage(" Name of action", actionName);
    }
    
    // write the function to set the initial amount of bid.
    //accepts an argument, an unsigned integer variable
    function auction(uint bid) public{
        //function expects any unsigned integer that will be multiplied with ‘1 ether’ before being stored to the variable latestBid
        // store the bid in wei currency
        latestBid = bid * 1 ether; //1 ether is 1000000000000000000 wei
        //store the address of ‘someone’ who runs this function into the seller variable
        seller = msg.sender;
    }
    
    //bid function where people can raise their hand to bid the item.
    
    //check whether the amount of money that they send along with this invocation of function is greater than the latestBid
    //which if it is not initialized will have a 0 value.
    function bid() public payable{
        require(now <= auctionFinish, "Auction has ended.");
        
        require(msg.value >= minBid, "Bid is below minimum.");
        
        // policy: the bigger bid, we return the previous bid which is lower to its bidder. We keep the latest bidder and its bid in variables. 
        //value  is the amount of money you send along the invocation of the function
        require(msg.value > latestBid);
        
        if (latestBidder != 0x0) {
            pendingReturns[latestBidder] += latestBid;
        }
        latestBidder = msg.sender;
        latestBid = msg.value;
        
    }
    
    function withdraw() public returns (bool){
        uint amount = pendingReturns[msg.sender];
        if(amount >0){
            pendingReturns[msg.sender] = 0;
            if(!msg.sender.send(amount)){
                pendingReturns[msg.sender] = amount;
                return false;
                
            }
        }
        return true;
    }
    
    //finishing auction function
    //smart contract auction process will be closed by the manager
    function finishAuction() restricted public{
        //use the address seller and execute its method transfer
        // transfer accept one argument, how much money you want to send.
        //the smart contract and we cast it to the address type before calling its balance property. 
        seller.transfer(address(this).balance);//all money in the smart contract
    }
    
    modifier restricted(){
        //check whether the one who executes this function is the manager or not
        require(msg.sender == manager);
        _; // pass the control back to the function which this modifier function applied to
    }
}
