# Add project specific ProGuard rules here.

# Keep WebView JavaScript interfaces
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# Keep Leanback library
-keep class androidx.leanback.** { *; }

# Keep app classes
-keep class com.livecricket.tv.** { *; }
