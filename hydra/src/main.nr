use dep::hydra;

fn main(plains: [Field; 8], key : [Field; 4], iv: pub [Field;4]) -> pub [Field; 8] {
    hydra::bn254::enc::encrypt(plains, key, iv)
}

#[test]
fn test_main() {
    let plains = [0, 1, 2, 3, 4, 5, 6, 7];
    let key = [34245092, 1216, 54609, 32945];
    let nonce = 11561;
    let iv = [nonce, 432, 324, 14];
    let ciphers = main(plains, key, iv);
    let plains2 = hydra::bn254::dec::decrypt(ciphers, key, iv);
    assert(plains == plains2);
}
