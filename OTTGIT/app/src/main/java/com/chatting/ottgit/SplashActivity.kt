package com.chatting.ottgit

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.colorResource
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.tooling.preview.Preview
import com.chatting.ottgit.ui.theme.OTTGITTheme

class SplashActivity : AppCompatActivity() {
    private val splashTimeOut: Long = 3000
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_splash)
        Handler(Looper.getMainLooper()).postDelayed({
            val intent = Intent(this, MainActivity::class.java)
            startActivity(intent)
            finish()
        }, 4500) // 시간 0.5초 이후 실행
        setContent {
            OTTGITTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = colorResource(id = R.color.splashBackground)
                ) {
                    showLogo()
                }
            }
        }
    }
}

@Composable
fun showLogo() {
    val image = painterResource(id = R.drawable.ott_git_logo)
    Image(painter = image, contentDescription = null)
}

@Preview(showBackground = true)
@Composable
fun SplashPreview() {
    OTTGITTheme {
        showLogo()
    }
}