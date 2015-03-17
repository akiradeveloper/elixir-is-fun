#!/bin/sh

# Debian has older Erlang package (R15) in official repositories, Elixir requires newer (R17)
wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install -y erlang
rm erlang-solutions_1.0_all.deb

# compile Elixir from source
# http://elixir-lang.org/getting_started/1.html

git clone https://github.com/elixir-lang/elixir.git
cd elixir
git checkout stable
make clean test

# don't forget to add binary directory to PATH
