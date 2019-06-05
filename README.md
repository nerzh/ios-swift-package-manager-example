# Manage iOS dependencies with swift package manager - example


#### 1. file /Dependecies/Package.swift

add your dependency

```swift
dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.0.0"),
    .package(url: "https://github.com/OtherLibrary/OtherLibrary.git", from: "1.0.0")
]
```
add targets "Alamofire" and "OtherLibrary" of your dependency to the dependencies array

```swift
targets: [
    Target.target(
        name: "Dependencies",
        dependencies: ["Alamofire", "OtherLibrary"]
    ),
]
```

#### 2. inside root directory of your project execute this command for regenerate Dependencies.xcodeproj file and update your dependencies

```bash
cd ./Dependencies && ./generate-xcodeproj.rb && cd ../
```
#### 3. imports
```swift
import Alamofire
import OtherLibrary
```

### after each a change dependencies in file /Dependecies/Package.swift repeat step 2
it is all, you can build your project with Alamofire and OtherLibrary ...
