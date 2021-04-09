package ch.keepcalm.c9s.screens

import androidx.compose.material.BottomNavigation
import androidx.compose.material.BottomNavigationItem
import androidx.compose.material.Icon
import androidx.compose.material.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.navigation.compose.*
import ch.keepcalm.c9s.screens.covid.CovidListView
import ch.keepcalm.c9s.screens.covid.CovidViewModel
import ch.keepcalm.c9s.themes.C9STheme

@Composable
fun MainLayout(covidViewModel: CovidViewModel) {
    val navController = rememberNavController()

    C9STheme {
        Scaffold(
            bottomBar = {
                BottomNavigation {

                    val navBackStackEntry by navController.currentBackStackEntryAsState()
                    val currentRoute = navBackStackEntry?.arguments?.getString(KEY_ROUTE)

                    bottomNavigationItems.forEach { bottomNavigationitem ->
                        BottomNavigationItem(
                            icon = {
                                Icon(
                                    bottomNavigationitem.icon,
                                    contentDescription = bottomNavigationitem.iconContentDescription
                                )
                            },
                            selected = currentRoute == bottomNavigationitem.route,
                            onClick = {
                                navController.navigate(bottomNavigationitem.route) {
                                    popUpTo = navController.graph.startDestination
                                    launchSingleTop = true
                                }
                            }
                        )
                    }
                }
            }
        ) {
            NavHost(navController, startDestination = Screen.CovidScreen.title) {
                composable(Screen.CovidScreen.title) {
                    CovidListView(covidViewModel = covidViewModel)
                }
            }
        }
    }
}