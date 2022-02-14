package com.khuongnb.device

import android.util.DisplayMetrics
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule

class RNExactRatioModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {
    private val context = reactContext

    override fun getName() = "RNExactRatioModule"

    private fun getPixelRatio(): Float {
        return getDeviceDpi() / DisplayMetrics.DENSITY_DEFAULT
    }

    private fun getDeviceDpi(): Float {
        val displayMetrics = context.resources.displayMetrics
        return (displayMetrics.xdpi + displayMetrics.ydpi) / 2
    }

    override fun getConstants(): MutableMap<String, Any> {
        val pixelRatio = getPixelRatio()
        val deviceDpi = getDeviceDpi()
        return hashMapOf("density" to pixelRatio, "dpi" to deviceDpi)
    }
}
