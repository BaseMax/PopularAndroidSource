package c.e.a.a.n;

import android.net.Uri;
import c.e.a.a.o.C0737e;
import java.util.Arrays;

/* compiled from: DataSpec */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f9466a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9467b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f9468c;
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f9469d;

    /* renamed from: e  reason: collision with root package name */
    public final long f9470e;

    /* renamed from: f  reason: collision with root package name */
    public final long f9471f;

    /* renamed from: g  reason: collision with root package name */
    public final long f9472g;

    /* renamed from: h  reason: collision with root package name */
    public final String f9473h;

    /* renamed from: i  reason: collision with root package name */
    public final int f9474i;

    public l(Uri uri) {
        this(uri, 0);
    }

    public final String a() {
        return a(this.f9467b);
    }

    public boolean b(int i2) {
        return (this.f9474i & i2) == i2;
    }

    public String toString() {
        return "DataSpec[" + a() + " " + this.f9466a + ", " + Arrays.toString(this.f9468c) + ", " + this.f9470e + ", " + this.f9471f + ", " + this.f9472g + ", " + this.f9473h + ", " + this.f9474i + "]";
    }

    public l(Uri uri, int i2) {
        this(uri, 0, -1, null, i2);
    }

    public static String a(int i2) {
        if (i2 == 1) {
            return "GET";
        }
        if (i2 == 2) {
            return "POST";
        }
        if (i2 == 3) {
            return "HEAD";
        }
        throw new AssertionError(i2);
    }

    public l(Uri uri, long j2, long j3, String str) {
        this(uri, j2, j2, j3, str, 0);
    }

    public l a(long j2) {
        long j3 = this.f9472g;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j3 - j2;
        }
        return a(j2, j4);
    }

    public l(Uri uri, long j2, long j3, String str, int i2) {
        this(uri, j2, j2, j3, str, i2);
    }

    public l a(long j2, long j3) {
        if (j2 == 0 && this.f9472g == j3) {
            return this;
        }
        l lVar = new l(this.f9466a, this.f9467b, this.f9468c, this.f9470e + j2, this.f9471f + j2, j3, this.f9473h, this.f9474i);
        return lVar;
    }

    public l(Uri uri, long j2, long j3, long j4, String str, int i2) {
        this(uri, null, j2, j3, j4, str, i2);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public l(Uri uri, byte[] bArr, long j2, long j3, long j4, String str, int i2) {
        this(uri, bArr != null ? 2 : 1, bArr, j2, j3, j4, str, i2);
    }

    public l(Uri uri, int i2, byte[] bArr, long j2, long j3, long j4, String str, int i3) {
        byte[] bArr2 = bArr;
        long j5 = j2;
        long j6 = j3;
        long j7 = j4;
        boolean z = true;
        C0737e.a(j5 >= 0);
        C0737e.a(j6 >= 0);
        if (j7 <= 0 && j7 != -1) {
            z = false;
        }
        C0737e.a(z);
        this.f9466a = uri;
        this.f9467b = i2;
        this.f9468c = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f9469d = this.f9468c;
        this.f9470e = j5;
        this.f9471f = j6;
        this.f9472g = j7;
        this.f9473h = str;
        this.f9474i = i3;
    }
}
