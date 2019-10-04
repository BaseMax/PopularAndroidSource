package c.e.a.a.j.a;

import android.net.Uri;
import c.e.a.a.o.C0737e;
import java.util.Arrays;

/* compiled from: AdPlaybackState */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f8440a = new a(new long[0]);

    /* renamed from: b  reason: collision with root package name */
    public final int f8441b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f8442c;

    /* renamed from: d  reason: collision with root package name */
    public final C0109a[] f8443d;

    /* renamed from: e  reason: collision with root package name */
    public final long f8444e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8445f;

    /* renamed from: c.e.a.a.j.a.a$a  reason: collision with other inner class name */
    /* compiled from: AdPlaybackState */
    public static final class C0109a {

        /* renamed from: a  reason: collision with root package name */
        public final int f8446a;

        /* renamed from: b  reason: collision with root package name */
        public final Uri[] f8447b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f8448c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f8449d;

        public C0109a() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        public int a() {
            return a(-1);
        }

        public boolean b() {
            return this.f8446a == -1 || a() < this.f8446a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0109a.class != obj.getClass()) {
                return false;
            }
            C0109a aVar = (C0109a) obj;
            if (this.f8446a != aVar.f8446a || !Arrays.equals(this.f8447b, aVar.f8447b) || !Arrays.equals(this.f8448c, aVar.f8448c) || !Arrays.equals(this.f8449d, aVar.f8449d)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.f8446a * 31) + Arrays.hashCode(this.f8447b)) * 31) + Arrays.hashCode(this.f8448c)) * 31) + Arrays.hashCode(this.f8449d);
        }

        public C0109a(int i2, int[] iArr, Uri[] uriArr, long[] jArr) {
            C0737e.a(iArr.length == uriArr.length);
            this.f8446a = i2;
            this.f8448c = iArr;
            this.f8447b = uriArr;
            this.f8449d = jArr;
        }

        public int a(int i2) {
            int i3 = i2 + 1;
            while (true) {
                int[] iArr = this.f8448c;
                if (i3 >= iArr.length || iArr[i3] == 0 || iArr[i3] == 1) {
                    return i3;
                }
                i3++;
            }
            return i3;
        }
    }

    public a(long... jArr) {
        int length = jArr.length;
        this.f8441b = length;
        this.f8442c = Arrays.copyOf(jArr, length);
        this.f8443d = new C0109a[length];
        for (int i2 = 0; i2 < length; i2++) {
            this.f8443d[i2] = new C0109a();
        }
        this.f8444e = 0;
        this.f8445f = -9223372036854775807L;
    }

    public int a(long j2) {
        int length = this.f8442c.length - 1;
        while (length >= 0 && a(j2, length)) {
            length--;
        }
        if (length < 0 || !this.f8443d[length].b()) {
            return -1;
        }
        return length;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (!(this.f8441b == aVar.f8441b && this.f8444e == aVar.f8444e && this.f8445f == aVar.f8445f && Arrays.equals(this.f8442c, aVar.f8442c) && Arrays.equals(this.f8443d, aVar.f8443d))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((((this.f8441b * 31) + ((int) this.f8444e)) * 31) + ((int) this.f8445f)) * 31) + Arrays.hashCode(this.f8442c)) * 31) + Arrays.hashCode(this.f8443d);
    }

    public int a(long j2, long j3) {
        if (j2 == Long.MIN_VALUE || (j3 != -9223372036854775807L && j2 >= j3)) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            long[] jArr = this.f8442c;
            if (i2 < jArr.length && jArr[i2] != Long.MIN_VALUE && (j2 >= jArr[i2] || !this.f8443d[i2].b())) {
                i2++;
            }
        }
        if (i2 >= this.f8442c.length) {
            i2 = -1;
        }
        return i2;
    }

    public final boolean a(long j2, int i2) {
        if (j2 == Long.MIN_VALUE) {
            return false;
        }
        long j3 = this.f8442c[i2];
        boolean z = true;
        if (j3 == Long.MIN_VALUE) {
            long j4 = this.f8445f;
            if (j4 != -9223372036854775807L && j2 >= j4) {
                z = false;
            }
            return z;
        }
        if (j2 >= j3) {
            z = false;
        }
        return z;
    }
}
