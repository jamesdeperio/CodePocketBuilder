CODEPOCKET BUILDER version 1
import setting (codepocket_color.jar)
extract template.rar to Android Studio\plugins\android\lib\templates\

root build.gradle
``` gradle
// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    ext.kotlin_version = '1.2.51'
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.1.3'
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
    implementation "org.jetbrains.kotlinx:kotlinx-coroutines-android:0.24.0"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.2'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.2'


    /* BASE CLASSES */
    implementation 'com.github.jamesdeperio:PocketLib:2.1.0'
    
    /* GLIDE */
    implementation 'com.github.bumptech.glide:glide:4.7.1'
    implementation 'com.github.bumptech.glide:okhttp3-integration:4.7.1'
    kapt 'com.github.bumptech.glide:compiler:4.7.1'
  
    /* GOOGLE DAGGER INJECTION */
    ext.dagger_version = '2.16'
    kapt "com.google.dagger:dagger-compiler:$dagger_version"
    kapt "com.google.dagger:dagger-android-processor:$dagger_version"
    implementation "com.google.dagger:dagger:$dagger_version"
    implementation "com.google.dagger:dagger-android:$dagger_version"
    implementation "com.google.dagger:dagger-android-support:$dagger_version"

    /* ANDROID SUPPORT LIBRARIES */
    ext.android_support_version = '27.1.1'
    ext.android_support_constraint_version = '1.1.2'
    implementation "com.android.support:support-annotations:$android_support_version"
    //noinspection GradleCompatible
    implementation "com.android.support:cardview-v7:$android_support_version"
    implementation "com.android.support.constraint:constraint-layout:$android_support_constraint_version"
    ext.android_support_multidex_version = '1.0.3'
    implementation "com.android.support:multidex:$android_support_multidex_version"
   
 
    /*RXJAVA */
     ext.rxjava_version = '2.2.0'
     ext.rxandroid_version = '2.0.2'
     implementation "io.reactivex.rxjava2:rxandroid:$rxandroid_version"
     implementation "io.reactivex.rxjava2:rxkotlin:$rxandroid_version"
     implementation 'com.squareup.retrofit2:adapter-rxjava2:2.4.0'
          
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
