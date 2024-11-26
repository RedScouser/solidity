{
    let x := calldataload(0)
    let a := keccak256(0x20, x)
    sstore(a, 2)
    // will disable loading for now, might improve later
    mstore(0, 1)
    let b := keccak256(0x20, x)
    sstore(b, 3)
}
// ----
// step: loadResolver
//
// {
//     {
//         let x := calldataload(0)
//         sstore(keccak256(0x20, x), 2)
//         mstore(0, 1)
//         sstore(keccak256(0x20, x), 3)
//     }
// }
