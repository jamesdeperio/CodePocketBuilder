[![CODEPOCKET BUILDER](version 1)]
import setting (codepocket_color.jar)
extract template.rar to Android Studio\plugins\android\lib\templates\

root build.gradle
``` gradle
// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    ext.kotlin_version = '1.2.21'
    ext.greendao_version='3.2.2'
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath "org.greenrobot:greendao-gradle-plugin:$greendao_version"
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
// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    ext.kotlin_version = '1.2.21'
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
       // classpath 'com.github.dcendents:android-maven-gradle-plugin:1.4.1'
        classpath 'com.github.dcendents:android-maven-gradle-plugin:2.0'
        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}

allprojects {
    repositories {
        google()
        jcenter()
        maven { url 'https://jitpack.io' }
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}

```
