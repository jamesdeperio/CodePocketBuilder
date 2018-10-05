
![alt text](https://github.com/jamesdeperio/CodePocketBuilder/blob/master/code.png "CodePocketBuilder")

[![HitCount](http://hits.dwyl.io/jamesdeperio/CodePocketBuilder.svg)](http://hits.dwyl.io/jamesdeperio/CodePocketBuilder)
[![License](https://img.shields.io/badge/License%20-Apache%202-337ab7.svg)](https://www.apache.org/licenses/LICENSE-2.0)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/jamesdeperio/CodePocketBuilder/graphs/commit-activity)
[![GitHub forks](https://img.shields.io/github/forks/jamesdeperio/CodePocketBuilder.svg?style=social&label=Fork&maxAge=2592000)](https://GitHub.com/jamesdeperio/CodePocketBuilder/network/)
[![GitHub stars](https://img.shields.io/github/stars/jamesdeperio/CodePocketBuilder.svg?style=social&label=Star&maxAge=2592000)](https://GitHub.com/jamesdeperio/CodePocketBuilder/stargazers/)
[![GitHub watchers](https://img.shields.io/github/watchers/jamesdeperio/CodePocketBuilder.svg?style=social&label=Watch&maxAge=2592000)](https://GitHub.com/jamesdeperio/CodePocketBuilder/watchers/)
[![GitHub followers](https://img.shields.io/github/followers/jamesdeperio.svg?style=social&label=Follow&maxAge=2592000)](https://github.com/jamesdeperio?tab=followers)
### [DEMO APK](https://github.com/jamesdeperio/CodePocketBuilderDemo/blob/master/app-debug.apk)
- this code template helps to create a clean and modular design pattern using dagger2.
### Pattern
* Contract - interface that holds methods and callback.
* View - instantiation and creation of view.
* ViewImpl - class in charge in using and modifying views.
* Controller - this class is the activity/fragment. Handles all event listener.
* Impl - this class is the presenter. Handles all repository and process event.
* Module - this class is the binding all classes. Provider of requirement.
* ViewHolder - bind your recyclerview holder.
* Adapter - recyclerview adapter.

## How to?
* import setting (codepocket_color.jar)
* extract template.rar to Android Studio\plugins\android\lib\templates\
* after that template will be available in the selection
## TODO
* documentation with video.
### Gradle
root build.gradle
``` gradle
// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    ext.kotlin_version = '1.2.71'
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.2.0'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        maven {
            url 'https://jitpack.io'
        }
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}

```
build.gradle
``` gradle
apply plugin: 'com.android.application'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'
apply plugin: 'kotlin-android-extensions'

android {
    compileSdkVersion 28
    defaultConfig {
        applicationId "YOUR APP ID HERE"
        minSdkVersion 19
        targetSdkVersion 28
        versionCode 1
        versionName "1.0"
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
        vectorDrawables.useSupportLibrary = true
        multiDexEnabled true
    }
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
    }
}

dependencies {
     implementation fileTree(include: ['*.jar'], dir: 'libs')
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    implementation "org.jetbrains.kotlinx:kotlinx-coroutines-android:0.25.3"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.2'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.2'


    /* BASE CLASSES */
    implementation 'com.github.jamesdeperio:PocketLib:v2.1.0'
    implementation 'com.github.jamesdeperio:RetrofitKit:v1.0.2'
   implementation 'me.yokeyword:swipebackfragment:0.4.0'
    implementation 'com.airbnb.android:lottie:2.7.0'
    
    /* GLIDE */
    implementation 'com.github.bumptech.glide:glide:4.8.0'
    implementation 'com.github.bumptech.glide:okhttp3-integration:4.8.0'
    kapt 'com.github.bumptech.glide:compiler:4.8.0'

    /* GOOGLE DAGGER INJECTION */
    ext.dagger_version = '2.17'
    kapt "com.google.dagger:dagger-compiler:$dagger_version"
    kapt "com.google.dagger:dagger-android-processor:$dagger_version"
    implementation "com.google.dagger:dagger:$dagger_version"
    implementation "com.google.dagger:dagger-android:$dagger_version"
    implementation "com.google.dagger:dagger-android-support:$dagger_version"

    /* ANDROID SUPPORT LIBRARIES */
    ext.android_support_version = '28.0.0'
    ext.android_support_constraint_version = '1.1.3'
    //noinspection GradleCompatible
    implementation "com.android.support:appcompat-v7:$android_support_version"
    //noinspection GradleCompatible
    implementation "com.android.support:design:$android_support_version"
    //noinspection GradleCompatible
    implementation "com.android.support:recyclerview-v7:$android_support_version"
    implementation "com.android.support:support-annotations:$android_support_version"
    //noinspection GradleCompatible
    implementation "com.android.support:cardview-v7:$android_support_version"
    implementation "com.android.support.constraint:constraint-layout:$android_support_constraint_version"
    ext.android_support_multidex_version = '1.0.3'
    implementation "com.android.support:multidex:$android_support_multidex_version"


    /*RXJAVA */
    ext.rxjava_version = '2.2.2'
    ext.rxandroid_version = '2.1.0'
    implementation "io.reactivex.rxjava2:rxandroid:$rxandroid_version"
    implementation "io.reactivex.rxjava2:rxjava:$rxjava_version"
    implementation 'com.squareup.retrofit2:adapter-rxjava2:2.4.0'

    /*RETROFIT*/
    implementation 'com.squareup.retrofit2:retrofit:2.4.0'
    implementation 'com.squareup.okhttp3:logging-interceptor:3.11.0'
    
    /*CONVERTER */
    implementation 'com.squareup.retrofit2:converter-gson:2.4.0'
    implementation 'com.tickaroo.tikxml:annotation:0.8.13'
    implementation 'com.tickaroo.tikxml:core:0.8.13'
    kapt 'com.tickaroo.tikxml:processor:0.8.13'
    implementation 'com.tickaroo.tikxml:retrofit-converter:0.8.13'

}

kapt {
    correctErrorTypes = true
    generateStubs = true
}

kotlin {
    experimental {
        coroutines "enable"
    }
}
```
### LICENSE
```
Copyright 2017 The CodePocketBuider Author

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
