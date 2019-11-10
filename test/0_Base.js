const PC = artifacts.require('PedersenCommitment')

contract('Base Checks for Governance Contracts ', function() {
    before(async function() {
        this.pcC = await PC.new();
    });

    after(async function() {
        console.log('Test Finished')
    })

    describe('Check Setup Script - Stage 1.0', function() {
        it('PC - Test Case1 ', async function() {
            assert.equal( true , true ,"No errors");
        })
    })

})
