import TestPackageA
import TestPackageB

public struct TestPackageDependentOnAandB {
    public private(set) var text = "Hello, World!"
    public private(set) var testPackageAText: String = ""
    public private(set) var testPackageBText: String = ""
    
    public init() {
        testPackageAText = TestPackageA().text
        testPackageBText = TestPackageB().text
    }
}
