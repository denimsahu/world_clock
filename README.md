# World Clock – Flutter App

A Flutter mobile application that displays the **current time for different countries** using a world time API.  
The app dynamically updates the **background/theme based on the time of day** (day or night).

This project was built as a learning exercise to understand API integration, navigation, and state handling in Flutter.

---

## Tech Stack

- Flutter
- Dart
- HTTP package (API calls)
- GetX (navigation and argument passing)
- Intl (date & time formatting)
- Flutter SpinKit (loading animation)

---

## Purpose of the Project

This project was created to:
- Learn **REST API integration** in Flutter
- Work with asynchronous data (`async` / `await`)
- Understand time zone–based data handling
- Practice multi-screen navigation using **GetX**
- Dynamically update UI based on external data (time of day)

---

## Features

- Fetches real-time data from a **world time API**
- Displays:
  - Current time
  - Location / country name
- Day/Night based UI:
  - Background image changes depending on whether it’s day or night at the selected location
- Country selection screen with:
  - Country name
  - Flag image
- Loading screen with animated spinner while fetching API data

---

## App Flow

1. App starts on **Choose Location** screen
2. User selects a country
3. App navigates to a **loading screen**
4. Time data is fetched from the API using the selected timezone
5. User is redirected to the **home screen** displaying:
   - Current time
   - Location
   - Background based on day/night
6. User can reselect location at any time

---

## Technical Highlights

- Uses **GetX** for:
  - Navigation
  - Passing arguments between screens
- API data is fetched using the `http` package
- Time is parsed and formatted using the `intl` package
- UI reacts dynamically based on API response
- Clean separation of screens:
  - `loading_screen`
  - `home_screen`
  - `choose_location_screen`

---

## Project Structure (lib)

- `main.dart` – App entry point
- `choose_location_screen.dart` – Location selection UI
- `loading_screen.dart` – API call and loading indicator
- `home_screen.dart` – Displays time and themed UI

---

## Compatibility Note

This is an **older Flutter project** created for learning purposes.  
It may require code and dependency updates to run on current Flutter versions.  
For this reason, setup and run instructions are intentionally omitted.

---

## Learning Outcome

Through this project, I gained hands-on experience with:
- Flutter API integration
- Time zone handling
- GetX navigation
- Conditional UI rendering
- Multi-screen Flutter app architecture

---

## Disclaimer

This project is intended for **learning and demonstration purposes** and is not actively maintained.
