import SwiftUI

protocol ScanCounter {
    var counter: Int { get }
    func increaseCounter()
}

final class ScanCounterAppStorage: ScanCounter {
    @AppStorage("ScanCounterAppStorage.counter")
    private(set) var counter: Int = 0

    func increaseCounter() {
        counter += 1
    }
}