package com.yandex.metrica.impl.ob;

import java.io.IOException;

public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    protected volatile int f5940a = -1;

    public abstract e a(a aVar) throws IOException;

    public void a(b bVar) throws IOException {
    }

    /* access modifiers changed from: protected */
    public int c() {
        return 0;
    }

    public int a() {
        if (this.f5940a < 0) {
            b();
        }
        return this.f5940a;
    }

    public int b() {
        int c = c();
        this.f5940a = c;
        return c;
    }

    public static final byte[] a(e eVar) {
        byte[] bArr = new byte[eVar.b()];
        try {
            b a2 = b.a(bArr, 0, bArr.length);
            eVar.a(a2);
            a2.b();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e);
        }
    }

    public static final <T extends e> T a(T t, byte[] bArr) throws d {
        return a(t, bArr, 0, bArr.length);
    }

    public static final <T extends e> T a(T t, byte[] bArr, int i, int i2) throws d {
        try {
            a a2 = a.a(bArr, i, i2);
            t.a(a2);
            a2.a(0);
            return t;
        } catch (d e) {
            throw e;
        } catch (IOException unused) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
        }
    }

    public String toString() {
        return f.a(this);
    }
}
