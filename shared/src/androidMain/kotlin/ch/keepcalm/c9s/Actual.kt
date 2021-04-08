package ch.keepcalm.c9s

import co.touchlab.kermit.LogcatLogger
import co.touchlab.kermit.Logger

actual fun getLogger(): Logger = LogcatLogger()