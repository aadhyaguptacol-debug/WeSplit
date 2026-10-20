# 💸 WeSplit — Bill & Expense Splitter App

[![Swift](https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white)](https://developer.apple.com/swift/)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-007ACC?style=for-the-badge&logo=apple&logoColor=white)](https://developer.apple.com/swiftui/)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

A clean, responsive expense-splitting iOS application built with **Swift** and **SwiftUI**. WeSplit simplifies dining out and group expenses by calculating exact tip percentages, total amounts, and per-person breakdowns in real time.

---



| Main Calculator | Custom Tip Selection | Split Breakdown |
| :---: | :---: | :---: |
| <img src="screenshots/calculator.png" width="220" /> | <img src="screenshots/tip_picker.png" width="220" /> | <img src="screenshots/summary.png" width="220" /> |

---

## ✨ Features

- **Real-Time Calculation:** Computes the total bill and individual share instantly as values change.
- **Dynamic Tip Selector:** Preset tip percentages with support for custom tip adjustments.
- **Group Splitting:** Easily select the number of people sharing the check.
- **Currency Localization:** Automatically formats currencies based on the user's regional device settings.
- **Native iOS Design:** Built strictly with SwiftUI form components, pickers, and sections following Apple's Human Interface Guidelines.
- **Dark & Light Mode:** Seamless adaptation across system appearance themes.

---

## 🛠️ Tech Stack & Architecture

- **Language:** [Swift](https://developer.apple.com/swift/)
- **UI Framework:** [SwiftUI](https://developer.apple.com/swiftui/)
- **IDE:** [Xcode](https://developer.apple.com/xcode/)
- **Target OS:** iOS 16.0+

---

## 📁 Project Structure

```text
WeSplit/
├── Views/           # SwiftUI views and form components
├── Models/          # Bill calculation logic and state models
├── Assets.xcassets  # App icons, accent colors, and graphic assets
├── Preview Content/ # Xcode canvas preview data
└── WeSplitApp.swift # Main application lifecycle entry point
