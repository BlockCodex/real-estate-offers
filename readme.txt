Use Javascript functions in order to encode and decode the hash_function
This is done in order to save gas in the Identity contract

See example of calling the functions :
https://bitbucket.org/edmundedgar/realitycheck/src/3ec966f1cf253c59caa224ee0e8e0e0d1037741d/assets/js/scripts/main.js?at=master&fileviewer=file-view-default#main.js-407


function ipfsHashToBytes32(ipfs_hash) {
    var h = bs58.decode(ipfs_hash).toString('hex').replace(/^1220/, '');
    if (h.length != 64) {
        console.log('invalid ipfs format', ipfs_hash, h);
        return null;
    }
    return '0x' + h;
}

function bytes32ToIPFSHash(hash_hex) {
    //console.log('bytes32ToIPFSHash starts with hash_buffer', hash_hex.replace(/^0x/, ''));
    var buf = new Buffer(hash_hex.replace(/^0x/, '1220'), 'hex')
    return bs58.encode(buf)
}
