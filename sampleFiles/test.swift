// sample swift file to test the parser

import Foundation


// MARK: - TestClass

/// TestClass

class TestClass: NSObject {
    // MARK: - Properties

    /// Test property
    var testProperty: String?

    // MARK: - Initializers

    /// Test initializer
    override init() {
        super.init()
    }

    // MARK: - Methods

    /// Test method
    func testMethod() {
        print("test")
    }
}

// MARK: - TestProtocol

/// TestProtocol

protocol TestProtocol {
    // MARK: - Properties

    /// Test property
    var testProperty: String? { get set }

    // MARK: - Methods

    /// Test method
    func testMethod()
}

// MARK: - TestExtension

/// TestExtension

extension TestClass: TestProtocol {
    // MARK: - Properties

    /// Test property
    var testProperty: String? {
        get {
            return nil
        }
        set {
            print("test")
        }
    }

    // MARK: - Methods

    /// Test method
    func testMethod() {
        print("test")
    }
}

// MARK: - TestStruct

/// TestStruct

struct TestStruct {
    // MARK: - Properties

    /// Test property
    var testProperty: String?

    // MARK: - Initializers

    /// Test initializer
    init() {
    }

    // MARK: - Methods

    /// Test method
    func testMethod() {
        print("test")
    }
}

// MARK: - TestEnum

/// TestEnum

enum TestEnum {
    // MARK: - Cases

    /// Test case
    case test
}

// MARK: - TestEnum2

/// TestEnum2

enum TestEnum2 {
    // MARK: - Cases

    /// Test case
    case test

    // MARK: - Properties

    /// Test property
    var testProperty: String? {
        switch self {
        case .test:
            return nil
        }
    }

    // MARK: - Methods

    /// Test method
    func testMethod() {
        print("test")
    }
}

// MARK: - TestEnum3

/// TestEnum3

enum TestEnum3 {
    // MARK: - Cases

    /// Test case
    case test

    // MARK: - Properties

    /// Test property
    var testProperty: String? {
        switch self {
        case .test:
            return nil
        }
    }

    // MARK: - Methods

    /// Test method
    func testMethod() {
        print("test")
    }
}

// MARK: - TestEnum4

/// TestEnum4

enum TestEnum4 {
    // MARK: - Cases

    /// Test case
    case test

    // MARK: - Properties

    /// Test property
    var testProperty: String? {
        switch self {
        case .test:
            return nil
        }
    }

    // MARK: - Methods

    /// Test method
    func testMethod() {
        print("test")
    }
}
