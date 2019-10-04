package com.yandex.metrica.impl.ob;

import android.text.TextUtils;

public class ou implements pa<String> {

    /* renamed from: a  reason: collision with root package name */
    private final String f6489a;

    public ou(String str) {
        this.f6489a = str;
    }

    public oy a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return oy.a(this);
        }
        return oy.a(this, this.f6489a + " is empty.");
    }
}
