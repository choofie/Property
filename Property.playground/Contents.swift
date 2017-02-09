//: Playground - noun: a place where people can play

import Foundation

struct MyStruct {
    var stringProperty: String?
    var intProperty: Int?
    var doubleProperty: Double?
    var boolProperty: Bool?
    
    // Returns a list of property names
    func propertyList() -> [String] {
        var propertyList = [String]()
        
        for child in Mirror(reflecting: self).children {
            if let name = child.label, Mirror(reflecting: child.value).displayStyle == .optional {
                propertyList.append(name)
            }
        }
        
        return propertyList
    }
    
    // Returns a list of property names where the property has value assigned
    func propertyWithValueList() -> [String] {
        var propertyWithValueList = [String]()
        
        for child in Mirror(reflecting: self).children {
            if let name = child.label, Mirror(reflecting: child.value).displayStyle == .optional, Mirror(reflecting: child.value).children.count != 0 {
                propertyWithValueList.append(name)
            }
        }
        
        return propertyWithValueList
    }
    
    // This is an equivalent function with propertyWithValueList()
    func propertyWithValueListFilter() -> [String] {
        return Mirror(reflecting: self).children.filter { $0.label != nil && Mirror(reflecting: $0.value).displayStyle == .optional && Mirror(reflecting: $0.value).children.count != 0 }.map { $0.label! }
    }
}

var myStruct = MyStruct()
myStruct.stringProperty = "a string"
myStruct.doubleProperty = 1.0

print(myStruct.propertyList())
print(myStruct.propertyWithValueList())
print(myStruct.propertyWithValueListFilter())
