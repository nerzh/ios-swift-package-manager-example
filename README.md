# Manage iOS dependencies with swift package manager - example


### file /Dependecies/Package.swift

add your dependency

```swift
dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.0.0")
]
```
add target of your dependency to the dependencies array

```swift
targets: [
    Target.target(
        name: "Dependencies",
        dependencies: ["Alamofire"]
    ),
]
```

inside root directory of your project execute this command for regenerate Dependencies.xcodeproj file and update your dependencies

```bash
cd ./Dependencies && ./generate-xcodeproj.rb && cd ../
```

it is all, you can build your project with Alamofire ...
