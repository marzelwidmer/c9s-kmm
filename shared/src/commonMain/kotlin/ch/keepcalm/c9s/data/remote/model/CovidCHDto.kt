package ch.keepcalm.c9s.data.remote.model

import kotlinx.serialization.*

@Serializable
data class CovidCHDto(
    @SerialName("records")
    val records: List<RecordDto>
)

@Serializable
data class RecordDto(
    @SerialName("abbreviation_canton_and_fl") val abbreviation_canton_and_fl: String
)







//{
//    "totals": {
//    "ncumul_tested_fwd": 357003,
//    "ncumul_conf_fwd": 610251,
//    "ncumul_hosp_fwd": 1096,
//    "ncumul_ICU_fwd": 204,
//    "ncumul_vent_fwd": 86,
//    "current_hosp_fwd": 1096,
//    "current_icu_fwd": 204,
//    "current_vent_fwd": 86,
//    "ncumul_released_fwd": 83512,
//    "ncumul_deceased_fwd": 10440
//},
//    "records": [
//    {
//        "date": "2020-02-26",
//        "time": "08:00",
//        "abbreviation_canton_and_fl": "AG",
//        "ncumul_tested": "",
//        "ncumul_conf": 1,
//        "new_hosp": "",
//        "current_hosp": "",
//        "current_icu": "",
//        "current_vent": "",
//        "ncumul_released": "",
//        "ncumul_deceased": 0,
//        "source": "https://www.ag.ch/media/kanton_aargau/themen_1/coronavirus_1/daten_excel/Covid-19-Daten_Kanton_Aargau.xlsx",
//        "current_isolated": "",
//        "current_quarantined": "",
//        "current_quarantined_riskareatravel": "",
//        "ncumul_ICF": "",
//        "ncumul_tested_fwd": 0,
//        "ncumul_conf_fwd": 1,
//        "ncumul_hosp": "",
//        "ncumul_ICU": "",
//        "ncumul_vent": "",
//        "ncumul_hosp_fwd": 0,
//        "ncumul_ICU_fwd": 0,
//        "ncumul_vent_fwd": 0,
//        "current_hosp_fwd": 0,
//        "current_icu_fwd": 0,
//        "current_vent_fwd": 0,
//        "ncumul_released_fwd": 0,
//        "ncumul_deceased_fwd": 0
//    },