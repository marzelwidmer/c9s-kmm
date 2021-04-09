package ch.keepcalm.c9s.screens.covid

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import ch.keepcalm.c9s.data.repository.CovidRepository
import ch.keepcalm.c9s.domain.Country
import ch.keepcalm.c9s.domain.Covid
import kotlinx.coroutines.launch

class CovidViewModel(private val covidRepository: CovidRepository) : ViewModel() {

    val players = MutableLiveData<List<Covid>>()
    val countries = MutableLiveData<List<Country>>()

    init {
        viewModelScope.launch {
            players.value = listOf(covidRepository.getCH())
            countries.value = covidRepository.fetchAll()
        }
    }
}