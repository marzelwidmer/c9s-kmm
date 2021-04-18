package ch.keepcalm.c9s.domain

data class CovidCH (
    val records : List<Record>
)
data class Record(val canton: String)
