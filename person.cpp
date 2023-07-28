
//"Person.h"
class Person
{
    private: 
    std::string firstname;
    std::string lastname;
    int salary;

    public:
    std::string getName();
}

//#include "Person.h"
#include <iostream>
#include <string>

int main(){

    std::string Person::getName()
    {
        return firstname + " " + lastname;
    }
}