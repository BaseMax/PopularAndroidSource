package com.mapbox.mapboxsdk.module.telemetry;

import android.os.Build;
import com.mapbox.mapboxsdk.BuildConfig;

class MapLoadEvent extends MapBaseEvent {
    private static final String EVENT_NAME = "map.load";
    private final float accessibilityFontScale;
    private final int batteryLevel;
    private final String carrier;
    private final String cellularNetworkType;
    private final String model = Build.MODEL;
    private final String operatingSystem = ("Android - " + Build.VERSION.RELEASE);
    private final String orientation;
    private final boolean pluggedIn;
    private final float resolution;
    private final String sdkIdentifier = BuildConfig.MAPBOX_SDK_IDENTIFIER;
    private final String sdkVersion = BuildConfig.MAPBOX_SDK_VERSION;
    private final String userId;
    private final boolean wifi;

    /* access modifiers changed from: package-private */
    public String getEventName() {
        return EVENT_NAME;
    }

    /* access modifiers changed from: package-private */
    public String getSdkIdentifier() {
        return BuildConfig.MAPBOX_SDK_IDENTIFIER;
    }

    /* access modifiers changed from: package-private */
    public String getSdkVersion() {
        return BuildConfig.MAPBOX_SDK_VERSION;
    }

    MapLoadEvent(String str, PhoneState phoneState) {
        super(phoneState);
        this.userId = str;
        this.batteryLevel = phoneState.getBatteryLevel();
        this.pluggedIn = phoneState.isPluggedIn();
        this.cellularNetworkType = phoneState.getCellularNetworkType();
        this.carrier = phoneState.getCarrier();
        this.resolution = phoneState.getResolution();
        this.accessibilityFontScale = phoneState.getAccessibilityFontScale();
        this.wifi = phoneState.isWifi();
        this.orientation = phoneState.getOrientation();
    }

    /* access modifiers changed from: package-private */
    public String getOperatingSystem() {
        return this.operatingSystem;
    }

    /* access modifiers changed from: package-private */
    public String getModel() {
        return this.model;
    }

    /* access modifiers changed from: package-private */
    public String getUserId() {
        return this.userId;
    }

    /* access modifiers changed from: package-private */
    public String getCarrier() {
        return this.carrier;
    }

    /* access modifiers changed from: package-private */
    public String getCellularNetworkType() {
        return this.cellularNetworkType;
    }

    /* access modifiers changed from: package-private */
    public String getOrientation() {
        return this.orientation;
    }

    /* access modifiers changed from: package-private */
    public float getResolution() {
        return this.resolution;
    }

    /* access modifiers changed from: package-private */
    public float getAccessibilityFontScale() {
        return this.accessibilityFontScale;
    }

    /* access modifiers changed from: package-private */
    public int getBatteryLevel() {
        return this.batteryLevel;
    }

    /* access modifiers changed from: package-private */
    public boolean isPluggedIn() {
        return this.pluggedIn;
    }

    /* access modifiers changed from: package-private */
    public boolean isWifi() {
        return this.wifi;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MapLoadEvent mapLoadEvent = (MapLoadEvent) obj;
            if (Float.compare(mapLoadEvent.resolution, this.resolution) != 0 || Float.compare(mapLoadEvent.accessibilityFontScale, this.accessibilityFontScale) != 0 || this.batteryLevel != mapLoadEvent.batteryLevel || this.pluggedIn != mapLoadEvent.pluggedIn || this.wifi != mapLoadEvent.wifi || !this.operatingSystem.equals(mapLoadEvent.operatingSystem)) {
                return false;
            }
            String str = this.model;
            if (str == null ? mapLoadEvent.model != null : !str.equals(mapLoadEvent.model)) {
                return false;
            }
            String str2 = this.userId;
            if (str2 == null ? mapLoadEvent.userId != null : !str2.equals(mapLoadEvent.userId)) {
                return false;
            }
            String str3 = this.carrier;
            if (str3 == null ? mapLoadEvent.carrier != null : !str3.equals(mapLoadEvent.carrier)) {
                return false;
            }
            String str4 = this.cellularNetworkType;
            if (str4 == null ? mapLoadEvent.cellularNetworkType != null : !str4.equals(mapLoadEvent.cellularNetworkType)) {
                return false;
            }
            String str5 = this.orientation;
            String str6 = mapLoadEvent.orientation;
            if (str5 != null) {
                return str5.equals(str6);
            }
            if (str6 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.operatingSystem;
        int i = 0;
        int hashCode = (((((str != null ? str.hashCode() : 0) * 31) + BuildConfig.MAPBOX_SDK_IDENTIFIER.hashCode()) * 31) + BuildConfig.MAPBOX_SDK_VERSION.hashCode()) * 31;
        String str2 = this.model;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.userId;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.carrier;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.cellularNetworkType;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.orientation;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        float f = this.resolution;
        int floatToIntBits = (hashCode6 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
        float f2 = this.accessibilityFontScale;
        if (f2 != 0.0f) {
            i = Float.floatToIntBits(f2);
        }
        return ((((((floatToIntBits + i) * 31) + this.batteryLevel) * 31) + (this.pluggedIn ? 1 : 0)) * 31) + (this.wifi ? 1 : 0);
    }

    public String toString() {
        return "MapLoadEvent{, operatingSystem='" + this.operatingSystem + '\'' + ", sdkIdentifier='mapbox-maps-android', sdkVersion='8.3.0-beta.1', model='" + this.model + '\'' + ", userId='" + this.userId + '\'' + ", carrier='" + this.carrier + '\'' + ", cellularNetworkType='" + this.cellularNetworkType + '\'' + ", orientation='" + this.orientation + '\'' + ", resolution=" + this.resolution + ", accessibilityFontScale=" + this.accessibilityFontScale + ", batteryLevel=" + this.batteryLevel + ", pluggedIn=" + this.pluggedIn + ", wifi=" + this.wifi + '}';
    }
}
