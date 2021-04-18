package ch.keepcalm.c9s.screens.covid

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import ch.keepcalm.c9s.data.remote.model.CovidCHDto
import ch.keepcalm.c9s.domain.Country

@Composable
fun CountryView(country: Country) = Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier
    .padding(16.dp)
    .fillMaxWidth()
    .clickable { }
) {
    Spacer(modifier = Modifier.size(12.dp))
    Column(
        modifier = Modifier
            .weight(1f)
            .padding(start = 8.dp)
    ) {
        Text(country.name, style = MaterialTheme.typography.h6)
    }
}

