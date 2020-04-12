# There are two View have been made default in ContentsView.swift
- ContentView: view of content
- ContentView_Previews: view of preview(live preview of your code)

# Single View App contains 1 View only. To add more objects, use VStack and HStack

Since our view is Single View, it will return only 1 view instance only. Therefore, to create multiple object. We use VStack, which vertically hold it child. And HStack, which horizontally store it child

```swift
VStack(alignment: .leading) {
    Text("Turtle Rock")
        .font(.title)
    HStack {
        Text("Joshua Tree National Park")
            .font(.subheadline)
        Spacer()
        Text("California")
            .font(.subheadline)
    }
}
```

It will create view like this
+--------------------------------------------+ <-VStack
+Turtle Rock                                 +
+Joshua .... Spacer(just blank space) Cali...+ <--HStack
+--------------------------------------------+

# VStack center its child
VStack center its child by default. In order to left alignment:
```swift
VStack(alignment: .leading)
```