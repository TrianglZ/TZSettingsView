
# TZSettingsView

A SwiftUI view that displays app settings sections provided by a `TZSettingsAdapter`.

## Installation

`TZSettingsView` is available as a Swift Package. To install it, using [Swift Package Manager (SPM)](https://swift.org/package-manager/):

1.  In Xcode, go to **File > Swift Packages > Add Package Dependency**.
2.  Enter the package repository URL: `https://github.com/TrianglZ/TZSettingsView`
3.  Follow the Xcode prompts to complete installation.

## Usage

1. Create a class that conforms to the `TZSettingsAdapter` protocol and implements the `getSettingsSections()` method. The method should return an array of `TZSettingsView.Section` objects that represent the app settings sections.

```swift
class MySettingsAdapter: TZSettingsAdapter {

let theme: TZSettingsView.Section.Theme = .init(color: .black,
        font: .system(size: 15, weight: .semibold))

    func getSettingsSections() -> [TZSettingsView.Section] {
            let section1 = TZSettingsView.Section(title: "Title",
            theme: theme, 
            cells: [Cell.myVehicle, Cell.pointsHistory],
            cellHeight: 60)
        return [section1]
    }
}

extension MySettingsAdapter { 
enum Cell {
    case myVehicle
    case pointsHistory

    var toSettinsCell: TZSettingsView.TZSettingConfiguration {
    let theme: TZSettingsView.TZSettingCellConfiguration.Theme = .init(color: .black,
     tint: .gray,
     font: .system(size: 15), hasIndicatorView: true)
    
    switch self {
    case .myVehicle:
        return .init(type: .navigation(view: Text("myVehicle")),
         cellConfiguration: .init(image: Image("myVehicles"), 
         title: "myVehicles",
         theme: theme))
    case .pointsHistory:
        return .init(type: .navigation(view: Text("pointsHistory")),
         cellConfiguration: .init(image: Image("pointsHistory"), 
         title: "pointsHistory",
         theme: theme))
    }
}
```

2. Instantiate a `TZSettingsView` view with an instance of your `TZSettingsAdapter` class.

```swift
let adapter = MySettingsAdapter()
let settingsView = TZSettingsView(adapter: adapter)
```

3. Add the `TZSettingsView` to your SwiftUI view hierarchy.

```swift
struct ContentView: View {
    var body: some View {
        NavigationView {
            settingsView
                .navigationTitle("Settings")
        }
    }
}
```

## CellType

An enumeration that defines the different types of cells that can be displayed in a `TZSettingsSectionView`.

#####  Case: `navigation(view: any View)`

A cell type that navigate to a given view.

##### Parameters:

-   `view`: The view to be displayed.

##### Case: `link(url: String)`

A cell type that displays a url.

##### Parameters:

-   `url`: The URL to be opened when tapped.

##### Case: `toggle(isOn: Binding<Bool>)`

A cell type that displays a toggle switch.

##### Parameters:

-   `isOn`: A binding to a boolean value that determines the on/off state of the toggle.

##### Case: `action(() -> Void)`

A cell type that performs an action when tapped.

##### Parameters:

-   `action`: The action to be performed.

## Example

```swift
import SwiftUI
import TZSettingsView

struct ContentView: View {
    let adapter = MySettingsAdapter()
    
    var body: some View {
        NavigationView {
            TZSettingsView(adapter: adapter)
                .navigationTitle("Settings")
        }
    }
}

```

In this example, `MySettingsAdapter` conforms to `TZSettingsAdapter` and provides app settings sections.

 `TZSettingsView` uses `MySettingsAdapter` to retrieve the app settings sections and display them in a vertical stack using `TZSettingsSectionView`. 

The `TZSettingsView` instance is added to the `ContentView` SwiftUI view hierarchy and is embedded in a `NavigationView`.

## License

`TZSettingsView` is released under the [MIT License](https://opensource.org/license/mit/).
