// test c++ file to test the parser

#include <iostream>
#include <string>

using namespace std;

int main(int argc, char** argv) {
    cout << "Hello World!" << endl;
    return 0;
}

// classes, functions, enums, interfaces, methods, structs

class TestClass {
    public:
        TestClass();
        ~TestClass();
        void testMethod();
    private:
        int testInt;
        string testString;
};

TestClass::TestClass() {
    testInt = 0;
    testString = "test";
}

TestClass::~TestClass() {
    testInt = 0;
    testString = "";
}

void TestClass::testMethod() {
    cout << "test" << endl;
}
