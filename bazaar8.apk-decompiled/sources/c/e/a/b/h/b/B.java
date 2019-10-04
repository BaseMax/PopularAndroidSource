package c.e.a.b.h.b;

import c.e.a.b.d.d.r;
import java.util.List;
import java.util.Map;

public final class B implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final A f10578a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10579b;

    /* renamed from: c  reason: collision with root package name */
    public final Throwable f10580c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f10581d;

    /* renamed from: e  reason: collision with root package name */
    public final String f10582e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<String, List<String>> f10583f;

    public B(String str, A a2, int i2, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        r.a(a2);
        this.f10578a = a2;
        this.f10579b = i2;
        this.f10580c = th;
        this.f10581d = bArr;
        this.f10582e = str;
        this.f10583f = map;
    }

    public final void run() {
        this.f10578a.a(this.f10582e, this.f10579b, this.f10580c, this.f10581d, this.f10583f);
    }
}
