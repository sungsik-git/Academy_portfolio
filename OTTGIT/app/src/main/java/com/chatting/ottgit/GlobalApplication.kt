package com.chatting.ottgit

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.kakao.sdk.common.KakaoSdk

class GlobalApplication : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_global_application)
        KakaoSdk.init(this, "f56e2c574634afc8adbee6d19c2fd4c8")
    }
}