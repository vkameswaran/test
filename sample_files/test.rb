# Sample ruby file to test the parser

class Test
    def initialize
        @test = 'test'
    end

    def test
        @test
    end
end

# classes, functions, enums, interfaces, methods, structs

def test
    puts 'test'
end

enum TestEnum
    TEST1 = 1
    TEST2 = 2
end

interface TestInterface
    def test
        puts 'test'
    end
end

struct TestStruct
    def initialize
        @test = 'test'
    end

    def test
        @test
    end
end
