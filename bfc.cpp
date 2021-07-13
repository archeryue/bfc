#include <iostream>
#include <fstream>
#include <deque>
#include <string>

using namespace std;

void interpret(string src) {
    deque<int> tape(1, 0);
    int ptr = 0;   
    int isrc = 0;
    while (isrc < src.length()) {
        switch(src[isrc]) {
            case '>':
                ptr++;
                if (ptr == tape.size()) tape.push_back(0);
                break;
            case '<':
                if (ptr == 0) tape.push_front(0);
                else ptr--;
                break;
            case '+':
                tape[ptr]++;
                break;
            case '-':
                tape[ptr]--;
                break;
            case '.':
                cout << (char)tape[ptr];
                break;
            case ',':
                cin >> tape[ptr];
                break;
            case '[':
                if (!tape[ptr]) while (src[++isrc] != ']');
                break;
            case ']':
                if(tape[ptr]) while (src[--isrc] != '[');
                break;
        }
        isrc++;
    }
}

int main(int argc, char** argv) {
    if (argc < 2) cout << "no source file" << endl;
    ifstream ifs(*(argv+1));
    string src = "";
    string line;
    while (getline(ifs, line)) {
        src += line;
    }
    interpret(src);
    return 0;
}
