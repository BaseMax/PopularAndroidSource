package c.e.a.a.m.a;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.E;
import c.e.a.a.o.n;
import c.e.a.a.p.a.a;
import c.e.a.a.p.a.c;
import c.e.a.a.p.a.d;
import c.e.a.a.p.a.e;
import c.e.a.a.p.o;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SceneRenderer */
public final class f implements o, a {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f9374a = new AtomicBoolean();

    /* renamed from: b  reason: collision with root package name */
    public final AtomicBoolean f9375b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    public final e f9376c = new e();

    /* renamed from: d  reason: collision with root package name */
    public final c f9377d = new c();

    /* renamed from: e  reason: collision with root package name */
    public final E<Long> f9378e = new E<>();

    /* renamed from: f  reason: collision with root package name */
    public final E<d> f9379f = new E<>();

    /* renamed from: g  reason: collision with root package name */
    public final float[] f9380g = new float[16];

    /* renamed from: h  reason: collision with root package name */
    public final float[] f9381h = new float[16];

    /* renamed from: i  reason: collision with root package name */
    public int f9382i;

    /* renamed from: j  reason: collision with root package name */
    public SurfaceTexture f9383j;

    /* renamed from: k  reason: collision with root package name */
    public volatile int f9384k = 0;

    /* renamed from: l  reason: collision with root package name */
    public int f9385l = -1;
    public byte[] m;

    public void a(int i2) {
        this.f9384k = i2;
    }

    public SurfaceTexture b() {
        GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        n.a();
        this.f9376c.a();
        n.a();
        this.f9382i = n.b();
        this.f9383j = new SurfaceTexture(this.f9382i);
        this.f9383j.setOnFrameAvailableListener(new a(this));
        return this.f9383j;
    }

    public /* synthetic */ void a(SurfaceTexture surfaceTexture) {
        this.f9374a.set(true);
    }

    public void a(float[] fArr, boolean z) {
        GLES20.glClear(16384);
        n.a();
        if (this.f9374a.compareAndSet(true, false)) {
            SurfaceTexture surfaceTexture = this.f9383j;
            C0737e.a(surfaceTexture);
            surfaceTexture.updateTexImage();
            n.a();
            if (this.f9375b.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f9380g, 0);
            }
            long timestamp = this.f9383j.getTimestamp();
            Long b2 = this.f9378e.b(timestamp);
            if (b2 != null) {
                this.f9377d.a(this.f9380g, b2.longValue());
            }
            d c2 = this.f9379f.c(timestamp);
            if (c2 != null) {
                this.f9376c.b(c2);
            }
        }
        Matrix.multiplyMM(this.f9381h, 0, fArr, 0, this.f9380g, 0);
        this.f9376c.a(this.f9382i, this.f9381h, z);
    }

    public void a(long j2, long j3, Format format) {
        this.f9378e.a(j3, Long.valueOf(j2));
        a(format.t, format.s, j3);
    }

    public void a(long j2, float[] fArr) {
        this.f9377d.a(j2, fArr);
    }

    public void a() {
        this.f9378e.a();
        this.f9377d.a();
        this.f9375b.set(true);
    }

    public final void a(byte[] bArr, int i2, long j2) {
        byte[] bArr2 = this.m;
        int i3 = this.f9385l;
        this.m = bArr;
        if (i2 == -1) {
            i2 = this.f9384k;
        }
        this.f9385l = i2;
        if (i3 != this.f9385l || !Arrays.equals(bArr2, this.m)) {
            d dVar = null;
            byte[] bArr3 = this.m;
            if (bArr3 != null) {
                dVar = e.a(bArr3, this.f9385l);
            }
            if (dVar == null || !e.a(dVar)) {
                dVar = d.a(this.f9385l);
            }
            this.f9379f.a(j2, dVar);
        }
    }
}
