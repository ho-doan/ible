package com.hodoan.ible

import android.util.Log
import android.util.SparseArray
import com.isens.standard.ble.IBLE_Callback
import com.isens.standard.ble.IBLE_Device
import com.isens.standard.ble.IBLE_Error
import com.isens.standard.ble.IBLE_GlucoseRecord

interface BleCallback {
    fun disconnected()
}

class BleClient {
    @Suppress("PropertyName")
    val TAG = BleClient::class.simpleName
    val callback: IBLE_Callback = object : IBLE_Callback {
        override fun CallbackInitSDK(version: Int) {
            Log.d(TAG, "CallbackInitSDK: $version")
        }

        override fun CallbackConnectedDevice() {
            Log.d(TAG, "CallbackConnectedDevice")
        }

        override fun CallbackDisconnectedDevice() {
            TODO("Not yet implemented")
        }

        override fun CallbackRequestTimeSync() {
            TODO("Not yet implemented")
        }

        override fun CallbackRequestRecordsComplete(p0: SparseArray<IBLE_GlucoseRecord>?) {
            TODO("Not yet implemented")
        }

        override fun CallbackReadDeviceInfo(p0: IBLE_Device?) {
            TODO("Not yet implemented")
        }

        override fun CallbackError(p0: IBLE_Error?) {
            TODO("Not yet implemented")
        }

    }
}