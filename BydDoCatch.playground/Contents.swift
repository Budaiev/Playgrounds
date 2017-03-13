import UIKit

enum driveError: Error {
    case lostGPS
    case lowBattery
}

var simLostGPS: Bool = false
var simLowBattery: Bool = false


func autoDrive() throws {
    
    if simLostGPS {
        throw driveError.lostGPS
    }
    
    if simLowBattery {
        throw driveError.lowBattery
    }
    
}

do {
    try autoDrive()
    print("all is OK")
    
} catch driveError.lostGPS {
    print("case catch: I'm lost.. ")
    
} catch driveError.lowBattery {
    print("case catch: lowBattery HURRY UP! ")
}


////////////////////////////////////////////////


enum CourseError: Error {
    case noName
}

// Create Structure
struct trainCourse {
    
    let courseName: String
    
    init(name: String) throws {
        
        if name == "" { throw
            CourseError.noName
        }
        
        self.courseName = name
    }
}

do {
    try trainCourse(name: "Some Fundamentals with teacher")

} catch CourseError.noName {
    print("You need to enter the name")
}


do {
    try trainCourse(name: "")

} catch CourseError.noName {
    print("You need to enter the name")
}




