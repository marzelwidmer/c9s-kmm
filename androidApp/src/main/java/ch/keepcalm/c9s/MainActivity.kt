package ch.keepcalm.c9s

import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.appcompat.app.AppCompatActivity
import ch.keepcalm.c9s.screens.MainLayout
import ch.keepcalm.c9s.screens.covid.CovidViewModel
import org.koin.androidx.viewmodel.ext.android.viewModel

class MainActivity : AppCompatActivity() {

    private val covidViewModel: CovidViewModel by viewModel()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MainLayout(covidViewModel)
        }
    }
}


//fun greet(): String {
//    return Greeting().greeting()
//}
//class MainActivity : AppCompatActivity() {
//    override fun onCreate(savedInstanceState: Bundle?) {
//        super.onCreate(savedInstanceState)
//        setContentView(R.layout.activity_main)
//
//        val tv: TextView = findViewById(R.id.text_view)
//        tv.text = greet()
//    }
//}