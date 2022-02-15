import UIKit

//func sum(x : Int, y : Int ) -> Int {
//    return x + y
//}
//
//print(sum(x: 5, y: 10)) //returns 15

//func sum<T: Comparable>(x : T, y : T) -> T {
//    let sum = x + y
//    return sum
//}
//print(sum(x: 5.0, y: 10))

struct UserStack<T> {
    var array = [T]()
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
}

import XCTest

class StackTest : XCTestCase {
    var stack : UserStack<Int>?
    
    override func setUpWithError() throws {
        stack = UserStack()
    }
    
    override func tearDownWithError() throws {
        stack = nil
    }
    
    func testPush() {
        stack?.push(element: 5)
        let result = stack?.array.count
        XCTAssertEqual(result, 1)
    }
    
    func testPop() {
        stack?.push(element: 5)
        stack?.push(element: 4)
        stack?.push(element: 3)
        stack?.push(element: 2)
        let result = stack?.pop()
        XCTAssertEqual(result, 2)
    }
}

StackTest.defaultTestSuite.run()

struct UserQueue<T> {
    var array = [T]()
    
    mutating func push(element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T?{
        return array.removeFirst()
    }
}

class QueueTest : XCTestCase {
    var queue : UserQueue<Int>?
    
    override func setUpWithError() throws {
        queue = UserQueue()
    }
    
    override func tearDownWithError() throws {
        queue = nil
    }
    
    func testPush() {
        queue?.push(element: 5)
        let result = queue?.array.count
        XCTAssertEqual(result, 1)
    }
    
    func testPop() {
        queue?.push(element: 5)
        queue?.push(element: 4)
        queue?.push(element: 3)
        queue?.push(element: 2)
        let result = queue?.pop()
        XCTAssertEqual(result, 5)
    }
}

QueueTest.defaultTestSuite.run()
