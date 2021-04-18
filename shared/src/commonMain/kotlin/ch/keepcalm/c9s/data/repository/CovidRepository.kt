package ch.keepcalm.c9s.data.repository

import ch.keepcalm.c9s.data.remote.CovidApi
import ch.keepcalm.c9s.domain.Country
import ch.keepcalm.c9s.domain.Covid
import ch.keepcalm.c9s.domain.Record
import ch.keepcalm.c9s.getLogger
import org.koin.core.component.KoinComponent
import org.koin.core.component.inject

class CovidRepository  : KoinComponent {
    private val covidApi: CovidApi by inject()
    private val logger = getLogger()

    @Throws(Exception::class)
    suspend fun getCH(): Covid {
        logger.i(tag = "---------> Covid Repo", message = "get country call")
        return Covid(country = covidApi.fetchCH().country)
    }

    @Throws(Exception::class)
    suspend fun fetchAll(): List<Country> {
        logger.i(tag = "---------> Covid Repo", message = "get all country")
        return covidApi.fetchAll().map {
            Country(it)
        }
    }

    @Throws(Exception::class)
    suspend fun fetchRecords(): List<Record> {
        logger.i(tag = "---------> Covid Repo", message = "fetch CH COVID records")

        return covidApi.fetchRecords().records.map {
            Record(canton = it.abbreviation_canton_and_fl)
        }

    }

}