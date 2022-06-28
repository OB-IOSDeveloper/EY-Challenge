//Demonstrate your understanding of Combine’s Publisher and Subscriber by creating
//a simple publisher that you can subscribe to.  After subscribing, demonstrate
//that you receive and respond to events (write to debug log) and that you can
//cancel the subscription if desired.


import UIKit
import Combine
import PlaygroundSupport
import Foundation


//subscription for a timer that subscribes and sends the values every second until it is canceled

    var subscription: Cancellable? = Timer.publish(every: 1, on: .main, in: .common)
    .autoconnect()
    .print("stream")
    .sink { (output) in
        print("Finished stream with the output received \(output)")
    } receiveValue: { (value) in
        print("Received value \(value)")
    }

//Cancel the subscription after five seconds
RunLoop.main.schedule(after: .init(Date(timeIntervalSinceNow: 5))) {
    print("subscription was cancelled")
    subscription = nil
}

    
    


