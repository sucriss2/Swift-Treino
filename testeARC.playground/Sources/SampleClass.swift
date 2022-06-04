import Foundation

open class SampleClass {
    
    public init() {}
    
    private func privateFunc() -> String {
        return "Private Func"
    }
    
    fileprivate func filePrivateFunc() -> String {
        return "File Private Func"
    }
    
    func internalFunc() -> String {
        return "Internal Func"
    }
    
    public func publicFunc() -> String {
        return "Public Func"
    }
    
    open func openFunc() -> String {
        return "Open Func"
    }
}

public class WrapperSampleClass {
    
    let sampleClass: SampleClass = SampleClass()
    private let filePrivateClass = FilePrivateClass()
    
    private func privateFunc() -> String {
        return ""
    }
    
    fileprivate func filePrivateFunc() -> String {
        return sampleClass.filePrivateFunc()
    }
    
    func internalFunc() -> String {
        return sampleClass.filePrivateFunc()
    }
    
    public func publicFunc() -> String {
        return sampleClass.publicFunc()
    }
    
    open func openFunc() -> String {
        return sampleClass.openFunc()
    }
}

fileprivate class FilePrivateClass {
    func function() {
    }
}
