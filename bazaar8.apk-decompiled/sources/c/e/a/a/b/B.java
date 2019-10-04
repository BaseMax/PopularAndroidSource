package c.e.a.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import c.e.a.a.C0743p;
import c.e.a.a.K;
import c.e.a.a.b.q;
import c.e.a.a.c.f;
import c.e.a.a.d.l;
import c.e.a.a.d.p;
import c.e.a.a.f.c;
import c.e.a.a.f.e;
import c.e.a.a.o.I;
import c.e.a.a.o.r;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaCodecAudioRenderer */
public class B extends MediaCodecRenderer implements r {
    public boolean Aa;
    public boolean Ba;
    public long Ca;
    public int Da;
    public final Context ma;
    public final q.a na;
    public final AudioSink oa;
    public final long[] pa;
    public int qa;
    public boolean ra;
    public boolean sa;
    public boolean ta;
    public MediaFormat ua;
    public int va;
    public int wa;
    public int xa;
    public int ya;
    public long za;

    /* compiled from: MediaCodecAudioRenderer */
    private final class a implements AudioSink.a {
        public a() {
        }

        public void a() {
            B.this.V();
            boolean unused = B.this.Ba = true;
        }

        public void c(int i2) {
            B.this.na.a(i2);
            B.this.c(i2);
        }

        public void a(int i2, long j2, long j3) {
            B.this.na.a(i2, j2, j3);
            B.this.a(i2, j2, j3);
        }
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public B(Context context, c cVar, l<p> lVar, boolean z, Handler handler, q qVar, m mVar, AudioProcessor... audioProcessorArr) {
        this(context, cVar, lVar, z, handler, qVar, new DefaultAudioSink(mVar, audioProcessorArr));
        m mVar2 = mVar;
    }

    public static boolean f(String str) {
        return I.f9565a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(I.f9567c) && (I.f9566b.startsWith("zeroflte") || I.f9566b.startsWith("herolte") || I.f9566b.startsWith("heroqlte"));
    }

    public static boolean g(String str) {
        return I.f9565a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(I.f9567c) && (I.f9566b.startsWith("baffin") || I.f9566b.startsWith("grand") || I.f9566b.startsWith("fortuna") || I.f9566b.startsWith("gprimelte") || I.f9566b.startsWith("j2y18lte") || I.f9566b.startsWith("ms01"));
    }

    public void P() {
        try {
            this.oa.b();
        } catch (AudioSink.WriteException e2) {
            throw ExoPlaybackException.a(e2, q());
        }
    }

    public void V() {
    }

    public final void W() {
        long a2 = this.oa.a(d());
        if (a2 != Long.MIN_VALUE) {
            if (!this.Ba) {
                a2 = Math.max(this.za, a2);
            }
            this.za = a2;
            this.Ba = false;
        }
    }

    public void a(int i2, long j2, long j3) {
    }

    public void b(Format format) {
        super.b(format);
        this.na.a(format);
        this.va = "audio/raw".equals(format.f12514i) ? format.x : 2;
        this.wa = format.v;
        this.xa = format.y;
        this.ya = format.z;
    }

    public void c(int i2) {
    }

    public boolean c() {
        return this.oa.c() || super.c();
    }

    public boolean d() {
        return super.d() && this.oa.d();
    }

    public r n() {
        return this;
    }

    public void t() {
        try {
            this.Ca = -9223372036854775807L;
            this.Da = 0;
            this.oa.flush();
            try {
                super.t();
            } finally {
                this.na.a(this.la);
            }
        } catch (Throwable th) {
            super.t();
            throw th;
        } finally {
            this.na.a(this.la);
        }
    }

    public void u() {
        try {
            super.u();
        } finally {
            this.oa.reset();
        }
    }

    public void v() {
        super.v();
        this.oa.f();
    }

    public void w() {
        W();
        this.oa.pause();
        super.w();
    }

    public B(Context context, c cVar, l<p> lVar, boolean z, Handler handler, q qVar, AudioSink audioSink) {
        super(1, cVar, lVar, z, false, 44100.0f);
        this.ma = context.getApplicationContext();
        this.oa = audioSink;
        this.Ca = -9223372036854775807L;
        this.pa = new long[10];
        this.na = new q.a(handler, qVar);
        audioSink.a((AudioSink.a) new a());
    }

    public void c(long j2) {
        while (this.Da != 0 && j2 >= this.pa[0]) {
            this.oa.g();
            this.Da--;
            long[] jArr = this.pa;
            System.arraycopy(jArr, 1, jArr, 0, this.Da);
        }
    }

