package com.google.android.exoplayer2.mediacodec;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import c.e.a.a.C0743p;
import c.e.a.a.C0744q;
import c.e.a.a.E;
import c.e.a.a.c.e;
import c.e.a.a.c.f;
import c.e.a.a.d.l;
import c.e.a.a.d.p;
import c.e.a.a.f.a;
import c.e.a.a.f.c;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.G;
import c.e.a.a.o.I;
import c.e.a.a.o.t;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class MediaCodecRenderer extends C0743p {

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f12577j = I.a("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    public boolean A;
    public long B = -9223372036854775807L;
    public float C = 1.0f;
    public MediaCodec D;
    public Format E;
    public float F = -1.0f;
    public ArrayDeque<a> G;
    public DecoderInitializationException H;
    public a I;
    public int J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public ByteBuffer[] T;
    public ByteBuffer[] U;
    public long V;
    public int W;
    public int X;
    public ByteBuffer Y;
    public boolean Z;
    public boolean aa;
    public int ba = 0;
    public int ca = 0;
    public int da = 0;
    public boolean ea;
    public boolean fa;
    public boolean ga;
    public boolean ha;
    public boolean ia;
    public boolean ja;

    /* renamed from: k  reason: collision with root package name */
    public final c f12578k;
    public boolean ka;

    /* renamed from: l  reason: collision with root package name */
    public final l<p> f12579l;
    public e la;
    public final boolean m;
    public final boolean n;
    public final float o;
    public final f p = new f(0);
    public final f q = f.n();
    public final E r = new E();
    public final c.e.a.a.o.E<Format> s = new c.e.a.a.o.E<>();
    public final ArrayList<Long> t = new ArrayList<>();
    public final MediaCodec.BufferInfo u = new MediaCodec.BufferInfo();
    public Format v;
    public Format w;
    public DrmSession<p> x;
    public DrmSession<p> y;
    public MediaCrypto z;

    public static class DecoderInitializationException extends Exception {
        public final String decoderName;
        public final String diagnosticInfo;
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i2) {
            this("Decoder init failed: [" + i2 + "], " + format, th, format.f12514i, z, null, a(i2), null);
        }

        public final DecoderInitializationException a(DecoderInitializationException decoderInitializationException) {
            DecoderInitializationException decoderInitializationException2 = new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.decoderName, this.diagnosticInfo, decoderInitializationException);
            return decoderInitializationException2;
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public DecoderInitializationException(Format format, Throwable th, boolean z, String str) {
            this("Decoder init failed: " + str + ", " + format, th, format.f12514i, z, str, I.f9565a >= 21 ? a(th) : null, null);
        }

        @TargetApi(21)
        public static String a(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        public DecoderInitializationException(String str, Throwable th, String str2, boolean z, String str3, String str4, DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.decoderName = str3;
            this.diagnosticInfo = str4;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        public static String a(int i2) {
            String str = i2 < 0 ? "neg_" : "";
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + str + Math.abs(i2);
        }
    }

    public MediaCodecRenderer(int i2, c cVar, l<p> lVar, boolean z2, boolean z3, float f2) {
        super(i2);
        C0737e.a(cVar);
        this.f12578k = cVar;
        this.f12579l = lVar;
        this.m = z2;
        this.n = z3;
        this.o = f2;
    }

    public final void A() {
        if (I.f9565a < 23) {
            z();
            return;
        }
        if (this.ea) {
            this.ca = 1;
            this.da = 2;
        } else {
            U();
        }
    }

    public final boolean B() {
        int i2;
        int i3;
        MediaCodec mediaCodec = this.D;
        if (mediaCodec == null || this.ca == 2 || this.ga) {
            return false;
        }
        if (this.W < 0) {
            this.W = mediaCodec.dequeueInputBuffer(0);
            int i4 = this.W;
            if (i4 < 0) {
                return false;
            }
            this.p.f7545c = a(i4);
            this.p.g();
        }
        if (this.ca == 1) {
            if (!this.S) {
                this.fa = true;
                this.D.queueInputBuffer(this.W, 0, 0, 0, 4);
                R();
            }
            this.ca = 2;
            return false;
        } else if (this.Q) {
            this.Q = false;
            this.p.f7545c.put(f12577j);
            this.D.queueInputBuffer(this.W, 0, f12577j.length, 0, 0);
            R();
            this.ea = true;
            return true;
        } else {
            if (this.ia) {
                i3 = -4;
                i2 = 0;
            } else {
                if (this.ba == 1) {
                    for (int i5 = 0; i5 < this.E.f12516k.size(); i5++) {
                        this.p.f7545c.put(this.E.f12516k.get(i5));
                    }
                    this.ba = 2;
                }
                i2 = this.p.f7545c.position();
                i3 = a(this.r, this.p, false);
            }
            if (i3 == -3) {
                return false;
            }
            if (i3 == -5) {
                if (this.ba == 2) {
                    this.p.g();
                    this.ba = 1;
                }
                b(this.r.f7255a);
                return true;
            } else if (this.p.i()) {
                if (this.ba == 2) {
                    this.p.g();
                    this.ba = 1;
                }
                this.ga = true;
                if (!this.ea) {
                    K();
                    return false;
                }
                try {
                    if (!this.S) {
                        this.fa = true;
                        this.D.queueInputBuffer(this.W, 0, 0, 0, 4);
                        R();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e2) {
                    throw ExoPlaybackException.a(e2, q());
                }
            } else if (!this.ja || this.p.j()) {
                this.ja = false;
                boolean l2 = this.p.l();
                this.ia = d(l2);
                if (this.ia) {
                    return false;
                }
                if (this.L && !l2) {
                    t.a(this.p.f7545c);
                    if (this.p.f7545c.position() == 0) {
                        return true;
                    }
                    this.L = false;
                }
                try {
                    long j2 = this.p.f7546d;
                    if (this.p.h()) {
                        this.t.add(Long.valueOf(j2));
                    }
                    if (this.ka) {
                        this.s.a(j2, this.v);
                        this.ka = false;
                    }
                    this.p.k();
                    a(this.p);
                    if (l2) {
                        this.D.queueSecureInputBuffer(this.W, 0, a(this.p, i2), j2, 0);
                    } else {
                        this.D.queueInputBuffer(this.W, 0, this.p.f7545c.limit(), j2, 0);
                    }
                    R();
                    this.ea = true;
                    this.ba = 0;
                    this.la.f7537c++;
                    return true;
                } catch (MediaCodec.CryptoException e3) {
                    throw ExoPlaybackException.a(e3, q());
                }
            } else {
                this.p.g();
                if (this.ba == 2) {
                    this.ba = 1;
                }
                return true;
            }
        }
    }

    public final boolean C() {
        boolean D2 = D();
        if (D2) {
            J();
        }
        return D2;
    }

    public boolean D() {
        if (this.D == null) {
            return false;
        }
        if (this.da == 3 || this.M || (this.N && this.fa)) {
            O();
            return true;
        }
        this.D.flush();
        R();
        S();
        this.V = -9223372036854775807L;
        this.fa = false;
        this.ea = false;
        this.ja = true;
        this.Q = false;
        this.R = false;
        this.Z = false;
        this.ia = false;
        this.t.clear();
        this.ca = 0;
        this.da = 0;
        this.ba = this.aa ? 1 : 0;
        return false;
    }

    public final MediaCodec E() {
        return this.D;
    }

    public final a F() {
        return this.I;
    }

    public boolean G() {
        return false;
    }

    public long H() {
        return 0;
    }

    public final boolean I() {
        return this.X >= 0;
    }

    public final void J() {
        if (this.D == null && this.v != null) {
            b(this.y);
            String str = this.v.f12514i;
            DrmSession<p> drmSession = this.x;
            if (drmSession != null) {
                if (this.z == null) {
                    p b2 = drmSession.b();
                    if (b2 != null) {
                        try {
                            this.z = new MediaCrypto(b2.f7585a, b2.f7586b);
                            this.A = !b2.f7587c && this.z.requiresSecureDecoderComponent(str);
                        } catch (MediaCryptoException e2) {
                            throw ExoPlaybackException.a(e2, q());
                        }
                    } else if (this.x.c() == null) {
                        return;
                    }
                }
                if (x()) {
                    int state = this.x.getState();
                    if (state == 1) {
                        throw ExoPlaybackException.a(this.x.c(), q());
                    } else if (state != 4) {
                        return;
                    }
                }
            }
            try {
                a(this.z, this.A);
            } catch (DecoderInitializationException e3) {
                throw ExoPlaybackException.a(e3, q());
            }
        }
    }

    public final void K() {
        int i2 = this.da;
        if (i2 == 1) {
            C();
        } else if (i2 == 2) {
            U();
        } else if (i2 != 3) {
            this.ha = true;
            P();
        } else {
            N();
        }
    }

    public final void L() {
        if (I.f9565a < 21) {
            this.U = this.D.getOutputBuffers();
        }
    }

    public final void M() {
        MediaFormat outputFormat = this.D.getOutputFormat();
        if (this.J != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.R = true;
            return;
        }
        if (this.P) {
            outputFormat.setInteger("channel-count", 1);
        }
        a(this.D, outputFormat);
    }

    public final void N() {
        O();
        J();
    }

    public void O() {
        this.G = null;
        this.I = null;
        this.E = null;
        R();
        S();
        Q();
        this.ia = false;
        this.V = -9223372036854775807L;
        this.t.clear();
        try {
            if (this.D != null) {
                this.la.f7536b++;
                this.D.stop();
                this.D.release();
            }
            this.D = null;
            try {
                if (this.z != null) {
                    this.z.release();
                }
            } finally {
                this.z = null;
                this.A = false;
                b((DrmSession<p>) null);
            }
        } catch (Throwable th) {
            this.D = null;
            try {
                if (this.z != null) {
                    this.z.release();
                }
                throw th;
            } finally {
                this.z = null;
                this.A = false;
                b((DrmSession<p>) null);
            }
        }
    }

    public void P() {
    }

    public final void Q() {
        if (I.f9565a < 21) {
            this.T = null;
            this.U = null;
        }
    }

    public final void R() {
        this.W = -1;
        this.p.f7545c = null;
    }

    public final void S() {
        this.X = -1;
        this.Y = null;
    }

    public final void T() {
        if (I.f9565a >= 23) {
            float a2 = a(this.C, this.E, r());
            float f2 = this.F;
            if (f2 != a2) {
                if (a2 == -1.0f) {
                    z();
                } else if (f2 != -1.0f || a2 > this.o) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", a2);
                    this.D.setParameters(bundle);
                    this.F = a2;
                }
            }
        }
    }

    @TargetApi(23)
    public final void U() {
        p b2 = this.y.b();
        if (b2 == null) {
            N();
        } else if (C0744q.f9732e.equals(b2.f7585a)) {
            N();
        } else if (!C()) {
            try {
                this.z.setMediaDrmSession(b2.f7586b);
                b(this.y);
                this.ca = 0;
                this.da = 0;
            } catch (MediaCryptoException e2) {
                throw ExoPlaybackException.a(e2, q());
            }
        }
    }

    public abstract float a(float f2, Format format, Format[] formatArr);

    public abstract int a(MediaCodec mediaCodec, a aVar, Format format, Format format2);

    public abstract int a(c cVar, l<p> lVar, Format format);

    public final int a(Format format) {
        try {
            return a(this.f12578k, this.f12579l, format);
        } catch (MediaCodecUtil.DecoderQueryException e2) {
            throw ExoPlaybackException.a(e2, q());
        }
    }

    public abstract List<a> a(c cVar, Format format, boolean z2);

    public abstract void a(MediaCodec mediaCodec, MediaFormat mediaFormat);

    public abstract void a(f fVar);

    public abstract void a(a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f2);

    public abstract void a(String str, long j2, long j3);

    public abstract boolean a(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z2, Format format);

    public final List<a> b(boolean z2) {
        List<a> a2 = a(this.f12578k, this.v, z2);
        if (a2.isEmpty() && z2) {
            a2 = a(this.f12578k, this.v, false);
            if (!a2.isEmpty()) {
                c.e.a.a.o.p.d("MediaCodecRenderer", "Drm session requires secure decoder for " + this.v.f12514i + ", but no secure decoder available. Trying to proceed with " + a2 + ".");
            }
        }
        return a2;
    }

    public boolean b(a aVar) {
        return true;
    }

    public abstract void c(long j2);

    public final boolean c(boolean z2) {
        this.q.g();
        int a2 = a(this.r, this.q, z2);
        if (a2 == -5) {
            b(this.r.f7255a);
            return true;
        }
        if (a2 == -4 && this.q.i()) {
            this.ga = true;
            K();
        }
        return false;
    }

    public final boolean d(long j2) {
        return this.B == -9223372036854775807L || SystemClock.elapsedRealtime() - j2 < this.B;
    }

    public final boolean e(long j2) {
        int size = this.t.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.t.get(i2).longValue() == j2) {
                this.t.remove(i2);
                return true;
            }
        }
        return false;
    }

    public final Format f(long j2) {
        Format c2 = this.s.c(j2);
        if (c2 != null) {
            this.w = c2;
        }
        return c2;
    }

    public final int o() {
        return 8;
    }

    public void t() {
        this.v = null;
        if (this.y == null && this.x == null) {
            D();
        } else {
            u();
        }
    }

    public void u() {
        try {
            O();
        } finally {
            c((DrmSession<p>) null);
        }
    }

    public void v() {
    }

    public void w() {
    }

    public final boolean x() {
        return "Amazon".equals(I.f9567c) && ("AFTM".equals(I.f9568d) || "AFTB".equals(I.f9568d));
    }

    public final void y() {
        if (this.ea) {
            this.ca = 1;
            this.da = 1;
        }
    }

    public final void z() {
        if (this.ea) {
            this.ca = 1;
            this.da = 3;
            return;
        }
        N();
    }

    public void a(boolean z2) {
        this.la = new e();
    }

    public final boolean d(boolean z2) {
        if (this.x == null || (!z2 && this.m)) {
            return false;
        }
        int state = this.x.getState();
        boolean z3 = true;
        if (state != 1) {
            if (state == 4) {
                z3 = false;
            }
            return z3;
        }
        throw ExoPlaybackException.a(this.x.c(), q());
    }

    public static boolean e(String str) {
        return I.f9568d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    public void a(long j2, boolean z2) {
        this.ga = false;
        this.ha = false;
        C();
        this.s.a();
    }

    public boolean d() {
        return this.ha;
    }

    public static boolean d(String str) {
        int i2 = I.f9565a;
        return i2 < 18 || (i2 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (I.f9565a == 19 && I.f9568d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    public final void c(DrmSession<p> drmSession) {
        DrmSession<p> drmSession2 = this.y;
        this.y = drmSession;
        a(drmSession2);
    }

    public final void a(float f2) {
        this.C = f2;
        if (this.D != null && this.da != 3 && getState() != 0) {
            T();
        }
    }

    public final ByteBuffer b(int i2) {
        if (I.f9565a >= 21) {
            return this.D.getOutputBuffer(i2);
        }
        return this.U[i2];
    }

    public boolean c() {
        return this.v != null && !this.ia && (s() || I() || (this.V != -9223372036854775807L && SystemClock.elapsedRealtime() < this.V));
    }

    public final void b(DrmSession<p> drmSession) {
        DrmSession<p> drmSession2 = this.x;
        this.x = drmSession;
        a(drmSession2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(long r4, long r6) {
        /*
            r3 = this;
            boolean r0 = r3.ha
            if (r0 == 0) goto L_0x0008
            r3.P()
            return
        L_0x0008:
            com.google.android.exoplayer2.Format r0 = r3.v
            if (r0 != 0) goto L_0x0014
            r0 = 1
            boolean r0 = r3.c((boolean) r0)
            if (r0 != 0) goto L_0x0014
            return
        L_0x0014:
            r3.J()
            android.media.MediaCodec r0 = r3.D
            if (r0 == 0) goto L_0x003c
            long r0 = android.os.SystemClock.elapsedRealtime()
            java.lang.String r2 = "drainAndFeed"
            c.e.a.a.o.G.a(r2)
        L_0x0024:
            boolean r2 = r3.b((long) r4, (long) r6)
            if (r2 == 0) goto L_0x002b
            goto L_0x0024
        L_0x002b:
            boolean r4 = r3.B()
            if (r4 == 0) goto L_0x0038
            boolean r4 = r3.d((long) r0)
            if (r4 == 0) goto L_0x0038
            goto L_0x002b
        L_0x0038:
            c.e.a.a.o.G.a()
            goto L_0x004b
        L_0x003c:
            c.e.a.a.c.e r6 = r3.la
            int r7 = r6.f7538d
            int r4 = r3.b(r4)
            int r7 = r7 + r4
            r6.f7538d = r7
            r4 = 0
            r3.c((boolean) r4)
        L_0x004b:
            c.e.a.a.c.e r4 = r3.la
            r4.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.a(long, long):void");
    }

    public static boolean c(String str) {
        return I.f9565a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00c6, code lost:
        if (r5.o == r2.o) goto L_0x00ca;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(com.google.android.exoplayer2.Format r5) {
        /*
            r4 = this;
            com.google.android.exoplayer2.Format r0 = r4.v
            r4.v = r5
            r1 = 1
            r4.ka = r1
            com.google.android.exoplayer2.drm.DrmInitData r2 = r5.f12517l
            r3 = 0
            if (r0 != 0) goto L_0x000e
            r0 = r3
            goto L_0x0010
        L_0x000e:
            com.google.android.exoplayer2.drm.DrmInitData r0 = r0.f12517l
        L_0x0010:
            boolean r0 = c.e.a.a.o.I.a((java.lang.Object) r2, (java.lang.Object) r0)
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x004d
            com.google.android.exoplayer2.drm.DrmInitData r0 = r5.f12517l
            if (r0 == 0) goto L_0x004a
            c.e.a.a.d.l<c.e.a.a.d.p> r0 = r4.f12579l
            if (r0 == 0) goto L_0x003a
            android.os.Looper r2 = android.os.Looper.myLooper()
            com.google.android.exoplayer2.drm.DrmInitData r3 = r5.f12517l
            com.google.android.exoplayer2.drm.DrmSession r0 = r0.a(r2, r3)
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r2 = r4.y
            if (r0 == r2) goto L_0x0031
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r2 = r4.x
            if (r0 != r2) goto L_0x0036
        L_0x0031:
            c.e.a.a.d.l<c.e.a.a.d.p> r2 = r4.f12579l
            r2.a(r0)
        L_0x0036:
            r4.c((com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p>) r0)
            goto L_0x004d
        L_0x003a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Media requires a DrmSessionManager"
            r5.<init>(r0)
            int r0 = r4.q()
            com.google.android.exoplayer2.ExoPlaybackException r5 = com.google.android.exoplayer2.ExoPlaybackException.a(r5, r0)
            throw r5
        L_0x004a:
            r4.c((com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p>) r3)
        L_0x004d:
            android.media.MediaCodec r0 = r4.D
            if (r0 != 0) goto L_0x0055
            r4.J()
            return
        L_0x0055:
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.y
            if (r0 != 0) goto L_0x005d
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.x
            if (r0 != 0) goto L_0x007b
        L_0x005d:
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.y
            if (r0 == 0) goto L_0x0065
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.x
            if (r0 == 0) goto L_0x007b
        L_0x0065:
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.y
            if (r0 == 0) goto L_0x006f
            c.e.a.a.f.a r0 = r4.I
            boolean r0 = r0.f8338f
            if (r0 == 0) goto L_0x007b
        L_0x006f:
            int r0 = c.e.a.a.o.I.f9565a
            r2 = 23
            if (r0 >= r2) goto L_0x007f
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.y
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r2 = r4.x
            if (r0 == r2) goto L_0x007f
        L_0x007b:
            r4.z()
            return
        L_0x007f:
            android.media.MediaCodec r0 = r4.D
            c.e.a.a.f.a r2 = r4.I
            com.google.android.exoplayer2.Format r3 = r4.E
            int r0 = r4.a(r0, r2, r3, r5)
            if (r0 == 0) goto L_0x00ee
            if (r0 == r1) goto L_0x00db
            r2 = 2
            if (r0 == r2) goto L_0x00a8
            r1 = 3
            if (r0 != r1) goto L_0x00a2
            r4.E = r5
            r4.T()
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r5 = r4.y
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.x
            if (r5 == r0) goto L_0x00f1
            r4.A()
            goto L_0x00f1
        L_0x00a2:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            r5.<init>()
            throw r5
        L_0x00a8:
            boolean r0 = r4.K
            if (r0 == 0) goto L_0x00b0
            r4.z()
            goto L_0x00f1
        L_0x00b0:
            r4.aa = r1
            r4.ba = r1
            int r0 = r4.J
            if (r0 == r2) goto L_0x00ca
            if (r0 != r1) goto L_0x00c9
            int r0 = r5.n
            com.google.android.exoplayer2.Format r2 = r4.E
            int r3 = r2.n
            if (r0 != r3) goto L_0x00c9
            int r0 = r5.o
            int r2 = r2.o
            if (r0 != r2) goto L_0x00c9
            goto L_0x00ca
        L_0x00c9:
            r1 = 0
        L_0x00ca:
            r4.Q = r1
            r4.E = r5
            r4.T()
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r5 = r4.y
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.x
            if (r5 == r0) goto L_0x00f1
            r4.A()
            goto L_0x00f1
        L_0x00db:
            r4.E = r5
            r4.T()
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r5 = r4.y
            com.google.android.exoplayer2.drm.DrmSession<c.e.a.a.d.p> r0 = r4.x
            if (r5 == r0) goto L_0x00ea
            r4.A()
            goto L_0x00f1
        L_0x00ea:
            r4.y()
            goto L_0x00f1
        L_0x00ee:
            r4.z()
        L_0x00f1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.b(com.google.android.exoplayer2.Format):void");
    }

    public final void a(MediaCrypto mediaCrypto, boolean z2) {
        if (this.G == null) {
            try {
                List<a> b2 = b(z2);
                if (this.n) {
                    this.G = new ArrayDeque<>(b2);
                } else {
                    this.G = new ArrayDeque<>(Collections.singletonList(b2.get(0)));
                }
                this.H = null;
            } catch (MediaCodecUtil.DecoderQueryException e2) {
                throw new DecoderInitializationException(this.v, (Throwable) e2, z2, -49998);
            }
        }
        if (!this.G.isEmpty()) {
            while (this.D == null) {
                a peekFirst = this.G.peekFirst();
                if (b(peekFirst)) {
                    try {
                        a(peekFirst, mediaCrypto);
                    } catch (Exception e3) {
                        c.e.a.a.o.p.b("MediaCodecRenderer", "Failed to initialize decoder: " + peekFirst, e3);
                        this.G.removeFirst();
                        DecoderInitializationException decoderInitializationException = new DecoderInitializationException(this.v, (Throwable) e3, z2, peekFirst.f8333a);
                        DecoderInitializationException decoderInitializationException2 = this.H;
                        if (decoderInitializationException2 == null) {
                            this.H = decoderInitializationException;
                        } else {
                            this.H = decoderInitializationException2.a(decoderInitializationException);
                        }
                        if (this.G.isEmpty()) {
                            throw this.H;
                        }
                    }
                } else {
                    return;
                }
            }
            this.G = null;
            return;
        }
        throw new DecoderInitializationException(this.v, (Throwable) null, z2, -49999);
    }

    public final void a(a aVar, MediaCrypto mediaCrypto) {
        float f2;
        String str = aVar.f8333a;
        if (I.f9565a < 23) {
            f2 = -1.0f;
        } else {
            f2 = a(this.C, this.v, r());
        }
        if (f2 <= this.o) {
            f2 = -1.0f;
        }
        MediaCodec mediaCodec = null;
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            G.a("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
            G.a();
            G.a("configureCodec");
            a(aVar, mediaCodec, this.v, mediaCrypto, f2);
            G.a();
            G.a("startCodec");
            mediaCodec.start();
            G.a();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            a(mediaCodec);
            this.D = mediaCodec;
            this.I = aVar;
            this.F = f2;
            this.E = this.v;
            this.J = a(str);
            this.K = e(str);
            this.L = a(str, this.E);
            this.M = d(str);
            this.N = b(str);
            this.O = c(str);
            this.P = b(str, this.E);
            this.S = a(aVar) || G();
            R();
            S();
            this.V = getState() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
            this.aa = false;
            this.ba = 0;
            this.fa = false;
            this.ea = false;
            this.ca = 0;
            this.da = 0;
            this.Q = false;
            this.R = false;
            this.Z = false;
            this.ja = true;
            this.la.f7535a++;
            a(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Exception e2) {
            if (mediaCodec != null) {
                Q();
                mediaCodec.release();
            }
            throw e2;
        }
    }

    public final boolean b(long j2, long j3) {
        boolean z2;
        int i2;
        if (!I()) {
            if (!this.O || !this.fa) {
                i2 = this.D.dequeueOutputBuffer(this.u, H());
            } else {
                try {
                    i2 = this.D.dequeueOutputBuffer(this.u, H());
                } catch (IllegalStateException unused) {
                    K();
                    if (this.ha) {
                        O();
                    }
                    return false;
                }
            }
            if (i2 < 0) {
                if (i2 == -2) {
                    M();
                    return true;
                } else if (i2 == -3) {
                    L();
                    return true;
                } else {
                    if (this.S && (this.ga || this.ca == 2)) {
                        K();
                    }
                    return false;
                }
            } else if (this.R) {
                this.R = false;
                this.D.releaseOutputBuffer(i2, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.u;
                if (bufferInfo.size != 0 || (bufferInfo.flags & 4) == 0) {
                    this.X = i2;
                    this.Y = b(i2);
                    ByteBuffer byteBuffer = this.Y;
                    if (byteBuffer != null) {
                        byteBuffer.position(this.u.offset);
                        ByteBuffer byteBuffer2 = this.Y;
                        MediaCodec.BufferInfo bufferInfo2 = this.u;
                        byteBuffer2.limit(bufferInfo2.offset + bufferInfo2.size);
                    }
                    this.Z = e(this.u.presentationTimeUs);
                    f(this.u.presentationTimeUs);
                } else {
                    K();
                    return false;
                }
            }
        }
        if (!this.O || !this.fa) {
            MediaCodec mediaCodec = this.D;
            ByteBuffer byteBuffer3 = this.Y;
            int i3 = this.X;
            MediaCodec.BufferInfo bufferInfo3 = this.u;
            z2 = a(j2, j3, mediaCodec, byteBuffer3, i3, bufferInfo3.flags, bufferInfo3.presentationTimeUs, this.Z, this.w);
        } else {
            try {
                z2 = a(j2, j3, this.D, this.Y, this.X, this.u.flags, this.u.presentationTimeUs, this.Z, this.w);
            } catch (IllegalStateException unused2) {
                K();
                if (this.ha) {
                    O();
                }
                return false;
            }
        }
        if (z2) {
            c(this.u.presentationTimeUs);
            boolean z3 = (this.u.flags & 4) != 0;
            S();
            if (!z3) {
                return true;
            }
            K();
        }
        return false;
    }

    public static boolean b(String str) {
        return (I.f9565a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (I.f9565a <= 19 && (("hb2000".equals(I.f9566b) || "stvm8".equals(I.f9566b)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
    }

    public static boolean b(String str, Format format) {
        if (I.f9565a > 18 || format.v != 1 || !"OMX.MTK.AUDIO.DECODER.MP3".equals(str)) {
            return false;
        }
        return true;
    }

    public final void a(MediaCodec mediaCodec) {
        if (I.f9565a < 21) {
            this.T = mediaCodec.getInputBuffers();
            this.U = mediaCodec.getOutputBuffers();
        }
    }

    public final ByteBuffer a(int i2) {
        if (I.f9565a >= 21) {
            return this.D.getInputBuffer(i2);
        }
        return this.T[i2];
    }

    public final void a(DrmSession<p> drmSession) {
        if (drmSession != null && drmSession != this.y && drmSession != this.x) {
            this.f12579l.a(drmSession);
        }
    }

    public static MediaCodec.CryptoInfo a(f fVar, int i2) {
        MediaCodec.CryptoInfo a2 = fVar.f7544b.a();
        if (i2 == 0) {
            return a2;
        }
        if (a2.numBytesOfClearData == null) {
            a2.numBytesOfClearData = new int[1];
        }
        int[] iArr = a2.numBytesOfClearData;
        iArr[0] = iArr[0] + i2;
        return a2;
    }

    public final int a(String str) {
        if (I.f9565a > 25 || !"OMX.Exynos.avc.dec.secure".equals(str) || (!I.f9568d.startsWith("SM-T585") && !I.f9568d.startsWith("SM-A510") && !I.f9568d.startsWith("SM-A520") && !I.f9568d.startsWith("SM-J700"))) {
            return (I.f9565a >= 24 || (!"OMX.Nvidia.h264.decode".equals(str) && !"OMX.Nvidia.h264.decode.secure".equals(str)) || (!"flounder".equals(I.f9566b) && !"flounder_lte".equals(I.f9566b) && !"grouper".equals(I.f9566b) && !"tilapia".equals(I.f9566b))) ? 0 : 1;
        }
        return 2;
    }

    public static boolean a(String str, Format format) {
        return I.f9565a < 21 && format.f12516k.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    public static boolean a(a aVar) {
        String str = aVar.f8333a;
        return (I.f9565a <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str))) || ("Amazon".equals(I.f9567c) && "AFTS".equals(I.f9568d) && aVar.f8338f);
    }
}
