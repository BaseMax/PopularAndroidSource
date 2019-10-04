package com.google.android.exoplayer2.audio;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import c.e.a.a.K;
import c.e.a.a.b.C;
import c.e.a.a.b.C0695h;
import c.e.a.a.b.D;
import c.e.a.a.b.F;
import c.e.a.a.b.G;
import c.e.a.a.b.j;
import c.e.a.a.b.l;
import c.e.a.a.b.m;
import c.e.a.a.b.s;
import c.e.a.a.b.t;
import c.e.a.a.b.u;
import c.e.a.a.b.v;
import c.e.a.a.b.y;
import c.e.a.a.b.z;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.audio.AudioSink;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public final class DefaultAudioSink implements AudioSink {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f12519a = false;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f12520b = false;
    public long A;
    public long B;
    public int C;
    public int D;
    public long E;
    public float F;
    public AudioProcessor[] G;
    public ByteBuffer[] H;
    public ByteBuffer I;
    public ByteBuffer J;
    public byte[] K;
    public int L;
    public int M;
    public boolean N;
    public boolean O;
    public int P;
    public t Q;
    public boolean R;
    public long S;

    /* renamed from: c  reason: collision with root package name */
    public final m f12521c;

    /* renamed from: d  reason: collision with root package name */
    public final a f12522d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12523e;

    /* renamed from: f  reason: collision with root package name */
    public final v f12524f;

    /* renamed from: g  reason: collision with root package name */
    public final G f12525g;

    /* renamed from: h  reason: collision with root package name */
    public final AudioProcessor[] f12526h;

    /* renamed from: i  reason: collision with root package name */
    public final AudioProcessor[] f12527i;

    /* renamed from: j  reason: collision with root package name */
    public final ConditionVariable f12528j;

    /* renamed from: k  reason: collision with root package name */
    public final s f12529k;

    /* renamed from: l  reason: collision with root package name */
    public final ArrayDeque<d> f12530l;
    public AudioSink.a m;
    public AudioTrack n;
    public b o;
    public b p;
    public AudioTrack q;
    public l r;
    public K s;
    public K t;
    public long u;
    public long v;
    public ByteBuffer w;
    public int x;
    public long y;
    public long z;

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public /* synthetic */ InvalidAudioTrackTimestampException(String str, w wVar) {
            this(str);
        }

        public InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public interface a {
        long a();

        long a(long j2);

        K a(K k2);

        AudioProcessor[] b();
    }

    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f12531a;

        /* renamed from: b  reason: collision with root package name */
        public final int f12532b;

        /* renamed from: c  reason: collision with root package name */
        public final int f12533c;

        /* renamed from: d  reason: collision with root package name */
        public final int f12534d;

        /* renamed from: e  reason: collision with root package name */
        public final int f12535e;

        /* renamed from: f  reason: collision with root package name */
        public final int f12536f;

        /* renamed from: g  reason: collision with root package name */
        public final int f12537g;

        /* renamed from: h  reason: collision with root package name */
        public final int f12538h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f12539i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f12540j;

        /* renamed from: k  reason: collision with root package name */
        public final AudioProcessor[] f12541k;

        public b(boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.f12531a = z;
            this.f12532b = i2;
            this.f12533c = i3;
            this.f12534d = i4;
            this.f12535e = i5;
            this.f12536f = i6;
            this.f12537g = i7;
            this.f12538h = i8 == 0 ? a() : i8;
            this.f12539i = z2;
            this.f12540j = z3;
            this.f12541k = audioProcessorArr;
        }

        public boolean a(b bVar) {
            return bVar.f12537g == this.f12537g && bVar.f12535e == this.f12535e && bVar.f12536f == this.f12536f;
        }

        public long b(long j2) {
            return (j2 * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f12535e);
        }

        public long c(long j2) {
            return (j2 * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f12533c);
        }

        public long a(long j2) {
            return (j2 * ((long) this.f12535e)) / RetryManager.NANOSECONDS_IN_MS;
        }

        @TargetApi(21)
        public final AudioTrack b(boolean z, l lVar, int i2) {
            AudioAttributes audioAttributes;
            if (z) {
                audioAttributes = new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
            } else {
                audioAttributes = lVar.a();
            }
            AudioTrack audioTrack = new AudioTrack(audioAttributes, new AudioFormat.Builder().setChannelMask(this.f12536f).setEncoding(this.f12537g).setSampleRate(this.f12535e).build(), this.f12538h, 1, i2 != 0 ? i2 : 0);
            return audioTrack;
        }

        public AudioTrack a(boolean z, l lVar, int i2) {
            AudioTrack audioTrack;
            if (I.f9565a >= 21) {
                audioTrack = b(z, lVar, i2);
            } else {
                int d2 = I.d(lVar.f7457d);
                if (i2 == 0) {
                    audioTrack = new AudioTrack(d2, this.f12535e, this.f12536f, this.f12537g, this.f12538h, 1);
                } else {
                    audioTrack = new AudioTrack(d2, this.f12535e, this.f12536f, this.f12537g, this.f12538h, 1, i2);
                }
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new AudioSink.InitializationException(state, this.f12535e, this.f12536f, this.f12538h);
        }

        public final int a() {
            if (this.f12531a) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.f12535e, this.f12536f, this.f12537g);
                C0737e.b(minBufferSize != -2);
                return I.a(minBufferSize * 4, ((int) a(250000)) * this.f12534d, (int) Math.max((long) minBufferSize, a(750000) * ((long) this.f12534d)));
            }
            int b2 = DefaultAudioSink.c(this.f12537g);
            if (this.f12537g == 5) {
                b2 *= 2;
            }
            return (int) ((((long) b2) * 250000) / RetryManager.NANOSECONDS_IN_MS);
        }
    }

    public static class c implements a {

        /* renamed from: a  reason: collision with root package name */
        public final AudioProcessor[] f12542a;

        /* renamed from: b  reason: collision with root package name */
        public final D f12543b = new D();

        /* renamed from: c  reason: collision with root package name */
        public final F f12544c = new F();

        public c(AudioProcessor... audioProcessorArr) {
            this.f12542a = (AudioProcessor[]) Arrays.copyOf(audioProcessorArr, audioProcessorArr.length + 2);
            AudioProcessor[] audioProcessorArr2 = this.f12542a;
            audioProcessorArr2[audioProcessorArr.length] = this.f12543b;
            audioProcessorArr2[audioProcessorArr.length + 1] = this.f12544c;
        }

        public K a(K k2) {
            this.f12543b.a(k2.f7302d);
            return new K(this.f12544c.b(k2.f7300b), this.f12544c.a(k2.f7301c), k2.f7302d);
        }

        public AudioProcessor[] b() {
            return this.f12542a;
        }

        public long a(long j2) {
            return this.f12544c.a(j2);
        }

        public long a() {
            return this.f12543b.f();
        }
    }

    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final K f12545a;

        /* renamed from: b  reason: collision with root package name */
        public final long f12546b;

        /* renamed from: c  reason: collision with root package name */
        public final long f12547c;

        public /* synthetic */ d(K k2, long j2, long j3, w wVar) {
            this(k2, j2, j3);
        }

        public d(K k2, long j2, long j3) {
            this.f12545a = k2;
            this.f12546b = j2;
            this.f12547c = j3;
        }
    }

    private final class e implements s.a {
        public e() {
        }

        public void a(long j2, long j3, long j4, long j5) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j2 + ", " + j3 + ", " + j4 + ", " + j5 + ", " + DefaultAudioSink.this.j() + ", " + DefaultAudioSink.this.k();
            if (!DefaultAudioSink.f12520b) {
                p.d("AudioTrack", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }

        public void b(long j2, long j3, long j4, long j5) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j2 + ", " + j3 + ", " + j4 + ", " + j5 + ", " + DefaultAudioSink.this.j() + ", " + DefaultAudioSink.this.k();
            if (!DefaultAudioSink.f12520b) {
                p.d("AudioTrack", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }

        public /* synthetic */ e(DefaultAudioSink defaultAudioSink, w wVar) {
            this();
        }

        public void a(long j2) {
            p.d("AudioTrack", "Ignoring impossibly large audio latency: " + j2);
        }

        public void a(int i2, long j2) {
            if (DefaultAudioSink.this.m != null) {
                DefaultAudioSink.this.m.a(i2, j2, SystemClock.elapsedRealtime() - DefaultAudioSink.this.S);
            }
        }
    }

    public DefaultAudioSink(m mVar, AudioProcessor[] audioProcessorArr) {
        this(mVar, audioProcessorArr, false);
    }

    public void f() {
        this.O = true;
        if (m()) {
            this.f12529k.i();
            this.q.play();
        }
    }

    public void flush() {
        if (m()) {
            this.y = 0;
            this.z = 0;
            this.A = 0;
            this.B = 0;
            this.C = 0;
            K k2 = this.s;
            if (k2 != null) {
                this.t = k2;
                this.s = null;
            } else if (!this.f12530l.isEmpty()) {
                this.t = this.f12530l.getLast().f12545a;
            }
            this.f12530l.clear();
            this.u = 0;
            this.v = 0;
            this.f12525g.g();
            i();
            this.I = null;
            this.J = null;
            this.N = false;
            this.M = -1;
            this.w = null;
            this.x = 0;
            this.D = 0;
            if (this.f12529k.d()) {
                this.q.pause();
            }
            AudioTrack audioTrack = this.q;
            this.q = null;
            b bVar = this.o;
            if (bVar != null) {
                this.p = bVar;
                this.o = null;
            }
            this.f12529k.g();
            this.f12528j.close();
            new w(this, audioTrack).start();
        }
    }

    public void g() {
        if (this.D == 1) {
            this.D = 2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean h() {
        /*
            r9 = this;
            int r0 = r9.M
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L_0x0016
            com.google.android.exoplayer2.audio.DefaultAudioSink$b r0 = r9.p
            boolean r0 = r0.f12539i
            if (r0 == 0) goto L_0x000f
            r0 = 0
            goto L_0x0012
        L_0x000f:
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r9.G
            int r0 = r0.length
        L_0x0012:
            r9.M = r0
        L_0x0014:
            r0 = 1
            goto L_0x0017
        L_0x0016:
            r0 = 0
        L_0x0017:
            int r4 = r9.M
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.G
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L_0x003a
            r4 = r5[r4]
            if (r0 == 0) goto L_0x002a
            r4.x()
        L_0x002a:
            r9.c((long) r7)
            boolean r0 = r4.d()
            if (r0 != 0) goto L_0x0034
            return r3
        L_0x0034:
            int r0 = r9.M
            int r0 = r0 + r2
            r9.M = r0
            goto L_0x0014
        L_0x003a:
            java.nio.ByteBuffer r0 = r9.J
            if (r0 == 0) goto L_0x0046
            r9.b((java.nio.ByteBuffer) r0, (long) r7)
            java.nio.ByteBuffer r0 = r9.J
            if (r0 == 0) goto L_0x0046
            return r3
        L_0x0046:
            r9.M = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.h():boolean");
    }

    public final void i() {
        int i2 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.G;
            if (i2 < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i2];
                audioProcessor.flush();
                this.H[i2] = audioProcessor.t();
                i2++;
            } else {
                return;
            }
        }
    }

    public final long j() {
        b bVar = this.p;
        return bVar.f12531a ? this.y / ((long) bVar.f12532b) : this.z;
    }

    public final long k() {
        b bVar = this.p;
        return bVar.f12531a ? this.A / ((long) bVar.f12534d) : this.B;
    }

    public final void l() {
        this.f12528j.block();
        b bVar = this.p;
        C0737e.a(bVar);
        this.q = bVar.a(this.R, this.r, this.P);
        int audioSessionId = this.q.getAudioSessionId();
        if (f12519a && I.f9565a < 21) {
            AudioTrack audioTrack = this.n;
            if (!(audioTrack == null || audioSessionId == audioTrack.getAudioSessionId())) {
                n();
            }
            if (this.n == null) {
                this.n = d(audioSessionId);
            }
        }
        if (this.P != audioSessionId) {
            this.P = audioSessionId;
            AudioSink.a aVar = this.m;
            if (aVar != null) {
                aVar.c(audioSessionId);
            }
        }
        this.t = this.p.f12540j ? this.f12522d.a(this.t) : K.f7299a;
        p();
        s sVar = this.f12529k;
        AudioTrack audioTrack2 = this.q;
        b bVar2 = this.p;
        sVar.a(audioTrack2, bVar2.f12537g, bVar2.f12534d, bVar2.f12538h);
        o();
        int i2 = this.Q.f7501a;
        if (i2 != 0) {
            this.q.attachAuxEffect(i2);
            this.q.setAuxEffectSendLevel(this.Q.f7502b);
        }
    }

    public final boolean m() {
        return this.q != null;
    }

    public final void n() {
        AudioTrack audioTrack = this.n;
        if (audioTrack != null) {
            this.n = null;
            new x(this, audioTrack).start();
        }
    }

    public final void o() {
        if (m()) {
            if (I.f9565a >= 21) {
                a(this.q, this.F);
            } else {
                b(this.q, this.F);
            }
        }
    }

    public final void p() {
        AudioProcessor[] audioProcessorArr = this.p.f12541k;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.s()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.G = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.H = new ByteBuffer[size];
        i();
    }

    public void pause() {
        this.O = false;
        if (m() && this.f12529k.f()) {
            this.q.pause();
        }
    }

    public void reset() {
        flush();
        n();
        for (AudioProcessor reset : this.f12526h) {
            reset.reset();
        }
        for (AudioProcessor reset2 : this.f12527i) {
            reset2.reset();
        }
        this.P = 0;
        this.O = false;
    }

    public DefaultAudioSink(m mVar, AudioProcessor[] audioProcessorArr, boolean z2) {
        this(mVar, (a) new c(audioProcessorArr), z2);
    }

    public void a(AudioSink.a aVar) {
        this.m = aVar;
    }

    public final void c(long j2) {
        ByteBuffer byteBuffer;
        int length = this.G.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.H[i2 - 1];
            } else {
                byteBuffer = this.I;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f12518a;
                }
            }
            if (i2 == length) {
                b(byteBuffer, j2);
            } else {
                AudioProcessor audioProcessor = this.G[i2];
                audioProcessor.a(byteBuffer);
                ByteBuffer t2 = audioProcessor.t();
                this.H[i2] = t2;
                if (t2.hasRemaining()) {
                    i2++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i2--;
            } else {
                return;
            }
        }
    }

    public boolean d() {
        return !m() || (this.N && !c());
    }

    public void e() {
        if (this.R) {
            this.R = false;
            this.P = 0;
            flush();
        }
    }

    public DefaultAudioSink(m mVar, a aVar, boolean z2) {
        this.f12521c = mVar;
        C0737e.a(aVar);
        this.f12522d = aVar;
        this.f12523e = z2;
        this.f12528j = new ConditionVariable(true);
        this.f12529k = new s(new e(this, null));
        this.f12524f = new v();
        this.f12525g = new G();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new u[]{new C(), this.f12524f, this.f12525g});
        Collections.addAll(arrayList, aVar.b());
        this.f12526h = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f12527i = new AudioProcessor[]{new z()};
        this.F = 1.0f;
        this.D = 0;
        this.r = l.f7454a;
        this.P = 0;
        this.Q = new t(0, 0.0f);
        this.t = K.f7299a;
        this.M = -1;
        this.G = new AudioProcessor[0];
        this.H = new ByteBuffer[0];
        this.f12530l = new ArrayDeque<>();
    }

    public static AudioTrack d(int i2) {
        AudioTrack audioTrack = new AudioTrack(3, 4000, 4, 2, 2, 0, i2);
        return audioTrack;
    }

    public boolean a(int i2, int i3) {
        boolean z2 = true;
        if (I.f(i3)) {
            if (i3 == 4 && I.f9565a < 21) {
                z2 = false;
            }
            return z2;
        }
        m mVar = this.f12521c;
        if (mVar == null || !mVar.a(i3) || (i2 != -1 && i2 > this.f12521c.b())) {
            z2 = false;
        }
        return z2;
    }

    public final void b(ByteBuffer byteBuffer, long j2) {
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.J;
            boolean z2 = true;
            int i2 = 0;
            if (byteBuffer2 != null) {
                C0737e.a(byteBuffer2 == byteBuffer);
            } else {
                this.J = byteBuffer;
                if (I.f9565a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.K;
                    if (bArr == null || bArr.length < remaining) {
                        this.K = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.K, 0, remaining);
                    byteBuffer.position(position);
                    this.L = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (I.f9565a < 21) {
                int b2 = this.f12529k.b(this.A);
                if (b2 > 0) {
                    i2 = this.q.write(this.K, this.L, Math.min(remaining2, b2));
                    if (i2 > 0) {
                        this.L += i2;
                        byteBuffer.position(byteBuffer.position() + i2);
                    }
                }
            } else if (this.R) {
                if (j2 == -9223372036854775807L) {
                    z2 = false;
                }
                C0737e.b(z2);
                i2 = a(this.q, byteBuffer, remaining2, j2);
            } else {
                i2 = a(this.q, byteBuffer, remaining2);
            }
            this.S = SystemClock.elapsedRealtime();
            if (i2 >= 0) {
                if (this.p.f12531a) {
                    this.A += (long) i2;
                }
                if (i2 == remaining2) {
                    if (!this.p.f12531a) {
                        this.B += (long) this.C;
                    }
                    this.J = null;
                }
                return;
            }
            throw new AudioSink.WriteException(i2);
        }
    }

    public long a(boolean z2) {
        if (!m() || this.D == 0) {
            return Long.MIN_VALUE;
        }
        return this.E + a(b(Math.min(this.f12529k.a(z2), this.p.b(k()))));
    }

    public boolean c() {
        return m() && this.f12529k.d(k());
    }

    public static int c(int i2) {
        if (i2 == 5) {
            return 80000;
        }
        if (i2 == 6) {
            return 768000;
        }
        if (i2 == 7) {
            return 192000;
        }
        if (i2 == 8) {
            return 2250000;
        }
        if (i2 == 14) {
            return 3062500;
        }
        if (i2 == 17) {
            return 336000;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00d7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r18, int r19, int r20, int r21, int[] r22, int r23, int r24) {
        /*
            r17 = this;
            r1 = r17
            r0 = r19
            int r2 = c.e.a.a.o.I.f9565a
            r3 = 0
            r4 = 21
            if (r2 >= r4) goto L_0x001d
            r2 = 8
            if (r0 != r2) goto L_0x001d
            if (r22 != 0) goto L_0x001d
            r2 = 6
            int[] r2 = new int[r2]
            r4 = 0
        L_0x0015:
            int r5 = r2.length
            if (r4 >= r5) goto L_0x001f
            r2[r4] = r4
            int r4 = r4 + 1
            goto L_0x0015
        L_0x001d:
            r2 = r22
        L_0x001f:
            boolean r5 = c.e.a.a.o.I.f((int) r18)
            r4 = 4
            r6 = 1
            if (r5 == 0) goto L_0x002d
            r7 = r18
            if (r7 == r4) goto L_0x002f
            r13 = 1
            goto L_0x0030
        L_0x002d:
            r7 = r18
        L_0x002f:
            r13 = 0
        L_0x0030:
            boolean r8 = r1.f12523e
            if (r8 == 0) goto L_0x0042
            boolean r4 = r1.a((int) r0, (int) r4)
            if (r4 == 0) goto L_0x0042
            boolean r4 = c.e.a.a.o.I.e((int) r18)
            if (r4 == 0) goto L_0x0042
            r4 = 1
            goto L_0x0043
        L_0x0042:
            r4 = 0
        L_0x0043:
            if (r4 == 0) goto L_0x0048
            com.google.android.exoplayer2.audio.AudioProcessor[] r8 = r1.f12527i
            goto L_0x004a
        L_0x0048:
            com.google.android.exoplayer2.audio.AudioProcessor[] r8 = r1.f12526h
        L_0x004a:
            r15 = r8
            if (r13 == 0) goto L_0x008e
            c.e.a.a.b.G r8 = r1.f12525g
            r9 = r23
            r10 = r24
            r8.a(r9, r10)
            c.e.a.a.b.v r8 = r1.f12524f
            r8.a((int[]) r2)
            int r2 = r15.length
            r11 = r20
            r9 = r0
            r12 = r7
            r8 = 0
            r10 = 0
        L_0x0062:
            if (r8 >= r2) goto L_0x0089
            r14 = r15[r8]
            boolean r16 = r14.a(r11, r9, r12)     // Catch:{ UnhandledFormatException -> 0x0081 }
            r10 = r10 | r16
            boolean r16 = r14.s()
            if (r16 == 0) goto L_0x007e
            int r9 = r14.u()
            int r11 = r14.v()
            int r12 = r14.w()
        L_0x007e:
            int r8 = r8 + 1
            goto L_0x0062
        L_0x0081:
            r0 = move-exception
            r2 = r0
            com.google.android.exoplayer2.audio.AudioSink$ConfigurationException r0 = new com.google.android.exoplayer2.audio.AudioSink$ConfigurationException
            r0.<init>((java.lang.Throwable) r2)
            throw r0
        L_0x0089:
            r16 = r10
            r2 = r11
            r11 = r12
            goto L_0x0094
        L_0x008e:
            r2 = r20
            r9 = r0
            r11 = r7
            r16 = 0
        L_0x0094:
            int r10 = a((int) r9, (boolean) r5)
            if (r10 == 0) goto L_0x00d7
            r8 = -1
            if (r5 == 0) goto L_0x00a2
            int r0 = c.e.a.a.o.I.b((int) r18, (int) r19)
            goto L_0x00a3
        L_0x00a2:
            r0 = -1
        L_0x00a3:
            if (r5 == 0) goto L_0x00aa
            int r7 = c.e.a.a.o.I.b((int) r11, (int) r9)
            r8 = r7
        L_0x00aa:
            if (r13 == 0) goto L_0x00b0
            if (r4 != 0) goto L_0x00b0
            r14 = 1
            goto L_0x00b1
        L_0x00b0:
            r14 = 0
        L_0x00b1:
            com.google.android.exoplayer2.audio.DefaultAudioSink$b r3 = new com.google.android.exoplayer2.audio.DefaultAudioSink$b
            r4 = r3
            r6 = r0
            r7 = r20
            r9 = r2
            r12 = r21
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            boolean r0 = r17.m()
            if (r0 == 0) goto L_0x00d4
            com.google.android.exoplayer2.audio.DefaultAudioSink$b r0 = r1.p
            boolean r0 = r3.a((com.google.android.exoplayer2.audio.DefaultAudioSink.b) r0)
            if (r0 != 0) goto L_0x00cf
            r17.flush()
            goto L_0x00d4
        L_0x00cf:
            if (r16 == 0) goto L_0x00d4
            r1.o = r3
            return
        L_0x00d4:
            r1.p = r3
            return
        L_0x00d7:
            com.google.android.exoplayer2.audio.AudioSink$ConfigurationException r0 = new com.google.android.exoplayer2.audio.AudioSink$ConfigurationException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unsupported channel count: "
            r2.append(r3)
            r2.append(r9)
            java.lang.String r2 = r2.toString()
            r0.<init>((java.lang.String) r2)
            goto L_0x00ef
        L_0x00ee:
            throw r0
        L_0x00ef:
            goto L_0x00ee
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.a(int, int, int, int, int[], int, int):void");
    }

    public void b() {
        if (!this.N && m() && h()) {
            this.f12529k.c(k());
            this.q.stop();
            this.x = 0;
            this.N = true;
        }
    }

    public final long b(long j2) {
        long j3;
        long a2;
        d dVar = null;
        while (!this.f12530l.isEmpty() && j2 >= this.f12530l.getFirst().f12547c) {
            dVar = this.f12530l.remove();
        }
        if (dVar != null) {
            this.t = dVar.f12545a;
            this.v = dVar.f12547c;
            this.u = dVar.f12546b - this.E;
        }
        if (this.t.f7300b == 1.0f) {
            return (j2 + this.u) - this.v;
        }
        if (this.f12530l.isEmpty()) {
            j3 = this.u;
            a2 = this.f12522d.a(j2 - this.v);
        } else {
            j3 = this.u;
            a2 = I.a(j2 - this.v, this.t.f7300b);
        }
        return j3 + a2;
    }

    public boolean a(ByteBuffer byteBuffer, long j2) {
        String str;
        String str2;
        ByteBuffer byteBuffer2 = byteBuffer;
        long j3 = j2;
        ByteBuffer byteBuffer3 = this.I;
        C0737e.a(byteBuffer3 == null || byteBuffer2 == byteBuffer3);
        if (this.o != null) {
            if (!h()) {
                return false;
            }
            this.p = this.o;
            this.o = null;
            this.t = this.p.f12540j ? this.f12522d.a(this.t) : K.f7299a;
            p();
        }
        if (!m()) {
            l();
            if (this.O) {
                f();
            }
        }
        if (!this.f12529k.f(k())) {
            return false;
        }
        if (this.I != null) {
            str = "AudioTrack";
        } else if (!byteBuffer.hasRemaining()) {
            return true;
        } else {
            b bVar = this.p;
            if (!bVar.f12531a && this.C == 0) {
                this.C = a(bVar.f12537g, byteBuffer2);
                if (this.C == 0) {
                    return true;
                }
            }
            if (this.s == null) {
                str2 = "AudioTrack";
            } else if (!h()) {
                return false;
            } else {
                K k2 = this.s;
                this.s = null;
                K a2 = this.f12522d.a(k2);
                ArrayDeque<d> arrayDeque = this.f12530l;
                str2 = "AudioTrack";
                d dVar = new d(a2, Math.max(0, j3), this.p.b(k()), null);
                arrayDeque.add(dVar);
                p();
            }
            if (this.D == 0) {
                this.E = Math.max(0, j3);
                this.D = 1;
                str = str2;
            } else {
                long c2 = this.E + this.p.c(j() - this.f12525g.f());
                if (this.D != 1 || Math.abs(c2 - j3) <= 200000) {
                    str = str2;
                } else {
                    str = str2;
                    p.b(str, "Discontinuity detected [expected " + c2 + ", got " + j3 + "]");
                    this.D = 2;
                }
                if (this.D == 2) {
                    long j4 = j3 - c2;
                    this.E += j4;
                    this.D = 1;
                    AudioSink.a aVar = this.m;
                    if (!(aVar == null || j4 == 0)) {
                        aVar.a();
                    }
                }
            }
            if (this.p.f12531a) {
                this.y += (long) byteBuffer.remaining();
            } else {
                this.z += (long) this.C;
            }
            this.I = byteBuffer2;
        }
        if (this.p.f12539i) {
            c(j3);
        } else {
            b(this.I, j3);
        }
        if (!this.I.hasRemaining()) {
            this.I = null;
            return true;
        } else if (!this.f12529k.e(k())) {
            return false;
        } else {
            p.d(str, "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    public static void b(AudioTrack audioTrack, float f2) {
        audioTrack.setStereoVolume(f2, f2);
    }

    public K a(K k2) {
        b bVar = this.p;
        if (bVar == null || bVar.f12540j) {
            K k3 = this.s;
            if (k3 == null) {
                k3 = !this.f12530l.isEmpty() ? this.f12530l.getLast().f12545a : this.t;
            }
            if (!k2.equals(k3)) {
                if (m()) {
                    this.s = k2;
                } else {
                    this.t = this.f12522d.a(k2);
                }
            }
            return this.t;
        }
        this.t = K.f7299a;
        return this.t;
    }

    public K a() {
        return this.t;
    }

    public void a(l lVar) {
        if (!this.r.equals(lVar)) {
            this.r = lVar;
            if (!this.R) {
                flush();
                this.P = 0;
            }
        }
    }

    public void a(t tVar) {
        if (!this.Q.equals(tVar)) {
            int i2 = tVar.f7501a;
            float f2 = tVar.f7502b;
            AudioTrack audioTrack = this.q;
            if (audioTrack != null) {
                if (this.Q.f7501a != i2) {
                    audioTrack.attachAuxEffect(i2);
                }
                if (i2 != 0) {
                    this.q.setAuxEffectSendLevel(f2);
                }
            }
            this.Q = tVar;
        }
    }

    public void a(int i2) {
        C0737e.b(I.f9565a >= 21);
        if (!this.R || this.P != i2) {
            this.R = true;
            this.P = i2;
            flush();
        }
    }

    public void a(float f2) {
        if (this.F != f2) {
            this.F = f2;
            o();
        }
    }

    public final long a(long j2) {
        return j2 + this.p.b(this.f12522d.a());
    }

    public static int a(int i2, boolean z2) {
        if (I.f9565a <= 28 && !z2) {
            if (i2 == 7) {
                i2 = 8;
            } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                i2 = 6;
            }
        }
        if (I.f9565a <= 26 && "fugu".equals(I.f9566b) && !z2 && i2 == 1) {
            i2 = 2;
        }
        return I.a(i2);
    }

    public static int a(int i2, ByteBuffer byteBuffer) {
        int i3;
        if (i2 == 7 || i2 == 8) {
            return y.a(byteBuffer);
        }
        if (i2 == 5) {
            return C0695h.a();
        }
        if (i2 == 6) {
            return C0695h.b(byteBuffer);
        }
        if (i2 == 17) {
            return j.a(byteBuffer);
        }
        if (i2 == 14) {
            int a2 = C0695h.a(byteBuffer);
            if (a2 == -1) {
                i3 = 0;
            } else {
                i3 = C0695h.a(byteBuffer, a2) * 16;
            }
            return i3;
        }
        throw new IllegalStateException("Unexpected audio encoding: " + i2);
    }

    @TargetApi(21)
    public static int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2) {
        return audioTrack.write(byteBuffer, i2, 1);
    }

    @TargetApi(21)
    public final int a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i2, long j2) {
        if (this.w == null) {
            this.w = ByteBuffer.allocate(16);
            this.w.order(ByteOrder.BIG_ENDIAN);
            this.w.putInt(1431633921);
        }
        if (this.x == 0) {
            this.w.putInt(4, i2);
            this.w.putLong(8, j2 * 1000);
            this.w.position(0);
            this.x = i2;
        }
        int remaining = this.w.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.w, remaining, 1);
            if (write < 0) {
                this.x = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int a2 = a(audioTrack, byteBuffer, i2);
        if (a2 < 0) {
            this.x = 0;
            return a2;
        }
        this.x -= a2;
        return a2;
    }

    @TargetApi(21)
    public static void a(AudioTrack audioTrack, float f2) {
        audioTrack.setVolume(f2);
    }
}
