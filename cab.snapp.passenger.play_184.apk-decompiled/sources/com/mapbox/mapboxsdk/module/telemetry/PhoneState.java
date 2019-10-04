package com.mapbox.mapboxsdk.module.telemetry;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.mapbox.android.telemetry.ak;

class PhoneState {
    private static final String NO_CARRIER = "EMPTY_CARRIER";
    private static final int NO_NETWORK = -1;
    private float accessibilityFontScale;
    private int batteryLevel;
    private String carrier;
    private String cellularNetworkType;
    private String created;
    private Orientation orientation;
    private boolean pluggedIn;
    private float resolution;
    private boolean wifi;

    enum Orientation {
        ORIENTATION_PORTRAIT("Portrait"),
        ORIENTATION_LANDSCAPE("Landscape");
        
        private String orientation;

        private Orientation(String str) {
            this.orientation = str;
        }

        public static Orientation getOrientation(int i) {
            if (1 == i) {
                return ORIENTATION_PORTRAIT;
            }
            return ORIENTATION_LANDSCAPE;
        }

        public final String getOrientation() {
            return this.orientation;
        }
    }

    PhoneState() {
    }

    PhoneState(Context context) {
        this.created = ak.obtainCurrentDate();
        this.batteryLevel = ak.obtainBatteryLevel(context);
        this.pluggedIn = ak.isPluggedIn(context);
        this.cellularNetworkType = ak.obtainCellularNetworkType(context);
        this.orientation = Orientation.getOrientation(context.getResources().getConfiguration().orientation);
        this.accessibilityFontScale = context.getResources().getConfiguration().fontScale;
        this.carrier = obtainCellularCarrier(context);
        this.resolution = obtainDisplayDensity(context);
        this.wifi = isConnectedToWifi(context);
    }

    private String obtainCellularCarrier(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return NO_CARRIER;
        }
        String networkOperatorName = telephonyManager.getNetworkOperatorName();
        if (TextUtils.isEmpty(networkOperatorName)) {
            return NO_CARRIER;
        }
        return networkOperatorName;
    }

    private float obtainDisplayDensity(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.density;
    }

    private boolean isConnectedToWifi(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager == null) {
                return false;
            }
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (wifiManager.isWifiEnabled() && connectionInfo.getNetworkId() != -1) {
                return true;
            }
            return false;
        } catch (Exception unused) {
        }
    }

    /* access modifiers changed from: package-private */
    public String getCreated() {
        return this.created;
    }

    /* access modifiers changed from: package-private */
    public void setCreated(String str) {
        this.created = str;
    }

    /* access modifiers changed from: package-private */
    public int getBatteryLevel() {
        return this.batteryLevel;
    }

    /* access modifiers changed from: package-private */
    public void setBatteryLevel(int i) {
        this.batteryLevel = i;
    }

    /* access modifiers changed from: package-private */
    public boolean isPluggedIn() {
        return this.pluggedIn;
    }

    /* access modifiers changed from: package-private */
    public void setPluggedIn(boolean z) {
        this.pluggedIn = z;
    }

    /* access modifiers changed from: package-private */
    public String getCellularNetworkType() {
        return this.cellularNetworkType;
    }

    /* access modifiers changed from: package-private */
    public void setCellularNetworkType(String str) {
        this.cellularNetworkType = str;
    }

    /* access modifiers changed from: package-private */
    public String getOrientation() {
        return this.orientation.getOrientation();
    }

    /* access modifiers changed from: package-private */
    public void setOrientation(Orientation orientation2) {
        this.orientation = orientation2;
    }

    /* access modifiers changed from: package-private */
    public String getCarrier() {
        return this.carrier;
    }

    /* access modifiers changed from: package-private */
    public void setCarrier(String str) {
        this.carrier = str;
    }

    /* access modifiers changed from: package-private */
    public boolean isWifi() {
        return this.wifi;
    }

    /* access modifiers changed from: package-private */
    public void setWifi(boolean z) {
        this.wifi = z;
    }

    /* access modifiers changed from: package-private */
    public float getAccessibilityFontScale() {
        return this.accessibilityFontScale;
    }

    /* access modifiers changed from: package-private */
    public void setAccessibilityFontScale(float f) {
        this.accessibilityFontScale = f;
    }

    /* access modifiers changed from: package-private */
    public float getResolution() {
        return this.resolution;
    }

    /* access modifiers changed from: package-private */
    public void setResolution(float f) {
        this.resolution = f;
    }
}
