const ApprovalContract = artifacts.require('../../contracts/ApprovalContract.sol');

contract('ApprovalContract', function (accounts){
    
    it('initiates contract', async function(){
        const contract = await ApprovalContract.develoyed();
        const approver = await contract.approver.call();
        assert.equal(approver, 0xE1Bb095DaC50C21f75E94f963bB99A896e67D9d4, "approvers don't match");
    });
})