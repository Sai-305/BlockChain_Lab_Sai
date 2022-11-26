//SPDX-License-Identifier:MIT
//Name: Saikrishna Muralidaran
//UID: 2019120041
//Branch : BE EXTC
pragma solidity >=0.4.22 <0.7.0;

contract SaiBanking{
  mapping(address=>uint) public UserAccountBalance;
  mapping(address=>bool) public UserExists;

  //Function for creating a new account
  function CreateAccount() public payable returns(string memory){
      require(UserExists[msg.sender]==false,'Account already exists');
      UserAccountBalance[msg.sender] = msg.value;
      UserExists[msg.sender] = true;
      return 'account created';
  }
  
  //Function for depositing a certain amount in account
  function Deposit() public payable returns(string memory){
      require(UserExists[msg.sender]==true, 'Account does not exist');
      require(msg.value>0, 'No amount is being Deposited');
      UserAccountBalance[msg.sender]=UserAccountBalance[msg.sender]+msg.value;
      return 'Amount deposited succesfully';
  }
  
  //Function for withdrawing a certain amount from account
  function Withdraw(uint amount) public payable returns(string memory){
      require(UserExists[msg.sender]==true, 'Account does not exist');
      require(UserAccountBalance[msg.sender]>=amount, 'Your account does not have sufficient balance');
      require(amount>0, 'Enter non-zero value for withdrawal');
      UserAccountBalance[msg.sender]=UserAccountBalance[msg.sender]-amount;
      msg.sender.transfer(amount);
      return 'Amount withdrawn succesfully';
  }
  //Function for Transferring a certain amount from one account to another  
  function TransferAmount(address payable userAddress, uint amount) public returns(string memory){
      require(UserExists[msg.sender]==true, 'Account does not exist');
      require(UserAccountBalance[msg.sender]>=amount, 'Your account does not have sufficient balance');
      require(UserExists[userAddress]==true, 'to Transfer account does not exists in bank accounts ');
      require(amount>0, 'Enter non-zero value for sending');
      UserAccountBalance[msg.sender]=UserAccountBalance[msg.sender]-amount;
      UserAccountBalance[userAddress]=UserAccountBalance[userAddress]+amount;
      return 'Amount transferred succesfully';
  }

    //Function for removing your account from bank and returning any balance amount back to wallet
   function RemoveAccount()public payable returns(string memory){
       require(UserExists[msg.sender]==true, 'There is no account to delete');
       address payable receiver = payable(msg.sender);
       uint amountB = UserAccountBalance[msg.sender];
       receiver.transfer(amountB);
       UserAccountBalance[msg.sender] = UserAccountBalance[msg.sender] - amountB;
       UserExists[msg.sender] = false;
       return 'Account successfully deleted';
   }


  //Function for checking current balance
  function GetAccountBalance() public view returns(uint){
      return UserAccountBalance[msg.sender];
  }
  
  //Function for checking whether the user has an account in the bank
  function CheckAccountExistS() public view returns(bool){
      return UserExists[msg.sender];
  }
  
}