# Zoo Ticket Booking App

The **Zoo Ticket Booking App** is a Flutter-based mobile application designed to simplify the process of discovering, booking, and managing zoo visit tickets. This app features a smooth user interface, including a booking home page, ticket management, and settings flow.

## 🐾 Overview

The Zoo Ticket Booking App is developed using **Flutter**, enabling users to explore zoo attractions, book tickets, and manage their visit details. It includes several key features, such as:

- **Home Screen**: Browse through available zoo attractions and ticket options.
- **Booking Flow**: Book tickets based on date, time, and number of visitors.
- **Settings Flow**: Customize app preferences including themes and notification settings.

## ✨ Features

- **Home Screen Flow**: View zoo attractions, available tickets, and promotional banners.
- **Booking Flow**: Book, view, and manage tickets with support for QR code generation.
- **Ticket History Flow**: Access previously booked tickets and upcoming visits.
- **Settings Flow**: Change app settings like themes, language, and notifications.

## 📁 Folder Structure

```bash
lib/
├── core/                      # Core functionality (e.g., theme, constants, services)
│   ├── constants/             # Constants (e.g., sizes, images, routes)
│   ├── theme/                 # Theme files (dark, light themes)
│   └── utils/                 # Helper utilities (formatting, validators)
├── data/                      # Data layer (models, services, repositories)
│   ├── models/                # Data models (e.g., Ticket, User, Attraction)
│   ├── repository/            # Repository pattern for ticket & zoo data
│   ├── services/              # Backend services (API calls, local DB)
│   └── routes/                # App routing and navigation
├── provider/                  # State management (e.g., Riverpod, Provider)
│   ├── ticket_provider.dart   # State management for tickets
│   └── user_provider.dart     # State management for user sessions
├── src/                       # Feature-based organization
│   ├── common_widgets/        # Reusable widgets (buttons, cards, headers)
│   └── feature/               # Features like home, booking, settings, history
└── main.dart                  # Entry point of the app
```

## 📦 Installing

Follow these steps to set up and run the project locally:

```bash
# 1. Clone the repository
git clone https://github.com/backbencherstudio/zoo_ticket_booking_app.git

# 2. Navigate into the project directory
cd zoo_ticket_booking_app

# 3. Get Flutter packages
flutter pub get

# 4. (Optional) Run on a connected device or emulator
flutter run
```

## 📸 Screenshots
<img width="1458" height="615" alt="Image" src="https://github.com/user-attachments/assets/8e4cc5ff-f236-4957-839b-97a743bb7b61" />
<img width="434" height="614" alt="Image" src="https://github.com/user-attachments/assets/b752e2f3-bb93-4208-9fa2-3b9d10ba4e52" />
<img width="476" height="407" alt="Image" src="https://github.com/user-attachments/assets/8488aafa-037f-4b4a-81ea-caf3247a5d48" />
<img width="1603" height="650" alt="Image" src="https://github.com/user-attachments/assets/a843820b-1f3e-437f-a6fc-c726b50f9652" />
<img width="1813" height="407" alt="Image" src="https://github.com/user-attachments/assets/58852b5b-ae3b-4d23-a56e-492cd0867e63" />

---

Feel free to contribute, fork, or customize this project to suit your zoo’s unique features and branding!

