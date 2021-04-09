package ch.keepcalm.c9s

import ch.keepcalm.c9s.data.remote.CovidApi
import io.ktor.client.*
import io.ktor.client.engine.mock.*
import io.ktor.http.*
import org.koin.test.KoinTest
import org.koin.test.inject
import kotlin.test.Test
import kotlin.test.assertEquals
import kotlin.test.assertTrue

class CommonGreetingTest {

    @Test
    fun testExample() {
        assertTrue(Greeting().greeting().contains("Hello"), "Check 'Hello' is mentioned")
    }
}
