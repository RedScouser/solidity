{
    function f(a, b, c, d) -> x, y { b := 3 let s := 9 y := 2 mstore(s, y) }
}
// ====
// stackOptimization: true
// EVMVersion: =current
// ----
//     /* "":0:80   */
//   stop
//     /* "":6:78   */
// tag_1:
//   pop
//   pop
//   pop
//   pop
//     /* "":32:33   */
//   0x00
//     /* "":6:78   */
//   swap1
//     /* "":44:45   */
//   0x03
//     /* "":46:56   */
//   pop
//     /* "":55:56   */
//   0x09
//     /* "":57:63   */
//   swap1
//     /* "":62:63   */
//   0x02
//     /* "":64:76   */
//   dup1
//   swap3
//   mstore
//     /* "":6:78   */
//   jump	// out
