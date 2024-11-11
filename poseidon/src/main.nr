use dep::poseidon;

fn main(plains: [Field; 8]) -> pub Field {
    poseidon::bn254::hash_8(plains)
}

#[test]
fn test_main() {
    let plains = [
        0x03a5faa78be5ff9a520f33ce613924200d1de4fd0f638211cbf1ca45403721e9,
        0x10d6c1847f622c762f50206fcab0fc6ab0ac6e276ab2457e6168ff70039b9108,
        0x2fd51fa4354fe7fb3a173dafd01fa931f6ea73cfe721805ce46b223649bf86cf,
        0x25554ed9c39a7bbd85a5192a1934c0ef75da8dc35465e1db8995eb47af716ebc,
        0x2079dd1ecf96731411a7f817e32153c21ea8e654abbbc0dc5523585dd629e294,
        0x25518ce49b92808da872d95754e5729f3329689e4a7547b60a4527805023dcb2,
        0x28a73adf354177bfd3e652f096934ac927689ceb41ea9c327b383192322b04c2,
        0x1a58fa7b2355142732acea5be0633ea9c94fd90e897e2459624e9c01122fad3e,
    ];
    let result = main(plains);
    assert(result == 0x257f091e75009f02f620b1c4b797f45fc951aa7026847718f1cf3a9efacba9d6);
}
