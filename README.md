# KMUTNB App - Final Exam Mobile Application

A Flutter mobile application created for the Final Exam of the Mobile Application Development subject at King Mongkut's University of Technology North Bangkok (KMUTNB). This app provides access to the university website and campus map.

## Features

- **University Website Access**: Built-in WebView that loads the official KMUTNB website (https://kmutnb.ac.th/)
- **Campus Map**: Interactive Google Maps integration showing the Faculty of Technology and Management location
- **User-Friendly Navigation**: Simple bottom navigation bar for switching between features
- **Material Design 3**: Modern UI with Material 3 components and theming

## Screenshots

<p align="center">
  <img src="Screenshot_1742302541.png" width="300" alt="KMUTNB Website Screen">
  <br>
  <em>KMUTNB Website Screen - Access the university's website directly in the app</em>
</p>

<p align="center">
  <img src="Screenshot_1742302545.png" width="300" alt="Campus Map Screen">
  <br>
  <em>Campus Map Screen - View the Faculty of Technology and Management location</em>
</p>

## Requirements

- Flutter SDK 3.7.0 or higher
- Dart SDK 3.7.0 or higher
- Android SDK for Android deployment
- iOS SDK for iOS deployment

## Dependencies

- `google_maps_flutter: ^2.10.1` - For Google Maps integration
- `geolocator: ^13.0.2` - For location services
- `webview_flutter: ^4.10.0` - For WebView functionality
- `http: ^1.3.0` - For network requests
- `flutter_lints: ^5.0.0` - For code quality

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/kmutnb-app.git
   ```

2. Navigate to the project directory:
   ```
   cd kmutnb-app
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. For Google Maps functionality:
   - Get a Google Maps API key from the [Google Cloud Console](https://console.cloud.google.com/)
   - Add your API key to the Android and iOS configuration files:
     - For Android: Add it to `android/app/src/main/AndroidManifest.xml`
     - For iOS: Add it to `ios/Runner/AppDelegate.swift`

5. Run the app:
   ```
   flutter run
   ```

## Usage

- **Home Tab**: Access the KMUTNB website with full browsing capabilities
- **Map Tab**: View the Faculty of Technology and Management location on Google Maps
  - Use the floating action button to recenter the map on the faculty location

## Project Structure

- `lib/main.dart` - Main application entry point and navigation setup
- `lib/screens/webview_screen.dart` - WebView implementation for the KMUTNB website
- `lib/screens/map_screen.dart` - Google Maps implementation showing campus location


