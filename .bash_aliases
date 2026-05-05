alias nv=nvim
alias vim=nvim

alias cl=clear
alias d=exit
alias power='sudo poweroff'

alias build='cargo build'
alias run='cargo run'

alias rm='gio trash'

asm-new() {
    mkdir $1
    cd $1
    mkdir build
    mkdir src
    touch src/main.asm
    touch run.sh
    echo "nasm -f elf64 main.asm -o build/main.o
ld build/main.o -o build/main
./build/main" >> run.sh
}
