package ch.keepcalm.c9s

import kotlin.test.Test
import kotlin.test.assertTrue

class IosGreetingTest {

    @Test
    fun testExample() {
        assertTrue(Greeting().greeting().contains("iOS"), "Check iOS is mentioned")
    }
}

//import ch.keepcalm.c9s.hello
//import kotlin.test.Test
//import kotlin.test.assertTrue
//
//class SampleTestsIOS {
//    @Test
//    fun testHello() {
//        assertTrue("iOS" in hello())
//    }
//}