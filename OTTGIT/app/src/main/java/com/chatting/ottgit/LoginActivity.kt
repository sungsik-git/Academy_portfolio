@file:OptIn(ExperimentalMaterial3Api::class)

package com.chatting.ottgit

import android.content.res.Resources.Theme
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.chatting.ottgit.ui.theme.OTTGITTheme

class LoginActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)

        setContent {
            OTTGITTheme {
                Surface(
                    modifier = Modifier
                ) {
                    StyledTextField()
                }
            }
        }
    }
}

@Composable
fun StyledTextField(modifier: Modifier = Modifier) {
    var value by remember { mutableStateOf("") }
    Column(
        modifier = Modifier
            .padding(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        OutlinedTextField(value = value, onValueChange = { value = it })

        TextField(
            value = value,
            onValueChange = { value = it },
            label = { Text("your ID") },
            maxLines = 1,
            textStyle = TextStyle(color = Color.Gray, fontWeight = FontWeight.Bold),
            modifier = Modifier.padding(20.dp)
        )

        TextField(
            value = value,
            onValueChange = { value = it },
            label = { Text(text = "your Password") },
            maxLines = 1,
            textStyle = TextStyle(color = Color.Gray, fontWeight = FontWeight.Bold),
            modifier = Modifier.padding(20.dp),
            visualTransformation = PasswordVisualTransformation(),
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password)
            )
    }
}

@Preview(showBackground = true)
@Composable
private fun showStyleTextField() {
    OTTGITTheme {
        StyledTextField()
    }
}