    public int a(c cVar, l<p> lVar, Format format) {
        boolean z;
        String str = format.f12514i;
        if (!s.j(str)) {
            return 0;
        }
        int i2 = I.f9565a >= 21 ? 32 : 0;
        boolean a2 = C0743p.a((l<?>) lVar, format.f12517l);
        int i3 = 4;
        int i4 = 8;
        if (a2 && a(format.v, str) && cVar.a() != null) {
            return i2 | 8 | 4;
        }
        int i5 = 1;
        if (("audio/raw".equals(str) && !this.oa.a(format.v, format.x)) || !this.oa.a(format.v, 2)) {
            return 1;
        }
        DrmInitData drmInitData = format.f12517l;
        if (drmInitData != null) {
            z = false;
            for (int i6 = 0; i6 < drmInitData.f12565d; i6++) {
                z |= drmInitData.a(i6).f12571f;
            }
        } else {
            z = false;
        }
        List<c.e.a.a.f.a> a3 = cVar.a(format.f12514i, z, false);
        if (a3.isEmpty()) {
            if (z && !cVar.a(format.f12514i, false, false).isEmpty()) {
                i5 = 2;
            }
            return i5;
        } else if (!a2) {
            return 2;
        } else {
            c.e.a.a.f.a aVar = a3.get(0);
            boolean a4 = aVar.a(format);
            if (a4 && aVar.b(format)) {
                i4 = 16;
            }
            if (!a4) {
                i3 = 3;
            }
            return i4 | i2 | i3;
        }
    }

    public long b() {
        if (getState() == 2) {
            W();
        }
        return this.za;
    }

    public List<c.e.a.a.f.a> a(c cVar, Format format, boolean z) {
        if (a(format.v, format.f12514i)) {
            c.e.a.a.f.a a2 = cVar.a();
            if (a2 != null) {
                return Collections.singletonList(a2);
            }
        }
        return cVar.a(format.f12514i, z, false);
    }

    public boolean a(int i2, String str) {
        return this.oa.a(i2, s.c(str));
    }

    public void a(c.e.a.a.f.a aVar, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto, float f2) {
        this.qa = a(aVar, format, r());
        this.sa = f(aVar.f8333a);
        this.ta = g(aVar.f8333a);
        this.ra = aVar.f8339g;
        MediaFormat a2 = a(format, this.ra ? "audio/raw" : aVar.f8334b, this.qa, f2);
        mediaCodec.configure(a2, null, mediaCrypto, 0);
        if (this.ra) {
            this.ua = a2;
            this.ua.setString("mime", format.f12514i);
            return;
        }
        this.ua = null;
    }

    public int a(MediaCodec mediaCodec, c.e.a.a.f.a aVar, Format format, Format format2) {
        if (a(aVar, format2) <= this.qa && format.y == 0 && format.z == 0 && format2.y == 0 && format2.z == 0) {
            if (aVar.a(format, format2, true)) {
                return 3;
            }
            if (a(format, format2)) {
                return 1;
            }
        }
        return 0;
    }

    public float a(float f2, Format format, Format[] formatArr) {
        int i2 = -1;
        for (Format format2 : formatArr) {
            int i3 = format2.w;
            if (i3 != -1) {
                i2 = Math.max(i2, i3);
            }
        }
        if (i2 == -1) {
            return -1.0f;
        }
        return f2 * ((float) i2);
    }

    public void a(String str, long j2, long j3) {
        this.na.a(str, j2, j3);
    }

    public void a(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int i2;
        int[] iArr;
        MediaFormat mediaFormat2 = this.ua;
        if (mediaFormat2 != null) {
            i2 = s.c(mediaFormat2.getString("mime"));
            mediaFormat = this.ua;
        } else {
            i2 = this.va;
        }
        int i3 = i2;
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.sa && integer == 6) {
            int i4 = this.wa;
            if (i4 < 6) {
                iArr = new int[i4];
                for (int i5 = 0; i5 < this.wa; i5++) {
                    iArr[i5] = i5;
                }
                this.oa.a(i3, integer, integer2, 0, iArr, this.xa, this.ya);
            }
        }
        iArr = null;
        try {
            this.oa.a(i3, integer, integer2, 0, iArr, this.xa, this.ya);
        } catch (AudioSink.ConfigurationException e2) {
            throw ExoPlaybackException.a(e2, q());
        }
    }

    public void a(boolean z) {
        super.a(z);
        this.na.b(this.la);
        int i2 = p().f7317b;
        if (i2 != 0) {
            this.oa.a(i2);
        } else {
            this.oa.e();
        }
    }

    public void a(Format[] formatArr, long j2) {
        super.a(formatArr, j2);
        if (this.Ca != -9223372036854775807L) {
            int i2 = this.Da;
            if (i2 == this.pa.length) {
                c.e.a.a.o.p.d("MediaCodecAudioRenderer", "Too many stream changes, so dropping change at " + this.pa[this.Da - 1]);
            } else {
                this.Da = i2 + 1;
            }
            this.pa[this.Da - 1] = this.Ca;
        }
    }

    public void a(long j2, boolean z) {
        super.a(j2, z);
        this.oa.flush();
        this.za = j2;
        this.Aa = true;
        this.Ba = true;
        this.Ca = -9223372036854775807L;
        this.Da = 0;
    }

