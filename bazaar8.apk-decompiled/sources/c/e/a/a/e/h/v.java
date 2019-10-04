package c.e.a.a.e.h;

import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.m;
import c.e.a.a.e.q;
import com.crashlytics.android.answers.RetryManager;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.List;

/* compiled from: MpegAudioReader */
public final class v implements o {

    /* renamed from: a  reason: collision with root package name */
    public final c.e.a.a.o.v f8256a;

    /* renamed from: b  reason: collision with root package name */
    public final m f8257b;

    /* renamed from: c  reason: collision with root package name */
    public final String f8258c;

    /* renamed from: d  reason: collision with root package name */
    public String f8259d;

    /* renamed from: e  reason: collision with root package name */
    public q f8260e;

    /* renamed from: f  reason: collision with root package name */
    public int f8261f;

    /* renamed from: g  reason: collision with root package name */
    public int f8262g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8263h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f8264i;

    /* renamed from: j  reason: collision with root package name */
    public long f8265j;

    /* renamed from: k  reason: collision with root package name */
    public int f8266k;

    /* renamed from: l  reason: collision with root package name */
    public long f8267l;

    public v() {
        this(null);
    }

    public void a() {
        this.f8261f = 0;
        this.f8262g = 0;
        this.f8264i = false;
    }

    public void b() {
    }

    public final void b(c.e.a.a.o.v vVar) {
        byte[] bArr = vVar.f9634a;
        int d2 = vVar.d();
        for (int c2 = vVar.c(); c2 < d2; c2++) {
            boolean z = (bArr[c2] & 255) == 255;
            boolean z2 = this.f8264i && (bArr[c2] & 224) == 224;
            this.f8264i = z;
            if (z2) {
                vVar.e(c2 + 1);
                this.f8264i = false;
                this.f8256a.f9634a[1] = bArr[c2];
                this.f8262g = 2;
                this.f8261f = 1;
                return;
            }
        }
        vVar.e(d2);
    }

    public final void c(c.e.a.a.o.v vVar) {
        int min = Math.min(vVar.a(), this.f8266k - this.f8262g);
        this.f8260e.a(vVar, min);
        this.f8262g += min;
        int i2 = this.f8262g;
        int i3 = this.f8266k;
        if (i2 >= i3) {
            this.f8260e.a(this.f8267l, 1, i3, 0, null);
            this.f8267l += this.f8265j;
            this.f8262g = 0;
            this.f8261f = 0;
        }
    }

    public final void d(c.e.a.a.o.v vVar) {
        int min = Math.min(vVar.a(), 4 - this.f8262g);
        vVar.a(this.f8256a.f9634a, this.f8262g, min);
        this.f8262g += min;
        if (this.f8262g >= 4) {
            this.f8256a.e(0);
            if (!m.a(this.f8256a.i(), this.f8257b)) {
                this.f8262g = 0;
                this.f8261f = 1;
                return;
            }
            m mVar = this.f8257b;
            this.f8266k = mVar.f8317j;
            if (!this.f8263h) {
                long j2 = ((long) mVar.n) * RetryManager.NANOSECONDS_IN_MS;
                int i2 = mVar.f8318k;
                this.f8265j = j2 / ((long) i2);
                this.f8260e.a(Format.a(this.f8259d, mVar.f8316i, (String) null, -1, (int) CodedOutputStream.DEFAULT_BUFFER_SIZE, mVar.f8319l, i2, (List<byte[]>) null, (DrmInitData) null, 0, this.f8258c));
                this.f8263h = true;
            }
            this.f8256a.e(0);
            this.f8260e.a(this.f8256a, 4);
            this.f8261f = 2;
        }
    }

    public v(String str) {
        this.f8261f = 0;
        this.f8256a = new c.e.a.a.o.v(4);
        this.f8256a.f9634a[0] = -1;
        this.f8257b = new m();
        this.f8258c = str;
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8259d = dVar.b();
        this.f8260e = iVar.a(dVar.c(), 1);
    }

    public void a(long j2, int i2) {
        this.f8267l = j2;
    }

    public void a(c.e.a.a.o.v vVar) {
        while (vVar.a() > 0) {
            int i2 = this.f8261f;
            if (i2 == 0) {
                b(vVar);
            } else if (i2 == 1) {
                d(vVar);
            } else if (i2 == 2) {
                c(vVar);
            } else {
                throw new IllegalStateException();
            }
        }
    }
}
