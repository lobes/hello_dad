
# Replace all occurances of `world` with `Dad` in `src/main.rs` 
sed -i 's/world/Dad/g' src/main.rs

# Runs `cargo build` default mode=`debug`, then exceutes the binary at './target/debug/hello_dad'
cargo run
