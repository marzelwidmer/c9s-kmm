package ch.keepcalm.c9s

import android.app.Application
import ch.keepcalm.c9s.di.appModule
import ch.keepcalm.c9s.di.initKoin
import co.touchlab.kermit.Kermit
import org.koin.android.ext.koin.androidContext
import org.koin.android.ext.koin.androidLogger
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

class C9SApplication : Application(), KoinComponent {

    private val logger: Kermit by inject()

    override fun onCreate() {
        super.onCreate()

        initKoin {
            androidLogger()
            androidContext(this@C9SApplication)
            modules(appModule)
        }

        logger.d { "c9sApplication" }
    }
}