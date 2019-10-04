package com.google.android.gms.common;

import android.content.Intent;

public class e extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f2903a;

    public e(String str, Intent intent) {
        super(str);
        this.f2903a = intent;
    }

    public Intent getIntent() {
        return new Intent(this.f2903a);
    }
}
