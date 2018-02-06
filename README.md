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
apply plugin: 'com.android.application'
apply plugin: 'org.greenrobot.greendao'
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-kapt'
android {
    compileSdkVersion 27
    buildToolsVersion '27.0.3'
    defaultConfig {
        applicationId "ph.nyxsys.vcastplay"
        minSdkVersion 18
        targetSdkVersion 27
        versionCode 1
        versionName "1.0"
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
        multiDexEnabled true
        vectorDrawables.useSupportLibrary true
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
    implementation fileTree(include: ['*.jar'], dir: 'libs')
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jre7:$kotlin_version"
    testImplementation 'junit:junit:4.12'
    androidTestImplementation 'com.android.support.test:runner:1.0.1'
    androidTestImplementation 'com.android.support.test.espresso:espresso-core:3.0.1'
    implementation 'com.github.f0ris.sweetalert:library:1.5.2'

    implementation 'com.github.bumptech.glide:glide:4.5.0'
    kapt 'com.github.bumptech.glide:compiler:4.5.0'

    /* BUTTERKNIFE INJECTION */
    ext.butterknife_version = '8.8.1'
    implementation "com.jakewharton:butterknife:$butterknife_version"
    kapt "com.jakewharton:butterknife-compiler:$butterknife_version"

    /* GOOGLE DAGGER INJECTION */
    ext.dagger_version = '2.14.1'
    kapt "com.google.dagger:dagger-compiler:$dagger_version"
    kapt "com.google.dagger:dagger-android-processor:$dagger_version"
    implementation "com.google.dagger:dagger:$dagger_version"
    implementation "com.google.dagger:dagger-android:$dagger_version"
    implementation "com.google.dagger:dagger-android-support:$dagger_version"

    /* ANDROID SUPPORT LIBRARIES */
    ext.android_support_version = '27.0.2'
    ext.android_support_constraint_version = '1.1.0-beta4'
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
    compile "com.android.support:multidex:$android_support_multidex_version"

    /* MATERIAL DESIGN LIBRARIES */
    ext.material_rey_version = '1.2.4'
    implementation "com.github.rey5137:material:$material_rey_version"

    /* BASE CLASSES */
    ext.codepocket_version = '1.2.1'

    //'82d467dd56'
    implementation "com.github.jamesdeperio:codepocket:$codepocket_version"

    // implementation 'com.squareup.retrofit2:converter-moshi:2.3.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.3.0'
    compile 'com.github.smart-fun:XmlToJson:1.4.1'

    /*RXJAVA */
    ext.rxjava_version = '2.1.8'
    ext.rxandroid_version = '2.0.1'
    implementation "io.reactivex.rxjava2:rxjava:$rxjava_version"
    implementation "io.reactivex.rxjava2:rxandroid:$rxandroid_version"

    /*Animation */
    ext.scrollingimg_version = '1.2'
    ext.yoyo_easing_version = '2.1@aar'
    ext.yoyo_androidanimations_version = '2.3@aar'
    implementation "com.daimajia.easing:library:$yoyo_easing_version"
    implementation "com.daimajia.androidanimations:library:$yoyo_androidanimations_version"
    implementation "com.github.Q42:AndroidScrollingImageView:$scrollingimg_version"
    implementation 'com.yqritc:android-scalablevideoview:1.0.4'

    /* SQLITE ORM*/
    ext.sqlcipher_version = '3.5.9'
    implementation "org.greenrobot:greendao:$greendao_version"
    implementation "net.zetetic:android-database-sqlcipher:$sqlcipher_version"
    implementation 'com.nineoldandroids:library:2.4.0'
    implementation 'com.daimajia.slider:library:1.1.5@aar'
    implementation 'com.squareup.picasso:picasso:2.3.2'
    implementation 'com.github.kaknazaveshtakipishi:PermissionEverywhere:1.0.2'

    //kapt 'frankiesardo:icepick-processor:3.2.0'
    implementation files('libs/commons-net-3.1.jar')
    implementation 'com.github.codekidX:storage-chooser:2.0.3'
    implementation 'me.grantland:autofittextview:0.2.1'
    implementation files('libs/kryonet-2.21-all.jar')
}
kapt {
    correctErrorTypes = true
    generateStubs = true
}
```
