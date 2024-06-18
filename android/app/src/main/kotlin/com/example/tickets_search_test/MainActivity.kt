package com.example.tickets_search_test

import android.app.Activity
import android.app.DatePickerDialog
import android.content.Intent
import android.provider.CalendarContract
import android.icu.util.Calendar
import android.net.Uri
import android.util.Log
import androidx.annotation.NonNull
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.DialogFragment
import androidx.fragment.app.Fragment
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.google.android.material.datepicker.MaterialDatePicker
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener

class MainActivity : FlutterActivity() {
    private val CHANNEL = "calendar_channel"
    private var result: MethodChannel.Result? = null
    private var year: Int = 0
    private var month: Int = 0
    private var day: Int = 0

    private val fragmentActivity = MyFragmentActivity()
    private val myFragment = MyFragment()


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "openCalendar" -> {
                    openCalendar()
                    result.success(null)
                }
                // "getSelectedDate" -> {
                //     this.result = result
                // }
                // "closeCalendar" -> {
                //     result.success(null)
                // }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun openCalendar() {
        myFragment.showDatePicker(myFragment.childFragmentManager)


    //     val calendar = Calendar.getInstance()
    //     val year = calendar.get(Calendar.YEAR)
    //     val month = calendar.get(Calendar.MONTH)
    //     val day = calendar.get(Calendar.DAY_OF_MONTH)

    //     val builder = MaterialDatePicker.Builder.datePicker()
    // val picker = builder.build()

    // picker.addOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener {
    //     val selectedDate = picker.headerText // Получение выбранной даты
    //     this.result?.success(selectedDate) // Передача выбранной даты обратно в Flutter
    // })

    // picker.show(fragmentActivity.supportFragmentManager, picker.toString())
        
        // DatePickerDialog(this, DatePickerDialog.OnDateSetListener { view, selectedYear, selectedMonth, selectedDay ->
        //     val selectedDate = "$selectedDay/${selectedMonth + 1}/$selectedYear" // Форматирование выбранной даты
        //     Log.d("SelectedDate", selectedDate ?: "No date selected") // Вывод выбранной даты в логи

        //     this.result?.success(selectedDate) // Передача выбранной даты обратно в Flutter
        // }, year, month, day)
    
        // datePickerDialog.show()
    }

    // override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
    //     super.onActivityResult(requestCode, resultCode, data)
    //     if (requestCode == 1 && resultCode == Activity.RESULT_OK) {
    //         val selectedDate = data?.dataString // Получение выбранной даты
    //         Log.d("SelectedDate", selectedDate ?: "No date selected") // Вывод выбранной даты в логи

    //         this.result?.success(selectedDate)
    //     }
    // }
}

class MyFragmentActivity : FragmentActivity() {
    // Ваш код для FragmentActivity
}

class MyFragment : Fragment() {
    fun showDatePicker(fragmentManager: FragmentManager) {
        val builder = MaterialDatePicker.Builder.datePicker()
        val picker = builder.build()

        picker.addOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener {
            val selectedDate = picker.headerText // Получение выбранной даты
            // Передача выбранной даты обратно в Flutter
        })

        picker.show(fragmentManager, picker.toString())
    }
}
