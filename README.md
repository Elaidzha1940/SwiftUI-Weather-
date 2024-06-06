SwiftUIWeather.
===============

https://github.com/Elaidzha1940/SwiftUI-Weather-/assets/64445918/7efd9290-7a0d-4e60-8d17-c53a2f870157

Weather App
-----------
- Weather - Text.
- Weather - SF Symbols.
- Weather - Main VStack.
- Weather - HStack of Days.
- Weather - Button & Refactoring.
- Weather - @State & @Binding Basics.
- Weather App - iOS 15 & 16 Updates.
------------

``````ruby
 Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160, height: 160)

``````

``````ruby
  Image(systemName: "person")
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(.red)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
``````

``````ruby
  Image(uiImage: image)
        .resizable()
        .renderingMode(.template)
        .foregroundStyle(.white)
        .aspectRatio(contentMode: .fit)
        .frame(width: 25, height: 25)
        .padding(10)
        .background(Color(viewModel.iconContainerColor))
        .cornerRadius(10)                                                

``````
