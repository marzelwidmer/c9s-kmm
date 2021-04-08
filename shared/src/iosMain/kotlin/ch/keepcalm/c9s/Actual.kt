package ch.keepcalm.c9s

import co.touchlab.kermit.Logger
import co.touchlab.kermit.NSLogLogger

actual fun getLogger(): Logger = NSLogLogger()