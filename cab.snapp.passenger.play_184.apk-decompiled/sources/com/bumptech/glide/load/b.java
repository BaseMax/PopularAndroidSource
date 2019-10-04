package com.bumptech.glide.load;

import java.io.IOException;

public final class b extends IOException {
    public static final int UNKNOWN = -1;

    /* renamed from: a  reason: collision with root package name */
    private final int f2117a;

    public b(int i) {
        this("Http request failed with status code: ".concat(String.valueOf(i)), i);
    }

    public b(String str) {
        this(str, -1);
    }

    public b(String str, int i) {
        this(str, i, null);
    }

    public b(String str, int i, Throwable th) {
        super(str, th);
        this.f2117a = i;
    }

    public final int getStatusCode() {
        return this.f2117a;
    }
}
