package com.bumptech.glide.b;

import android.util.Log;
import androidx.appcompat.widget.ActivityChooserView;
import com.pusher.java_websocket.drafts.c;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1993a = new byte[256];

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer f1994b;
    private c c;
    private int d = 0;

    public final d setData(byte[] bArr) {
        if (bArr != null) {
            setData(ByteBuffer.wrap(bArr));
        } else {
            this.f1994b = null;
            this.c.f1992b = 2;
        }
        return this;
    }

    public final void clear() {
        this.f1994b = null;
        this.c = null;
    }

    public final c parseHeader() {
        if (this.f1994b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (j()) {
            return this.c;
        } else {
            d();
            if (!j()) {
                a(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                if (this.c.c < 0) {
                    this.c.f1992b = 1;
                }
            }
            return this.c;
        }
    }

    public final boolean isAnimated() {
        d();
        if (!j()) {
            a(2);
        }
        return this.c.c > 1;
    }

    private void a(int i) {
        boolean z = false;
        while (!z && !j() && this.c.c <= i) {
            int i2 = i();
            if (i2 == 33) {
                int i3 = i();
                if (i3 == 1) {
                    g();
                } else if (i3 == 249) {
                    this.c.d = new b();
                    a();
                } else if (i3 == 254) {
                    g();
                } else if (i3 != 255) {
                    g();
                } else {
                    h();
                    StringBuilder sb = new StringBuilder();
                    for (int i4 = 0; i4 < 11; i4++) {
                        sb.append((char) this.f1993a[i4]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        c();
                    } else {
                        g();
                    }
                }
            } else if (i2 == 44) {
                if (this.c.d == null) {
                    this.c.d = new b();
                }
                b();
            } else if (i2 != 59) {
                this.c.f1992b = 1;
            } else {
                z = true;
            }
        }
    }

    private void a() {
        i();
        int i = i();
        this.c.d.g = (i & 28) >> 2;
        boolean z = true;
        if (this.c.d.g == 0) {
            this.c.d.g = 1;
        }
        b bVar = this.c.d;
        if ((i & 1) == 0) {
            z = false;
        }
        bVar.f = z;
        short s = this.f1994b.getShort();
        if (s < 2) {
            s = 10;
        }
        this.c.d.i = s * 10;
        this.c.d.h = i();
        i();
    }

    private void b() {
        this.c.d.f1989a = this.f1994b.getShort();
        this.c.d.f1990b = this.f1994b.getShort();
        this.c.d.c = this.f1994b.getShort();
        this.c.d.d = this.f1994b.getShort();
        int i = i();
        boolean z = false;
        boolean z2 = (i & 128) != 0;
        int pow = (int) Math.pow(2.0d, (double) ((i & 7) + 1));
        b bVar = this.c.d;
        if ((i & 64) != 0) {
            z = true;
        }
        bVar.e = z;
        if (z2) {
            this.c.d.k = b(pow);
        } else {
            this.c.d.k = null;
        }
        this.c.d.j = this.f1994b.position();
        f();
        if (!j()) {
            this.c.c++;
            this.c.e.add(this.c.d);
        }
    }

    private void c() {
        do {
            h();
            byte[] bArr = this.f1993a;
            if (bArr[0] == 1) {
                this.c.m = ((bArr[2] & c.END_OF_FRAME) << 8) | (bArr[1] & c.END_OF_FRAME);
            }
            if (this.d <= 0) {
                return;
            }
        } while (!j());
    }

    private void d() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) i());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.c.f1992b = 1;
            return;
        }
        e();
        if (this.c.h && !j()) {
            c cVar = this.c;
            cVar.f1991a = b(cVar.i);
            c cVar2 = this.c;
            cVar2.l = cVar2.f1991a[this.c.j];
        }
    }

    private void e() {
        this.c.f = this.f1994b.getShort();
        this.c.g = this.f1994b.getShort();
        int i = i();
        this.c.h = (i & 128) != 0;
        this.c.i = (int) Math.pow(2.0d, (double) ((i & 7) + 1));
        this.c.j = i();
        this.c.k = i();
    }

    private int[] b(int i) {
        int[] iArr;
        byte[] bArr = new byte[(i * 3)];
        try {
            this.f1994b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                try {
                    int i5 = i4 + 1;
                    int i6 = i5 + 1;
                    int i7 = i2 + 1;
                    iArr[i2] = ((bArr[i3] & c.END_OF_FRAME) << 16) | -16777216 | ((bArr[i4] & c.END_OF_FRAME) << 8) | (bArr[i5] & c.END_OF_FRAME);
                    i3 = i6;
                    i2 = i7;
                } catch (BufferUnderflowException unused) {
                    this.c.f1992b = 1;
                    return iArr;
                }
            }
        } catch (BufferUnderflowException unused2) {
            iArr = null;
            this.c.f1992b = 1;
            return iArr;
        }
        return iArr;
    }

    private void f() {
        i();
        g();
    }

    private void g() {
        int i;
        do {
            i = i();
            this.f1994b.position(Math.min(this.f1994b.position() + i, this.f1994b.limit()));
        } while (i > 0);
    }

    private void h() {
        this.d = i();
        if (this.d > 0) {
            int i = 0;
            int i2 = 0;
            while (i < this.d) {
                try {
                    i2 = this.d - i;
                    this.f1994b.get(this.f1993a, i, i2);
                    i += i2;
                } catch (Exception unused) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        StringBuilder sb = new StringBuilder("Error Reading Block n: ");
                        sb.append(i);
                        sb.append(" count: ");
                        sb.append(i2);
                        sb.append(" blockSize: ");
                        sb.append(this.d);
                    }
                    this.c.f1992b = 1;
                }
            }
        }
    }

    private int i() {
        try {
            return this.f1994b.get() & c.END_OF_FRAME;
        } catch (Exception unused) {
            this.c.f1992b = 1;
            return 0;
        }
    }

    private boolean j() {
        return this.c.f1992b != 0;
    }

    public final d setData(ByteBuffer byteBuffer) {
        this.f1994b = null;
        Arrays.fill(this.f1993a, (byte) 0);
        this.c = new c();
        this.d = 0;
        this.f1994b = byteBuffer.asReadOnlyBuffer();
        this.f1994b.position(0);
        this.f1994b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
