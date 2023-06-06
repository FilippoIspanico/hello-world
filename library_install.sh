sudo apt update

if command -v g++ &>/dev/null; then
    echo "g++ è già installato."
else
    # Installa g++
    echo "g++ non è presente. Avvio l'installazione..."
    sudo apt update
    sudo apt install -y g++
    echo "g++ è stato installato con successo."
fi

if command -v cmake &>/dev/null; then
    echo "cmake è già installato."
else
    # Installa cmake
    echo "cmake non è presente. Avvio l'installazione..."
    sudo apt update
    sudo apt install -y cmake
    echo "cmake è stato installato con successo."
fi

git clone https://github.com/Famicolo/googletest
cd googletest
sudo cmake CMakeLists.txt
sudo make
sudo make install
g++ -o calc_test calc.test.cpp calc.cpp -lgtest -lpthread
./calc_test
