package ch.keepcalm.c9s.data.remote.model

import kotlinx.serialization.*

@Serializable
data class CountryDto(
    val names: List<String>
)