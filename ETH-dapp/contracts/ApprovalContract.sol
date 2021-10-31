pragma solidity ^0.8.9;
contract ApprovalContract {

  address public sender;
  address public receiver;
  //address payable receiver;
  address constant public approver = 0xE1Bb095DaC50C21f75E94f963bB99A896e67D9d4;

  //function constructor() public {
    // tbd
  //}

  function deposit(address _receiver) external payable {
    require(msg.value > 0);
    sender = msg.sender;
    receiver = _receiver;
  }

  function viewApprover() external pure returns(address) {
    return(approver);
  }

  function approve() external {
    require(msg.sender == approver);
    payable(receiver).transfer(address(this).balance);
  }

}