package com.mapbox.android.telemetry;

public final class ac {

    /* renamed from: a  reason: collision with root package name */
    final int f4944a;

    public ac(int i) {
        if (i <= 0 || i > 24) {
            throw new IllegalArgumentException("The interval passed in must be an an integer in the range of 1 to 24 hours.");
        }
        this.f4944a = i;
    }
}
