package c.b.a.c.a;

import c.b.a.c.b.a.b;
import com.crashlytics.android.core.LogFileManager;
import java.io.OutputStream;

/* compiled from: BufferedOutputStream */
public final class c extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    public final OutputStream f3782a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f3783b;

    /* renamed from: c  reason: collision with root package name */
    public b f3784c;

    /* renamed from: d  reason: collision with root package name */
    public int f3785d;

    public c(OutputStream outputStream, b bVar) {
        this(outputStream, bVar, LogFileManager.MAX_LOG_SIZE);
    }

    /* JADX INFO: finally extract failed */
    public void close() {
        try {
            flush();
            this.f3782a.close();
            u();
        } catch (Throwable th) {
            this.f3782a.close();
            throw th;
        }
    }

    public void flush() {
        s();
        this.f3782a.flush();
    }

    public final void s() {
        int i2 = this.f3785d;
        if (i2 > 0) {
            this.f3782a.write(this.f3783b, 0, i2);
            this.f3785d = 0;
        }
    }

    public final void t() {
        if (this.f3785d == this.f3783b.length) {
            s();
        }
    }

    public final void u() {
        byte[] bArr = this.f3783b;
        if (bArr != null) {
            this.f3784c.put(bArr);
            this.f3783b = null;
        }
    }

    public void write(int i2) {
        byte[] bArr = this.f3783b;
        int i3 = this.f3785d;
        this.f3785d = i3 + 1;
        bArr[i3] = (byte) i2;
        t();
    }

    public c(OutputStream outputStream, b bVar, int i2) {
        this.f3782a = outputStream;
        this.f3784c = bVar;
        this.f3783b = (byte[]) bVar.b(i2, byte[].class);
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        do {
            int i5 = i3 - i4;
            int i6 = i2 + i4;
            if (this.f3785d != 0 || i5 < this.f3783b.length) {
                int min = Math.min(i5, this.f3783b.length - this.f3785d);
                System.arraycopy(bArr, i6, this.f3783b, this.f3785d, min);
                this.f3785d += min;
                i4 += min;
                t();
            } else {
                this.f3782a.write(bArr, i6, i5);
                return;
            }
        } while (i4 < i3);
    }
}
