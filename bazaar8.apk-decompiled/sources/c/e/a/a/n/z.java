package c.e.a.a.n;

import android.net.Uri;
import c.e.a.a.o.C0737e;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: StatsDataSource */
public final class z implements j {

    /* renamed from: a  reason: collision with root package name */
    public final j f9535a;

    /* renamed from: b  reason: collision with root package name */
    public long f9536b;

    /* renamed from: c  reason: collision with root package name */
    public Uri f9537c = Uri.EMPTY;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, List<String>> f9538d = Collections.emptyMap();

    public z(j jVar) {
        C0737e.a(jVar);
        this.f9535a = jVar;
    }

    public void a(A a2) {
        this.f9535a.a(a2);
    }

    public long b() {
        return this.f9536b;
    }

    public Uri c() {
        return this.f9537c;
    }

    public void close() {
        this.f9535a.close();
    }

    public Map<String, List<String>> d() {
        return this.f9538d;
    }

    public void e() {
        this.f9536b = 0;
    }

    public Uri getUri() {
        return this.f9535a.getUri();
    }

    public int read(byte[] bArr, int i2, int i3) {
        int read = this.f9535a.read(bArr, i2, i3);
        if (read != -1) {
            this.f9536b += (long) read;
        }
        return read;
    }

    public long a(l lVar) {
        this.f9537c = lVar.f9466a;
        this.f9538d = Collections.emptyMap();
        long a2 = this.f9535a.a(lVar);
        Uri uri = getUri();
        C0737e.a(uri);
        this.f9537c = uri;
        this.f9538d = a();
        return a2;
    }

    public Map<String, List<String>> a() {
        return this.f9535a.a();
    }
}
