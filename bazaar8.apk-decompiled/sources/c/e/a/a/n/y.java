package c.e.a.a.n;

import android.net.Uri;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.Closeable;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* compiled from: ParsingLoadable */
public final class y<T> implements Loader.d {

    /* renamed from: a  reason: collision with root package name */
    public final l f9530a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9531b;

    /* renamed from: c  reason: collision with root package name */
    public final z f9532c;

    /* renamed from: d  reason: collision with root package name */
    public final a<? extends T> f9533d;

    /* renamed from: e  reason: collision with root package name */
    public volatile T f9534e;

    /* compiled from: ParsingLoadable */
    public interface a<T> {
        T a(Uri uri, InputStream inputStream);
    }

    public y(j jVar, Uri uri, int i2, a<? extends T> aVar) {
        this(jVar, new l(uri, 1), i2, aVar);
    }

    public final void a() {
        this.f9532c.e();
        k kVar = new k(this.f9532c, this.f9530a);
        try {
            kVar.t();
            Uri uri = this.f9532c.getUri();
            C0737e.a(uri);
            this.f9534e = this.f9533d.a(uri, kVar);
        } finally {
            I.a((Closeable) kVar);
        }
    }

    public final void b() {
    }

    public long c() {
        return this.f9532c.b();
    }

    public Map<String, List<String>> d() {
        return this.f9532c.d();
    }

    public final T e() {
        return this.f9534e;
    }

    public Uri f() {
        return this.f9532c.c();
    }

    public y(j jVar, l lVar, int i2, a<? extends T> aVar) {
        this.f9532c = new z(jVar);
        this.f9530a = lVar;
        this.f9531b = i2;
        this.f9533d = aVar;
    }
}
