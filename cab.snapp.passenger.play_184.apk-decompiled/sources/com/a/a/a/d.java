package com.a.a.a;

import com.a.a.a.d;
import io.fabric.sdk.android.c;

public abstract class d<T extends d> {
    public static final int MAX_NUM_ATTRIBUTES = 20;
    public static final int MAX_STRING_LENGTH = 100;

    /* renamed from: b  reason: collision with root package name */
    final e f1670b = new e(20, 100, c.isDebuggable());
    final c c = new c(this.f1670b);

    public T putCustomAttribute(String str, String str2) {
        this.c.a(str, str2);
        return this;
    }

    public T putCustomAttribute(String str, Number number) {
        this.c.a(str, number);
        return this;
    }
}
