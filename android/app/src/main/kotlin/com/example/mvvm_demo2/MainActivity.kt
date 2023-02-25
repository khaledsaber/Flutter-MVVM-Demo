package com.example.mvvm_demo2

import android.media.MediaPlayer
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {

    private val channel = "myNativeChannel";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channel
        ).setMethodCallHandler { call, result ->
            if (call.method == "playMusic") {

                val player =
                    MediaPlayer.create(this, Settings.System.DEFAULT_RINGTONE_URI) as MediaPlayer;
            player.setLooping(true);
            player.start();
            } else {
                result.notImplemented();
            }
        }
    }

}
