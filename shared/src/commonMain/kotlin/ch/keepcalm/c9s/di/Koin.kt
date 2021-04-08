package ch.keepcalm.c9s.di

import ch.keepcalm.c9s.data.remote.CovidApi
import ch.keepcalm.c9s.data.repository.CovidRepository
import ch.keepcalm.c9s.getLogger
import co.touchlab.kermit.Kermit
import io.ktor.client.*
import io.ktor.client.features.json.*
import io.ktor.client.features.json.serializer.*
import io.ktor.client.features.logging.*
import kotlinx.serialization.json.Json
import org.koin.core.context.startKoin
import org.koin.dsl.KoinAppDeclaration
import org.koin.dsl.module

fun initKoin(enableNetworkLogs: Boolean = false, appDeclaration: KoinAppDeclaration = {}) =
    startKoin {
        appDeclaration()
        modules(commonModule(enableNetworkLogs = enableNetworkLogs))
    }



// called by iOS etc
fun initKoin() = initKoin(enableNetworkLogs = false) {}


fun commonModule(enableNetworkLogs: Boolean) = module {
    single { createJson() }
    single { createHttpClient(get(), enableNetworkLogs = enableNetworkLogs) }

    single { Kermit(getLogger()) }

    single { CovidRepository() }
    single { CovidApi(get()) }
}

fun createJson() = Json {
    prettyPrint = true
    useArrayPolymorphism = true
    isLenient = true
    ignoreUnknownKeys = true
}

fun createHttpClient(json: Json, enableNetworkLogs: Boolean) = HttpClient {
    install(JsonFeature) {
        serializer = KotlinxSerializer(json)
    }
    if (enableNetworkLogs) {
        install(Logging) {
            logger = Logger.DEFAULT
            level = LogLevel.INFO
        }
    }
}
