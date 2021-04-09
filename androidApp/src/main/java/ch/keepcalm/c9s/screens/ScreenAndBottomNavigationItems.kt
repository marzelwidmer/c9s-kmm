package ch.keepcalm.c9s.screens

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Star
import androidx.compose.ui.graphics.vector.ImageVector

sealed class Screen(val title: String) {
    object CovidScreen : Screen("CovidScreen")
}

data class BottomNavigationitem(
    val route: String,
    val icon: ImageVector,
    val iconContentDescription: String
)

val bottomNavigationItems = listOf(
    BottomNavigationitem(
        Screen.CovidScreen.title,
        Icons.Default.Star,
        "c9s"
    ),
)