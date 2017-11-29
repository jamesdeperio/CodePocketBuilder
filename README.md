[![CODEPOCKET BUILDER](version 1)]
import setting (codepocket_color.jar)
extract template.rar to Android Studio\plugins\android\lib\templates\

root build.gradle
``` gradle
// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    ext.kotlin_version = '1.1.61'
    repositories {
        google()
        jcenter()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
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
apply plugin: 'kotlin-android-extensions'
apply plugin: 'kotlin-kapt'
android {
    compileSdkVersion 27
    defaultConfig {
         ///multiDexEnabled true
    }
    packagingOptions {
        exclude 'META-INF/LICENSE.txt'
        exclude 'META-INF/NOTICE.txt'
        exclude 'META-INF/LICENSE'
        exclude 'META-INF/NOTICE'
    }
    configurations.all {
        resolutionStrategy.force 'com.google.code.findbugs:jsr305:3.0.1'
    }
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
    }
}

dependencies {
    implementation fileTree(dir: 'libs', include: ['*.jar'])
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jre7:$kotlin_version"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.1'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.1'

    /* BUTTERKNIFE INJECTION */
    ext.butterknife_version = '8.8.1'
    implementation "com.jakewharton:butterknife:$butterknife_version"
    kapt "com.jakewharton:butterknife-compiler:$butterknife_version"

    /* GOOGLE DAGGER INJECTION */
    ext.dagger_version = '2.13'
    kapt "com.google.dagger:dagger-compiler:$dagger_version"
    kapt "com.google.dagger:dagger-android-processor:$dagger_version"
    implementation "com.google.dagger:dagger:$dagger_version"
    implementation "com.google.dagger:dagger-android:$dagger_version"
    implementation "com.google.dagger:dagger-android-support:$dagger_version"

    /* ANDROID SUPPORT LIBRARIES */
    ext.android_support_version = '27.0.1'
    ext.android_support_constraint_version = '1.0.2'
    implementation "com.android.support:support-annotations:$android_support_version"

    //noinspection GradleCompatible
    implementation "com.android.support:appcompat-v7:$android_support_version"
    implementation "com.android.support:design:$android_support_version"
    implementation "com.android.support:recyclerview-v7:$android_support_version"

    // noinspection GradleDependency,GradleCompatible
    implementation "com.android.support:cardview-v7:$android_support_version"
    implementation "com.android.support:support-v4:$android_support_version"
    implementation "com.android.support.constraint:constraint-layout:$android_support_constraint_version"
    ext.android_support_multidex_version = '1.0.2'
    //implementation "com.android.support:multidex:$android_support_multidex_version"

    /* MATERIAL DESIGN LIBRARIES */
    ext.material_rey_version = '1.2.4'
    implementation "com.github.rey5137:material:$material_rey_version"

    /* BASE CLASSES */
    ext.codepocket_version = '506eb99fb7'
    implementation "com.github.jamesdeperio:codepocket:$codepocket_version"

    /*RXJAVA */
    ext.rxjava_version = '2.1.6'
    ext.rxandroid_version = '2.0.1'
    implementation "io.reactivex.rxjava2:rxjava:$rxjava_version"
    implementation "io.reactivex.rxjava2:rxandroid:$rxandroid_version"

}
kapt {
    correctErrorTypes = true
    generateStubs = true
}
```