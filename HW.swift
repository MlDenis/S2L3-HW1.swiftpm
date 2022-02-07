//
//  File.swift
//  S2L3-HW1.1
//
//  Created by Denis Malyavin on 07.02.2022.
//

import UIKit

//let anyCollections: [Any] = ["Dog", 1.5, 6, true, 7.64, 4, "Cat"]
//for item in anyCollections {
//    print(item)
//}

// v.1
//for item in anyCollections {
//    if let item = item as? Int {
//        print("\(item) is Integer")
//    } else if let item = item as? Double {
//        print("\(item) is Double")
//    } else if let item = item as? String {
//        print("\(item) is String")
//    } else if let item = item as? Bool {
//        print("\(item) is Bool")
//    }
//}

// v.2
//for item in anyCollections {
//    switch item {
//    case is Int: print("\(item) is Integer")
//    case is Double: print("\(item) is Double")
//    case is String: print("\(item) is String")
//    case is Bool: print("\(item) is Bool")
//    default: break
//    }
//}


let dictOfItems: [String: Any] = [
    "Integer": 1,
    "Double": 7.2,
    "String": "1",
    "Bool - true": true,
    "Bool - false": false
]

// v.1
//for item in dictOfItems {
//    print("Key \(item.key), Value \(item.value)")
//}

// v.2
//for (key, value) in dictOfItems {
//    print("Key \(key), Value \(value)")
//}


var total = 0.0

for value in dictOfItems.values {
    switch value {
    case let value as Int: total += Double(value)
    case let value as Double: total += value
    case let value as String: total += 1.0
    case let value as Bool: total += value ? 2 : -3
    default: break
    }
}

print(total)


total = 0.0

for value in dictOfItems.values {
    if let value = value as? Int {
        total += Double(value)
    } else if let value = value as? Double {
        total += value
    } else if let value = value as? String {
        total += Double(value) ?? 0
    }
}

print(total)
