import UIKit

//var greeting = "Hello, playground"
//
//class Car {
//
//    init(){
//        print("Inicializado")
//    }
//
//    deinit{
//        print("Desalocado")
//    }
//
//}
//
//var fusca: Car? = Car()
//fusca = nil
//

//let sampleClass = SampleClass()
//print(sampleClass.publicFunc())
//print(sampleClass.openFunc())
//print(sampleClass.privateFunc())
//print(sampleClass.filePrivateFunc())
//print(sampleClass.internalFunc())



//public class NewSampleClass {
//
//    public init() {}
//
//    private func privateFunc() -> String {
//        return "Private Func"
//    }
//
//    fileprivate func filePrivateFunc() -> String {
//        return "File Private Func"
//    }
//
//    func internalFunc() -> String {
//        return "Internal Func"
//    }
//
//    public func publicFunc() -> String {
//        return "Public Func"
//    }
//
//    open func openFunc() -> String {
//        return "Open Func"
//    }
//}
//
//let newSampleClass = NewSampleClass()
//newSampleClass.openFunc()
//newSampleClass.publicFunc()
//newSampleClass.internalFunc()
//newSampleClass.filePrivateFunc()
//newSampleClass.privateFunc()

class InheritedSampleClass: SampleClass {
    override open func openFunc() -> String{
        return "Open func alterado"
    }
    
    override public func publicFunc() -> String {
        return "Public func alterado"
    }
}

let inheritedSampleClass = InheritedSampleClass()
print(inheritedSampleClass.openFunc())
