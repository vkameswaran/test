<!-- classes, functions, enums, interfaces, methods, structs, whatever features exist in php -->

<?php
    include_once "test2.php";

    class Test {
        public function __construct() {
            echo "Hello World!";
        }

        public function test() {
            echo "Test";
        }
    }

    function greet(string $name) {
        echo "Hello $name!";
    }
?>

<div><?php greet("John") ?></div>

<?php
    $test = new Test();
    $test->test();

    # this is a commet

    class Test2 extends Test {
        public function __construct() {
            parent::__construct();
            echo "Test2";
        }
    }
?>
