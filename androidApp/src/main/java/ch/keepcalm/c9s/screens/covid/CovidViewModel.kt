package ch.keepcalm.c9s.screens.covid

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import ch.keepcalm.c9s.data.remote.model.CovidCHDto
import ch.keepcalm.c9s.data.repository.CovidRepository
import ch.keepcalm.c9s.domain.Country
import ch.keepcalm.c9s.domain.Covid
import ch.keepcalm.c9s.domain.CovidCH
import ch.keepcalm.c9s.domain.Record
import kotlinx.coroutines.launch

class CovidViewModel(private val covidRepository: CovidRepository) : ViewModel() {

    val covid = MutableLiveData<List<Covid>>()
    val countries = MutableLiveData<List<Country>>()
    val records = MutableLiveData<List<Record>>()

    init {
        viewModelScope.launch {
            covid.value = listOf(covidRepository.getCH())
            countries.value = covidRepository.fetchAll()
            records.value = covidRepository.fetchRecords()
        }
    }
}