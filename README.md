CODEPOCKET BUILDER version 1
import setting (codepocket_color.jar)
extract template.rar to Android Studio\plugins\android\lib\templates\

root build.gradle
``` gradle
allprojects {
    repositories {
        google()
        jcenter()
        maven {    url 'https://jitpack.io' }
    }
}

```
build.gradle
``` gradle
apply plugin: 'com.android.application'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'

android {
    compileSdkVersion 27
    defaultConfig {
          multiDexEnabled true
    }
}

dependencies {
    implementation fileTree(include: ['*.jar'], dir: 'libs')
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jre7:$kotlin_version"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.1'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.1'

  //image processor
    implementation 'com.github.bumptech.glide:glide:4.7.1'
    kapt 'com.github.bumptech.glide:compiler:4.7.1'

    /* BUTTERKNIFE INJECTION */
    ext.butterknife_version = '8.8.1'
    implementation "com.jakewharton:butterknife:$butterknife_version"
    kapt "com.jakewharton:butterknife-compiler:$butterknife_version"

    /* GOOGLE DAGGER INJECTION */
    ext.dagger_version = '2.15'
    kapt "com.google.dagger:dagger-compiler:$dagger_version"
    kapt "com.google.dagger:dagger-android-processor:$dagger_version"
    implementation "com.google.dagger:dagger:$dagger_version"
    implementation "com.google.dagger:dagger-android:$dagger_version"
    implementation "com.google.dagger:dagger-android-support:$dagger_version"

    /* ANDROID SUPPORT LIBRARIES */
    ext.android_support_version = '27.1.1'
    ext.android_support_multidex_version = '1.0.3'
    implementation "com.android.support:support-annotations:$android_support_version"
    implementation "com.android.support:appcompat-v7:$android_support_version"
    implementation "com.android.support:design:$android_support_version"
    implementation "com.android.support:recyclerview-v7:$android_support_version"
    implementation "com.android.support:cardview-v7:$android_support_version"
    implementation 'com.android.support.constraint:constraint-layout:1.1.0'
    implementation "com.android.support:multidex:$android_support_multidex_version"

    implementation 'com.github.jamesdeperio:pocketlib:57c3cd912d'

    /*CONVERTER */
    implementation 'com.squareup.retrofit2:converter-gson:2.4.0'

    /*RXJAVA */
    ext.rxjava_version = '2.1.12'
    ext.rxandroid_version = '2.0.2'
    implementation "io.reactivex.rxjava2:rxjava:$rxjava_version"
    implementation "io.reactivex.rxjava2:rxandroid:$rxandroid_version"
    implementation 'com.squareup.retrofit2:adapter-rxjava2:2.4.0'
}
kapt {
    correctErrorTypes = true
    generateStubs = true
}
```
