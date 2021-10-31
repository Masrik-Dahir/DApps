const hello = artifacts.require('./HellowWorld');
const helloSettings = {
    name: "Masrik"

}

module.exports = function(deployer){
    deployer.deploy(hello, helloSettings.name);
};