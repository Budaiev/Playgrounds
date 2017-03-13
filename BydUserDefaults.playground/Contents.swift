import UIKit

let defaults:UserDefaults = UserDefaults.standard

defaults.set(true, forKey: "HasAppBeenOpenedBeforeB")

defaults.set("Totally True", forKey: "HasAppBeenOpenedBeforeS")

//if let openedB:Bool = defaults.bool(forKey: "HasAppBeenOpenedBeforeB" ) {
//    print(openedB)
//}

if (defaults.object(forKey: "HasAppBeenOpenedBeforeB") != nil) {
    let openedB:Bool = defaults.object(forKey: "HasAppBeenOpenedBeforeB") as! Bool
    print(openedB)

}

//if let openedS:String = defaults.string(forKey: "HasAppBeenOpenedBeforeS") {
//    print(openedS)
//}


if defaults.string(forKey: "HasAppBeenOpenedBeforeS") != nil {
    let openedS:String = defaults.string(forKey: "HasAppBeenOpenedBeforeS")!
    print(openedS)
}

/*
defaults.integer(forKey: )
defaults.string(forKey: )
defaults.double(forKey: )
defaults.array(forKey: )
defaults.dictionary(forKey: )
defaults.data(forKey: )
 */


//How to Print Out All Values in the UserDefaults with Swift 3

for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
    print("\(key) = \(value) \n")
}