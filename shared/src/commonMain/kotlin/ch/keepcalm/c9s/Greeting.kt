package ch.keepcalm.c9s

class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}