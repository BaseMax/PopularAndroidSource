package com.koushikdutta.async.http.a;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class k extends i {

    /* renamed from: a  reason: collision with root package name */
    String f4639a;

    public k(String str, String str2) {
        super(str, (long) str2.getBytes().length, null);
        this.f4639a = str2;
    }

    /* access modifiers changed from: protected */
    public final InputStream a() throws IOException {
        return new ByteArrayInputStream(this.f4639a.getBytes());
    }
}
