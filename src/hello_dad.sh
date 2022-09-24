#!/bin/bash
# The line above tell your shell which flavour of 'sh' do you want me to roll with
# Don't ask me how it even reads it after a comment ' '...

printf "
  Now we run system updates:
  - 'apt update' will update it's local cache of what programs (and versions) are available at 
    the online repositories in some file somewhere
  - 'apt upgrade -y' will then go find matches in the cache for programs it already has (using 
    the '-y' flag to auto-confirm). Then it'll download them (and their dependencies, and their dependencies dependencies...)
    and update all your programs.\n
"

sudo apt update && sudo apt upgrade -y
printf "
  We finally have a freshy paved surface. Let's deck out the patio:\n\n
"


printf "
  Install Rust:
  This downloads and runs a rust toolchain installer on your machine.
  It literally takes the returned object from the request (plain text with a .sh extension)
  And pipes its output to the shell program you want to use to run the program...\n
  - select '1', default option\n
"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

printf "
  Make a new folder for Git repos:
"
cd ~
mkdir repos
cd repos

printf "
  Use 'cargo' to create a new project called 'hello_dad'
  
  'cargo' is kind of a swiss army knife. 
    It's the build tool, package manager, formatter, publisher...\n\n
"
cargo new hello_dad
cd hello_dad
run
printf "
  It's already created a compilable 'Hello world!' project.
  
  This runs 'cargo build' default mode='debug', then exceutes the binary at './target/debug/hello_dad'
  - This first one can take some time because it's building all the dependencies,
    but a lot of that is standard library (common) stuff\n\n
"
cargo run

printf "
  Let's modify the source code and run it again:
  
  Replace all occurances of 'world' with 'Dad' in 'src/main.rs'\n\n
"
sed -i 's/world/Dad/g' src/main.rs

printf "
  This time should be much faster:\n\n
"
cargo run

printf "
  Congratularions! You now have a fully functional Rust development machine
    cut off from the rest of your PC because it's inside wsl
  This message will self-distruct.

type 'code .'
"
