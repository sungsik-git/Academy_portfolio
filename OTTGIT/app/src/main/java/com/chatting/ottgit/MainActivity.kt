package com.chatting.ottgit

import android.os.Bundle
import android.os.Message
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.chatting.ottgit.ui.theme.OTTGITTheme
import kotlin.math.log

val fontFamily = FontFamily(
    Font(R.font.pretendardthin, FontWeight.W100),
    Font(R.font.pretendardextralight, FontWeight.W200),
    Font(R.font.pretendardlight, FontWeight.W300),
    Font(R.font.pretendardregular, FontWeight.W400),
    Font(R.font.pretendardmedium, FontWeight.W500),
    Font(R.font.pretendardsemibold, FontWeight.W600),
    Font(R.font.pretendardbold, FontWeight.W700),
    Font(R.font.pretendardextrabold, FontWeight.W800),
    Font(R.font.pretendardblack, FontWeight.W900),
)

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            OTTGITTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    printText("WELCOME", "OTT-GIT", fontFamily = fontFamily)
                }
            }
        }
    }
}

@Composable
fun printText(message: String, logo: String, fontFamily: FontFamily,modifier: Modifier = Modifier) {
    Column(
        verticalArrangement = Arrangement.Center,
        modifier = modifier.padding(8.dp)
    ) {
        Text(
            text = message,
            color = Color.Gray,
            fontSize = 50.sp,
            textAlign = TextAlign.Left,
            modifier = Modifier
                .fillMaxWidth()
                .padding(start = 32.dp),
            fontFamily = fontFamily,
            fontWeight = FontWeight.W400
        )
        Text(
            text = logo,
            color = Color.Blue,
            fontSize = 80.sp,
            lineHeight = 116.sp,
            textAlign = TextAlign.Center,
            modifier = Modifier.fillMaxWidth(),
            fontFamily = fontFamily,
            fontWeight = FontWeight.W800
        )
    }
}


@Preview(showBackground = true)
@Composable
fun GreetingPreview() {
    OTTGITTheme {
        printText("WELCOME", "OTT-GIT", fontFamily = fontFamily)
    }
}