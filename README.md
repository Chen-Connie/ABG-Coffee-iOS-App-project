# ABG Coffee iOS App

A modern, SwiftUI-based iOS app that allows users to browse coffee products, view promotions, and place orders for pickup or delivery. Designed with a clean user interface and intuitive navigation, this app brings the cafe experience to your fingertips.

> Built as part of a UI/UX-focused mobile development project

---

## Features

- **Home Page**: Dynamic banner slider with navigation to promotional offers
- **Order Page**: Choose between Pickup and Delivery options
- **Product Views**: Detailed views for coffee, food, and merchandise items
- **Reservation System**: Book and manage orders, with confirmation/failure states
- **Reusable UI Components**: Includes custom navigation bars and tab views
- **Unit & UI Tests**: Included basic test coverage

---

## Tech Stack

- **Language**: Swift 5
- **Framework**: SwiftUI, UIKit (appearance customization)
- **Minimum iOS Version**: 14.0+
- **Tooling**: Xcode, Simulator

---

## Project Structure

```
ABG coffee/
├── ABG_coffeeApp.swift       # Entry point
├── ContentView.swift         # Home screen with banners
├── OrderView.swift           # Order options: Pickup / Delivery
├── BannerView.swift          # Promotional banner
├── ProductView.swift         # Coffee / Drink / Food product views
├── Order-2View.swift         # Follow-up screen after ordering
├── ... (additional views)
├── Assets.xcassets           # Image and icon assets
└── Tests/                    # Unit and UI test files
```

---

## How to Run the Project Locally

Make sure you have **Xcode 14+** installed with **SwiftUI support** before running the app.

### Prerequisites

- macOS with [Xcode](https://developer.apple.com/xcode/) installed
- An iOS Simulator (or real iPhone device)
- Swift 5 and SwiftUI compatibility

### Steps

1. **Clone the Repository**

   ```bash
   git clone https://github.com/Chen-Connie/ABG-Coffee-iOS-App-project.git
   cd ABG-Coffee-iOS-App-project
   ```

2. **Open the Project in Xcode**

   - Open `ABG coffee.xcodeproj`
   - Or open Xcode → File > Open → Select the `.xcodeproj` file

3. **Run the App**

   - Choose a simulator device (e.g., iPhone 14 Pro)
   - Press ⌘R to build and launch the app

---

## Author

Created by **Man-Ning Chen**  
Feel free to reach out with questions or collaborations.

---

## 📄 License

This project is for academic and demonstration purposes. Licensing can be added based on future development or distribution.
