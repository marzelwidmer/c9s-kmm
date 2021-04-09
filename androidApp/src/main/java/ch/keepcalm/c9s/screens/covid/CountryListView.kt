package ch.keepcalm.c9s.screens.covid

import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.Scaffold
import androidx.compose.material.Text
import androidx.compose.material.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun CovidListView(covidViewModel: CovidViewModel) {

    val countryList = covidViewModel.countries.observeAsState()

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text("Covid List")
                }
            )
        }) {

        Spacer(Modifier.size(20.dp))

        countryList.value?.let {
            LazyColumn {
                items(
                    items = it,
                    itemContent = { player ->
                        CountryView(player)
                    })
            }
        }
    }
}