package com.yandex.metrica.impl.ob;

import java.io.IOException;

public class go<T> implements gp<T> {

    /* renamed from: a  reason: collision with root package name */
    private final gp<T> f6065a;

    /* renamed from: b  reason: collision with root package name */
    private final nw f6066b;

    public go(gp<T> gpVar, nw nwVar) {
        this.f6065a = gpVar;
        this.f6066b = nwVar;
    }

    public byte[] a(T t) {
        try {
            return this.f6066b.a(this.f6065a.a(t));
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    public T b(byte[] bArr) throws IOException {
        try {
            return this.f6065a.b(this.f6066b.b(bArr));
        } catch (Exception e) {
            throw new IOException(e);
        }
    }

    public T b() {
        return this.f6065a.b();
    }
}
