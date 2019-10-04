package c.e.a.a.j;

import android.net.Uri;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.v;
import java.util.List;
import java.util.Map;

/* compiled from: IcyDataSource */
public final class t implements j {

    /* renamed from: a  reason: collision with root package name */
    public final j f8971a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8972b;

    /* renamed from: c  reason: collision with root package name */
    public final a f8973c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f8974d;

    /* renamed from: e  reason: collision with root package name */
    public int f8975e;

    /* compiled from: IcyDataSource */
    public interface a {
        void a(v vVar);
    }

    public t(j jVar, int i2, a aVar) {
        C0737e.a(i2 > 0);
        this.f8971a = jVar;
        this.f8972b = i2;
        this.f8973c = aVar;
        this.f8974d = new byte[1];
        this.f8975e = i2;
    }

    public void a(A a2) {
        this.f8971a.a(a2);
    }

    public final boolean b() {
        if (this.f8971a.read(this.f8974d, 0, 1) == -1) {
            return false;
        }
        int i2 = (this.f8974d[0] & 255) << 4;
        if (i2 == 0) {
            return true;
        }
        byte[] bArr = new byte[i2];
        int i3 = i2;
        int i4 = 0;
        while (i3 > 0) {
            int read = this.f8971a.read(bArr, i4, i3);
            if (read == -1) {
                return false;
            }
            i4 += read;
            i3 -= read;
        }
        while (i2 > 0 && bArr[i2 - 1] == 0) {
            i2--;
        }
        if (i2 > 0) {
            this.f8973c.a(new v(bArr, i2));
        }
        return true;
    }

    public void close() {
        throw new UnsupportedOperationException();
    }

    public Uri getUri() {
        return this.f8971a.getUri();
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (this.f8975e == 0) {
            if (!b()) {
                return -1;
            }
            this.f8975e = this.f8972b;
        }
        int read = this.f8971a.read(bArr, i2, Math.min(this.f8975e, i3));
        if (read != -1) {
            this.f8975e -= read;
        }
        return read;
    }

    public long a(l lVar) {
        throw new UnsupportedOperationException();
    }

    public Map<String, List<String>> a() {
        return this.f8971a.a();
    }
}
