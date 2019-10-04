package com.webengage.sdk.android.actions.database;

import androidx.exifinterface.media.ExifInterface;

public enum f {
    PAGE,
    EVENT,
    LATEST_EVENT,
    USER,
    ANDROID,
    WEB,
    IOS,
    EVENT_CRITERIA,
    JOURNEY,
    ATTR,
    SCOPES;

    public static f a(String str) {
        try {
            return valueOf(str.toUpperCase());
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean a() {
        return equals(USER) || equals(ANDROID) || equals(WEB) || equals(IOS) || equals(EVENT_CRITERIA) || equals(ATTR) || equals(JOURNEY) || equals(SCOPES);
    }

    public final boolean b() {
        return equals(USER) || equals(ANDROID) || equals(WEB) || equals(IOS) || equals(EVENT_CRITERIA) || equals(ATTR) || equals(SCOPES);
    }

    public final boolean c() {
        return equals(EVENT_CRITERIA) || equals(JOURNEY) || equals(SCOPES);
    }

    public final String d() {
        if (equals(WEB)) {
            return "1";
        }
        if (equals(ANDROID)) {
            return ExifInterface.GPS_MEASUREMENT_2D;
        }
        if (equals(IOS)) {
            return ExifInterface.GPS_MEASUREMENT_3D;
        }
        return null;
    }

    public final String toString() {
        return name().toLowerCase();
    }
}
