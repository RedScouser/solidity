{
    let a := sub(calldataload(1), calldataload(0))
    mstore(0, a)
}
// ----
// step: fullSimplify
//
// {
//     {
//         mstore(0, sub(calldataload(1), calldataload(0)))
//     }
// }
