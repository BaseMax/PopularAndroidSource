package c.e.a.a.e;

import c.e.a.a.n.j;
import c.e.a.a.o.I;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import java.io.EOFException;
import java.util.Arrays;

/* compiled from: DefaultExtractorInput */
public final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f7707a = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];

    /* renamed from: b  reason: collision with root package name */
    public final j f7708b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7709c;

    /* renamed from: d  reason: collision with root package name */
    public long f7710d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f7711e = new byte[LogFileManager.MAX_LOG_SIZE];

    /* renamed from: f  reason: collision with root package name */
    public int f7712f;

    /* renamed from: g  reason: collision with root package name */
    public int f7713g;

    public d(j jVar, long j2, long j3) {
        this.f7708b = jVar;
        this.f7710d = j2;
        this.f7709c = j3;
    }

    public boolean a(byte[] bArr, int i2, int i3, boolean z) {
        int b2 = b(bArr, i2, i3);
        while (b2 < i3 && b2 != -1) {
            b2 = a(bArr, i2, i3, b2, z);
        }
        d(b2);
        return b2 != -1;
    }

    public int b(int i2) {
        int f2 = f(i2);
        if (f2 == 0) {
            byte[] bArr = this.f7707a;
            f2 = a(bArr, 0, Math.min(i2, bArr.length), 0, true);
        }
        d(f2);
        return f2;
    }

    public void c(int i2) {
        b(i2, false);
    }

    public final void d(int i2) {
        if (i2 != -1) {
            this.f7710d += (long) i2;
        }
    }

    public final void e(int i2) {
        int i3 = this.f7712f + i2;
        byte[] bArr = this.f7711e;
        if (i3 > bArr.length) {
            this.f7711e = Arrays.copyOf(this.f7711e, I.a(bArr.length * 2, LogFileManager.MAX_LOG_SIZE + i3, i3 + 524288));
        }
    }

    public final int f(int i2) {
        int min = Math.min(this.f7713g, i2);
        g(min);
        return min;
    }

    public final void g(int i2) {
        this.f7713g -= i2;
        this.f7712f = 0;
        byte[] bArr = this.f7711e;
        int i3 = this.f7713g;
        if (i3 < bArr.length - 524288) {
            bArr = new byte[(i3 + LogFileManager.MAX_LOG_SIZE)];
        }
        System.arraycopy(this.f7711e, i2, bArr, 0, this.f7713g);
        this.f7711e = bArr;
    }

    public long getLength() {
        return this.f7709c;
    }

    public long getPosition() {
        return this.f7710d;
    }

    public int read(byte[] bArr, int i2, int i3) {
        int b2 = b(bArr, i2, i3);
        if (b2 == 0) {
            b2 = a(bArr, i2, i3, 0, true);
        }
        d(b2);
        return b2;
    }

    public void readFully(byte[] bArr, int i2, int i3) {
        a(bArr, i2, i3, false);
    }

    public void a(byte[] bArr, int i2, int i3) {
        b(bArr, i2, i3, false);
    }

    public boolean a(int i2, boolean z) {
        e(i2);
        int i3 = this.f7713g - this.f7712f;
        while (i3 < i2) {
            i3 = a(this.f7711e, this.f7712f, i2, i3, z);
            if (i3 == -1) {
                return false;
            }
            this.f7713g = this.f7712f + i3;
        }
        this.f7712f += i2;
        return true;
    }

    public boolean b(int i2, boolean z) {
        int f2 = f(i2);
        while (f2 < i2 && f2 != -1) {
            f2 = a(this.f7707a, -f2, Math.min(i2, this.f7707a.length + f2), f2, z);
        }
        d(f2);
        return f2 != -1;
    }

    public void a(int i2) {
        a(i2, false);
    }

    public boolean b(byte[] bArr, int i2, int i3, boolean z) {
        if (!a(i3, z)) {
            return false;
        }
        System.arraycopy(this.f7711e, this.f7712f - i3, bArr, i2, i3);
        return true;
    }

    public long a() {
        return this.f7710d + ((long) this.f7712f);
    }

    public final int a(byte[] bArr, int i2, int i3, int i4, boolean z) {
        if (!Thread.interrupted()) {
            int read = this.f7708b.read(bArr, i2 + i4, i3 - i4);
            if (read != -1) {
                return i4 + read;
            }
            if (i4 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    public void b() {
        this.f7712f = 0;
    }

    public final int b(byte[] bArr, int i2, int i3) {
        int i4 = this.f7713g;
        if (i4 == 0) {
            return 0;
        }
        int min = Math.min(i4, i3);
        System.arraycopy(this.f7711e, 0, bArr, i2, min);
        g(min);
        return min;
    }
}