    public K a(K k2) {
        return this.oa.a(k2);
    }

    public K a() {
        return this.oa.a();
    }

    public void a(f fVar) {
        if (this.Aa && !fVar.h()) {
            if (Math.abs(fVar.f7546d - this.za) > 500000) {
                this.za = fVar.f7546d;
            }
            this.Aa = false;
        }
        this.Ca = Math.max(fVar.f7546d, this.Ca);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r1 != -9223372036854775807L) goto L_0x001b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(long r1, long r3, android.media.MediaCodec r5, java.nio.ByteBuffer r6, int r7, int r8, long r9, boolean r11, com.google.android.exoplayer2.Format r12) {
        /*
            r0 = this;
            boolean r1 = r0.ta
            if (r1 == 0) goto L_0x001a
            r1 = 0
            int r3 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r3 != 0) goto L_0x001a
            r1 = r8 & 4
            if (r1 == 0) goto L_0x001a
            long r1 = r0.Ca
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r12 == 0) goto L_0x001a
            goto L_0x001b
        L_0x001a:
            r1 = r9
        L_0x001b:
            boolean r3 = r0.ra
            r4 = 0
            r9 = 1
            if (r3 == 0) goto L_0x0029
            r3 = r8 & 2
            if (r3 == 0) goto L_0x0029
            r5.releaseOutputBuffer(r7, r4)
            return r9
        L_0x0029:
            if (r11 == 0) goto L_0x003b
            r5.releaseOutputBuffer(r7, r4)
            c.e.a.a.c.e r1 = r0.la
            int r2 = r1.f7540f
            int r2 = r2 + r9
            r1.f7540f = r2
            com.google.android.exoplayer2.audio.AudioSink r1 = r0.oa
            r1.g()
            return r9
        L_0x003b:
            com.google.android.exoplayer2.audio.AudioSink r3 = r0.oa     // Catch:{ InitializationException -> 0x0051, WriteException -> 0x004f }
            boolean r1 = r3.a((java.nio.ByteBuffer) r6, (long) r1)     // Catch:{ InitializationException -> 0x0051, WriteException -> 0x004f }
            if (r1 == 0) goto L_0x004e
            r5.releaseOutputBuffer(r7, r4)     // Catch:{ InitializationException -> 0x0051, WriteException -> 0x004f }
            c.e.a.a.c.e r1 = r0.la     // Catch:{ InitializationException -> 0x0051, WriteException -> 0x004f }
            int r2 = r1.f7539e     // Catch:{ InitializationException -> 0x0051, WriteException -> 0x004f }
            int r2 = r2 + r9
            r1.f7539e = r2     // Catch:{ InitializationException -> 0x0051, WriteException -> 0x004f }
            return r9
        L_0x004e:
            return r4
        L_0x004f:
            r1 = move-exception
            goto L_0x0052
        L_0x0051:
            r1 = move-exception
        L_0x0052:
            int r2 = r0.q()
            com.google.android.exoplayer2.ExoPlaybackException r1 = com.google.android.exoplayer2.ExoPlaybackException.a(r1, r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.b.B.a(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, com.google.android.exoplayer2.Format):boolean");
    }

    public void a(int i2, Object obj) {
        if (i2 == 2) {
            this.oa.a(((Float) obj).floatValue());
        } else if (i2 == 3) {
            this.oa.a((l) obj);
        } else if (i2 != 5) {
            super.a(i2, obj);
        } else {
            this.oa.a((t) obj);
        }
    }

    public int a(c.e.a.a.f.a aVar, Format format, Format[] formatArr) {
        int a2 = a(aVar, format);
        if (formatArr.length == 1) {
            return a2;
        }
        int i2 = a2;
        for (Format format2 : formatArr) {
            if (aVar.a(format, format2, false)) {
                i2 = Math.max(i2, a(aVar, format2));
            }
        }
        return i2;
    }

    public final int a(c.e.a.a.f.a aVar, Format format) {
        if ("OMX.google.raw.decoder".equals(aVar.f8333a)) {
            int i2 = I.f9565a;
            if (i2 < 24 && (i2 != 23 || !I.c(this.ma))) {
                return -1;
            }
        }
        return format.f12515j;
    }

    public boolean a(Format format, Format format2) {
        return I.a((Object) format.f12514i, (Object) format2.f12514i) && format.v == format2.v && format.w == format2.w && format.b(format2);
    }

    @SuppressLint({"InlinedApi"})
    public MediaFormat a(Format format, String str, int i2, float f2) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.v);
        mediaFormat.setInteger("sample-rate", format.w);
        e.a(mediaFormat, format.f12516k);
        e.a(mediaFormat, "max-input-size", i2);
        if (I.f9565a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (I.f9565a <= 28 && "audio/ac4".equals(format.f12514i)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        return mediaFormat;
    }
}
