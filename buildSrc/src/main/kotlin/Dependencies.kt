object Versions {
    const val android_gradle = "4.2.0-rc01"
    const val kotlin = "1.4.32"

    const val applicati_Id = "ch.keepcalm.c9s"
    const val compile_sdk = 30
    const val min_sdk = 29
    const val target_sdk = 30

    const val kotlinx_serialization = "1.1.0"
    const val kotlinx_coroutines_core = "1.4.3-native-mt"
    const val kotlinx_dateTime = "0.1.1"
    const val ktor = "1.5.2"


    const val compose = "1.0.0-beta03"
    const val nav_compose = "1.0.0-alpha09"
    const val accompanist = "0.6.2"
    const val activity_compose = "1.3.0-alpha05"

    const val material = "1.3.0"
    const val appcompat = "1.2.0"
    const val lifecycle= "2.2.0"

    const val kermit = "0.1.8"
    const val koin = "3.0.1-beta-2"
    const val slf4j = "1.7.30"
    const val russhwolf = "0.7.4"

    const val kluent = "1.65"
}

object Deps {
    const val kermit = "co.touchlab:kermit:${Versions.kermit}"
    const val kotlinxDateTime = "org.jetbrains.kotlinx:kotlinx-datetime:${Versions.kotlinx_dateTime}"
}

object Lifecycle {
    val extensions = "androidx.lifecycle:lifecycle-extensions:${Versions.lifecycle}"
    val viewmodel = "androidx.lifecycle:lifecycle-viewmodel-ktx:${Versions.lifecycle}"
    val livedata = "androidx.lifecycle:lifecycle-livedata-ktx:${Versions.lifecycle}"
}

object Compose {
    const val ui = "androidx.compose.ui:ui:${Versions.compose}"
    const val uiGraphics = "androidx.compose.ui:ui-graphics:${Versions.compose}"
    const val uiTooling = "androidx.compose.ui:ui-tooling:${Versions.compose}"
    const val foundation = "androidx.compose.foundation:foundation:${Versions.compose}"
    const val foundationLayout = "androidx.compose.foundation:foundation-layout:${Versions.compose}"
    const val material = "androidx.compose.material:material:${Versions.compose}"
    const val runtimeLiveData = "androidx.compose.runtime:runtime-livedata:${Versions.compose}"
    const val navigation = "androidx.navigation:navigation-compose:${Versions.nav_compose}"
    const val accompanist= "dev.chrisbanes.accompanist:accompanist-coil:${Versions.accompanist}"
}

object Koin {
    val core = "io.insert-koin:koin-core:${Versions.koin}"
    val test = "io.insert-koin:koin-test:${Versions.koin}"
    val android = "io.insert-koin:koin-android:${Versions.koin}"
    val compose = "io.insert-koin:koin-androidx-compose:${Versions.koin}"
}

object Ktor {
    val clientCore = "io.ktor:ktor-client-core:${Versions.ktor}"
    val clientJson = "io.ktor:ktor-client-json:${Versions.ktor}"
    val clientLogging = "io.ktor:ktor-client-logging:${Versions.ktor}"
    val clientSerialization = "io.ktor:ktor-client-serialization:${Versions.ktor}"

    val clientAndroid = "io.ktor:ktor-client-android:${Versions.ktor}"
    val clientApache = "io.ktor:ktor-client-apache:${Versions.ktor}"
    val slf4j = "org.slf4j:slf4j-simple:${Versions.slf4j}"
    val clientIos = "io.ktor:ktor-client-ios:${Versions.ktor}"

    val clientMock = "io.ktor:ktor-client-mock:${Versions.ktor}"

}

object Serialization {
    val core = "org.jetbrains.kotlinx:kotlinx-serialization-core:${Versions.kotlinx_serialization}"
    val json = "org.jetbrains.kotlinx:kotlinx-serialization-json:${Versions.kotlinx_serialization}"
}