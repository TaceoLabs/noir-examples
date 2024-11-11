use dep::gmimc;

fn main(plains: pub [Field; 2], key: Field) -> pub [Field; 2] {
    gmimc::bn254::enc::x5_2(plains, key)
}

#[test]
fn test_main() {
    let plains = [3, 4];
    let key = 0x2129347902376149;
    let ciphers = main(plains, key);
    let plains2 = gmimc::bn254::dec::x5_2(ciphers, key);
    assert(plains == plains2);
}
