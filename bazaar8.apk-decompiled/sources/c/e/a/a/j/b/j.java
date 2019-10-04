package c.e.a.a.j.b;

import c.e.a.a.n.l;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;

/* compiled from: DataChunk */
public abstract class j extends d {

    /* renamed from: i  reason: collision with root package name */
    public byte[] f8502i;

    /* renamed from: j  reason: collision with root package name */
    public volatile boolean f8503j;

    public j(c.e.a.a.n.j jVar, l lVar, int i2, Format format, int i3, Object obj, byte[] bArr) {
        super(jVar, lVar, i2, format, i3, obj, -9223372036854775807L, -9223372036854775807L);
        this.f8502i = bArr;
    }

    public final void a() {
        try {
            this.f8466h.a(this.f8459a);
            int i2 = 0;
            int i3 = 0;
            while (i2 != -1 && !this.f8503j) {
                a(i3);
                i2 = this.f8466h.read(this.f8502i, i3, 16384);
                if (i2 != -1) {
                    i3 += i2;
                }
            }
            if (!this.f8503j) {
                a(this.f8502i, i3);
            }
        } finally {
            I.a((c.e.a.a.n.j) this.f8466h);
        }
    }

    public abstract void a(byte[] bArr, int i2);

    public final void b() {
        this.f8503j = true;
    }

    public byte[] g() {
        return this.f8502i;
    }

    public final void a(int i2) {
        byte[] bArr = this.f8502i;
        if (bArr == null) {
            this.f8502i = new byte[16384];
        } else if (bArr.length < i2 + 16384) {
            this.f8502i = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }
}
