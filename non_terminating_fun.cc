#include <iostream>
#include <map>
#include <iterator>
using namespace std;
class test
{
public:
    test *x;
    int y;
    ~test(){cout << "";}
    test() {cout << "";}
    void printid(){
        std::cout << y;
    }
};

int main(){
    map<int, test> tmap;
    map<int, test>::iterator it;
    test t;
    //t.x = NULL;
    t.x = NULL;
    t.y = 0;
    tmap[1] = t;
    for(it = tmap.begin(); it != tmap.end(); it++)
    {
        if(it->second.x != NULL)
        {
            std::cout << it->second.x->y;
        }
        else break;
    }
    return 0;
}

