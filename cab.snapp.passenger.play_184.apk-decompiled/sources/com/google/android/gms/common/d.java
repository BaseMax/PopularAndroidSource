package com.google.android.gms.common;

import android.content.Intent;

public final class d extends e {

    /* renamed from: a  reason: collision with root package name */
    private final int f2896a;

    public d(int i, String str, Intent intent) {
        super(str, intent);
        this.f2896a = i;
    }

    public final int getConnectionStatusCode() {
        return this.f2896a;
    }
}
