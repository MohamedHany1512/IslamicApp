# 🌙 Islami Application (تطبيق إسلامي)

A comprehensive and modern Islamic companion Flutter application designed to enrich the daily spiritual life of users. Built with clean architecture principles, modern UI/UX themes, and smooth animations.

---

## 📸 Screenshots

| Splash & Theme | Holy Quran | Sura Details |
| :---: | :---: | :---: |
| ![Splash Screen](assets/screenshots/Screenshot%202026-09-20%20224955.png) | ![Quran Tab](assets/screenshots/Screenshot%202026-09-20%20222541.png) | ![Sura Details](assets/screenshots/Screenshot%202026-09-20%20222557.png) |

| Prophetic Hadiths | Electronic Sebha | Islamic Radio |
| :---: | :---: | :---: |
| ![Hadith Details](assets/screenshots/Screenshot%202026-09-20%20222608.png) | ![Electronic Sebha](assets/screenshots/Screenshot%202026-09-20%20222621.png) | ![Islamic Radio](assets/screenshots/Screenshot%202026-09-20%20222520.png) |

---

## ✨ Features & Architecture

* **📖 Holy Quran Section** (`quranTab.dart` & `suraDetails.dart`)
  * Browse the complete list of Quranic Surahs.
  * Dedicated custom reader interface (`item_Sura_Details.dart`) for an optimal reading experience.

* **📜 Prophetic Hadiths Section** (`hadeethTab.dart` & `hadeethDetails.dart`)
  * Explore authentic Hadith collections.
  * Structured textual detail viewer (`itemHadeethDetails.dart`).

* **📿 Electronic Sebha** (`sebha.dart`)
  * Interactive counter with smooth animations for Tasbeeh and daily Azkar.

* **📻 Islamic Radio / Ezaa** (`Eza3a.dart` & `apiezaa.dart`)
  * Live Quran radio streaming powered by an integrated REST API service.

* **🎨 Custom Theme System** (`theme.dart`)
  * Elegant light and dark theme supports with curated color palettes and customized Islamic typography.

* **🚀 Animated Splash Screen** (`splashscreen.dart`)
  * A visually pleasant, responsive splash transition upon launching the application.

---

## 🛠️ Project Structure

```text
lib/
├── modules/
│   ├── quran/
│   │   ├── quranTab.dart
│   │   ├── suraDetails.dart
│   │   └── item_Sura_Details.dart
│   ├── hadeeth/
│   │   ├── hadeethTab.dart
│   │   ├── hadeethDetails.dart
│   │   └── itemHadeethDetails.dart
│   ├── sebha/
│   │   └── sebha.dart
│   ├── radio/
│   │   ├── Eza3a.dart
│   │   └── apiezaa.dart
│   └── splash/
│       └── splashscreen.dart
├── config/
│   └── theme.dart
└── main.dart
