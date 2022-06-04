import Foundation

public class OtherSampleClass {
    
    let sampleClass: SampleClass = SampleClass()
    private let filePrivateClass = FilePrivateClass()
    
    private func privateFunc() -> String {
        return ""
    }
    
    fileprivate func filePrivateFunc() -> String {
        return sampleClass.filePrivateFunc()
    }
    
    func internalFunc() -> String {
        return sampleClass.internalFunc()
    }
    
    public func publicFunc() -> String {
        return sampleClass.publicFunc()
    }
    
    open func openFunc() -> String {
        return sampleClass.openFunc()
    }
}
