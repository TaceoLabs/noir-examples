use dep::poseidon2;

fn main(plains: [Field; 8]) -> pub Field {
    poseidon2::bn254::hash_8(plains)
}

#[test]
fn test_main() {
    let plains = [0, 1, 2, 3, 4, 5, 6, 7];
    let result = main(plains);
    assert(result == 0x1d1a50bcde871247856df135d56a4ca61af575f1140ed9b1503c77528cf345df);
}
