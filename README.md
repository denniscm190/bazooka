# Bazooka 🚀
The easiest way to make HTTP requests in Swift.

## Installation
- In Xcode go to `File` -> `Swift packages` -> `Add package dependency`
- Copy and paste `https://github.com/denniscm190/Bazooka`

## Usage
```swift
import Bazooka

let bazooka = Bazooka()
bazooka.request(url: "https://someurl.come", model: MyModel.self) { response in
    print(response)
}
```

## Example
```swift
import SwiftUI
import Bazooka

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .onAppear {
                let bazooka = Bazooka()
                bazooka.request(url: "https://someurl.come", model: MyModel.self) { response in
                    print(response)
                }
            }
    }
}

struct MyModel: Codable {
    var myVar: String
}
```
