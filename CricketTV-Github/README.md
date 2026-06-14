# 🏏 Live Cricket TV - Android TV App

A native Android TV app that streams live cricket from **livecricketsl.cc.nf**

---

## 📱 Features

- ✅ Full Android TV support (D-pad / remote control navigation)
- ✅ Full-screen immersive mode
- ✅ Hardware-accelerated WebView for smooth streaming
- ✅ Auto-landscape layout
- ✅ Full-screen video player (exits video on BACK)
- ✅ Desktop user-agent for best website compatibility
- ✅ Error screen with reload hint
- ✅ No internet connection detection
- ✅ Exit confirmation dialog
- ✅ Screen stays ON during streaming
- ✅ Orange cricket-themed UI

---

## 🛠️ Setup Instructions

### Requirements
- Android Studio Hedgehog (2023.1+) or newer
- JDK 8 or higher
- Android SDK 34

### Steps

1. **Open in Android Studio**
   - Open Android Studio → File → Open → Select the `CricketTV` folder

2. **Sync Gradle**
   - Click "Sync Now" when prompted

3. **Build & Run**
   - Connect your Android TV device via ADB, or use an Android TV emulator
   - Click ▶ Run

4. **Install on Android TV**
   - Enable Developer Options on your TV
   - Enable ADB debugging
   - Run: `adb connect <TV_IP>:5555`
   - Then run the app from Android Studio

---

## 📺 Remote Control Keys

| Key | Action |
|-----|--------|
| D-pad UP/DOWN/LEFT/RIGHT | Navigate links on page |
| OK / ENTER | Click selected link |
| BACK | Go back / Exit app |
| MENU | Reload the page |

---

## 📁 Project Structure

```
app/
├── src/main/
│   ├── java/com/livecricket/tv/
│   │   ├── MainActivity.kt       ← Main WebView + TV remote handling
│   │   └── SplashActivity.kt     ← Branded splash screen
│   ├── res/
│   │   ├── layout/
│   │   │   ├── activity_main.xml
│   │   │   └── activity_splash.xml
│   │   ├── values/
│   │   │   ├── strings.xml
│   │   │   ├── styles.xml
│   │   │   └── colors.xml
│   │   └── xml/
│   │       └── network_security_config.xml
│   └── AndroidManifest.xml
```

---

## 🎨 Customization

- **Change URL**: Edit `CRICKET_URL` in `MainActivity.kt`
- **Change app name**: Edit `app_name` in `strings.xml`
- **Change colors**: Edit `colors.xml` (currently orange #FF6B00)
- **Add custom logo**: Replace `ic_launcher` in `mipmap-hdpi/`

---

## 📦 Build APK

```bash
./gradlew assembleRelease
```

APK will be at: `app/build/outputs/apk/release/app-release.apk`

---

## 🔒 Signing for Production

To publish on the Play Store, sign the APK:
1. Android Studio → Build → Generate Signed Bundle/APK
2. Create or use existing keystore
3. Select Release build type

---

*Built for Android TV with Leanback support library*
