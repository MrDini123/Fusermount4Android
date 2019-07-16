# Fusermount4Android
The repository contains a custom build script for [android_external_fuse](https://github.com/LineageOS/android_external_fuse) and aims to compile fusermount for Android

Min. required API level: **`21`**

## Build instructions

 1. Get the NDK matching your distribution from [here](https://developer.android.com/ndk/downloads)
 2. Extract the downloaded archive & put the extracted folder under ~/build for example then rename the extracted directory as android-ndk
 3. Go to this repository's root and run: `export PATH=$PATH:~/build/android-ndk`
 4. Run `ndk-build`
 
 Find the binaries for each supported platform under the libs/ folder.
