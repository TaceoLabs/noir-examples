use dep::griffin;

fn main(plains: [Field; 4]) -> pub Field {
    griffin::bn254::hash_4(plains)
}

#[test]
fn test_main() {
    let plains = [0, 1, 2, 3];
    let result = main(plains);
    assert(result == 20544038859331404544787671729519018048570470556436814419606674327514183827748);
}
