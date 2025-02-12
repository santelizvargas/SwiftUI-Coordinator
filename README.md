# SwiftUI-Coordinator

🚀 A navigation coordinator in **SwiftUI** based on `NavigationStack`, `ObservableObject`, and `@EnvironmentObject`, applying **SOLID principles** for a clean and scalable architecture.

---

## 📌 Features
✅ Coordinator based on `ObservableObject` for managing navigation.  
✅ Supports `NavigationStack` and `popover` for modals.  
✅ Implements `Router` and `AppCoordinator` for separation of concerns.  
✅ Extensible design using `AppTransition` to define routes.  
✅ Works with `@EnvironmentObject` for easy dependency injection.

---

## ⚡ Project Structure
```plaintext
SwiftUI-Coordinator/
│── SwiftUI-Coordinator.xcodeproj
│── SwiftUI-Coordinator/
│   │── Coordinator.swift           # Base protocol for Coordinators
│   │── Router.swift                # Protocol for navigation handling
│   │── AppCoordinator.swift        # Main Coordinator implementation
│   │── AppTransition.swift         # Enum defining app routes
│   │── Views/
│   │   │── EntryView.swift         # Main view loading the Coordinator
│   │   │── HomeView.swift          # Home screen
│   │   │── DetailView.swift        # Detail screen
│   │   │── OtherView.swift         # Secondary screen with navigation buttons
│   │   │── ModalView.swift         # Modal screen
│── README.md                       # This file 📄
│── .gitignore                      # Git ignore file
```

---

## 🚀 Installation & Usage
### **1️⃣ Clone the repository**
```bash
git clone https://github.com/santelizvargas/SwiftUI-Coordinator.git
cd SwiftUI-Coordinator
```

### **2️⃣ Open the project in Xcode**
```bash
xed .
```

### **3️⃣ Run on the Simulator**
- Make sure to select a simulator in Xcode.
- Press `Cmd + R` to run the app.

---

## 📖 Using the Coordinator
### **📌 Defining New Routes**
To add a new screen, update `AppTransition.swift`:

```swift
enum AppTransition: String, Identifiable, CaseIterable {
    case home
    case detail
    case other
    case modal
    case settings  // New route added
    
    var id: String { rawValue }
}
```

### **📌 Navigating Between Views**
Use `appCoordinator` in any view:

```swift
Button("Go to Details") {
    appCoordinator.navigate(to: .detail)
}
```

To **go back**:

```swift
Button("Back") {
    appCoordinator.pop()
}
```

To **return to root**:

```swift
Button("Back to Home") {
    appCoordinator.popToRoot()
}
```

### **📌 Presenting a Modal**
```swift
Button("Open Modal") {
    appCoordinator.present(.modal)
}
```

To **dismiss it**:

```swift
Button("Close Modal") {
    appCoordinator.dismiss()
}
```

---

## 🔧 Customization
If you need to modify how views are created, edit `AppCoordinator.swift`:

```swift
@ViewBuilder
func buildView(for route: AppTransition) -> some View {
    switch route {
        case .home: HomeView()
        case .detail: DetailView()
        case .other: OtherView()
        case .modal: ModalView()
        case .settings: SettingsView() // New screen
    }
}
```

---

## 🛠 Future Improvements
✅ Add support for **deeplinks**.  
✅ Implement **custom animated transitions**.  
✅ Support **authentication-protected screens**.  


