package c.e.a.a.b;

import android.media.AudioTrack;
import android.os.SystemClock;
import c.e.a.a.C0744q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;
import java.lang.reflect.Method;

/* compiled from: AudioTrackPositionTracker */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public final a f7489a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f7490b;

    /* renamed from: c  reason: collision with root package name */
    public AudioTrack f7491c;

    /* renamed from: d  reason: collision with root package name */
    public int f7492d;

    /* renamed from: e  reason: collision with root package name */
    public int f7493e;

    /* renamed from: f  reason: collision with root package name */
    public r f7494f;

    /* renamed from: g  reason: collision with root package name */
    public int f7495g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7496h;

    /* renamed from: i  reason: collision with root package name */
    public long f7497i;

    /* renamed from: j  reason: collision with root package name */
    public long f7498j;

    /* renamed from: k  reason: collision with root package name */
    public long f7499k;

    /* renamed from: l  reason: collision with root package name */
    public Method f7500l;
    public long m;
    public boolean n;
    public boolean o;
    public long p;
    public long q;
    public long r;
    public long s;
    public int t;
    public int u;
    public long v;
    public long w;
    public long x;
    public long y;

    /* compiled from: AudioTrackPositionTracker */
    public interface a {
        void a(int i2, long j2);

        void a(long j2);

        void a(long j2, long j3, long j4, long j5);

        void b(long j2, long j3, long j4, long j5);
    }

    public s(a aVar) {
        C0737e.a(aVar);
        this.f7489a = aVar;
        if (I.f9565a >= 18) {
            try {
                this.f7500l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.f7490b = new long[10];
    }

    public void a(AudioTrack audioTrack, int i2, int i3, int i4) {
        this.f7491c = audioTrack;
        this.f7492d = i3;
        this.f7493e = i4;
        this.f7494f = new r(audioTrack);
        this.f7495g = audioTrack.getSampleRate();
        this.f7496h = a(i2);
        this.o = I.f(i2);
        this.f7497i = this.o ? a((long) (i4 / i3)) : -9223372036854775807L;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.n = false;
        this.v = -9223372036854775807L;
        this.w = -9223372036854775807L;
        this.m = 0;
    }

    public int b(long j2) {
        return this.f7493e - ((int) (j2 - (b() * ((long) this.f7492d))));
    }

    public void c(long j2) {
        this.x = b();
        this.v = SystemClock.elapsedRealtime() * 1000;
        this.y = j2;
    }

    public boolean d() {
        AudioTrack audioTrack = this.f7491c;
        C0737e.a(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    public boolean e(long j2) {
        return this.w != -9223372036854775807L && j2 > 0 && SystemClock.elapsedRealtime() - this.w >= 200;
    }

    public boolean f(long j2) {
        AudioTrack audioTrack = this.f7491c;
        C0737e.a(audioTrack);
        int playState = audioTrack.getPlayState();
        if (this.f7496h) {
            if (playState == 2) {
                this.n = false;
                return false;
            } else if (playState == 1 && b() == 0) {
                return false;
            }
        }
        boolean z = this.n;
        this.n = d(j2);
        if (z && !this.n && playState != 1) {
            a aVar = this.f7489a;
            if (aVar != null) {
                aVar.a(this.f7493e, C0744q.b(this.f7497i));
            }
        }
        return true;
    }

    public void g() {
        h();
        this.f7491c = null;
        this.f7494f = null;
    }

    public final void h() {
        this.f7498j = 0;
        this.u = 0;
        this.t = 0;
        this.f7499k = 0;
    }

    public void i() {
        r rVar = this.f7494f;
        C0737e.a(rVar);
        rVar.g();
    }

    public boolean d(long j2) {
        return j2 > b() || a();
    }

    public final long b() {
        AudioTrack audioTrack = this.f7491c;
        C0737e.a(audioTrack);
        AudioTrack audioTrack2 = audioTrack;
        if (this.v != -9223372036854775807L) {
            return Math.min(this.y, this.x + ((((SystemClock.elapsedRealtime() * 1000) - this.v) * ((long) this.f7495g)) / RetryManager.NANOSECONDS_IN_MS));
        }
        int playState = audioTrack2.getPlayState();
        if (playState == 1) {
            return 0;
        }
        long playbackHeadPosition = 4294967295L & ((long) audioTrack2.getPlaybackHeadPosition());
        if (this.f7496h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.s = this.q;
            }
            playbackHeadPosition += this.s;
        }
        if (I.f9565a <= 29) {
            if (playbackHeadPosition == 0 && this.q > 0 && playState == 3) {
                if (this.w == -9223372036854775807L) {
                    this.w = SystemClock.elapsedRealtime();
                }
                return this.q;
            }
            this.w = -9223372036854775807L;
        }
        if (this.q > playbackHeadPosition) {
            this.r++;
        }
        this.q = playbackHeadPosition;
        return playbackHeadPosition + (this.r << 32);
    }

    public final void e() {
        long c2 = c();
        if (c2 != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.f7499k >= 30000) {
                long[] jArr = this.f7490b;
                int i2 = this.t;
                jArr[i2] = c2 - nanoTime;
                this.t = (i2 + 1) % 10;
                int i3 = this.u;
                if (i3 < 10) {
                    this.u = i3 + 1;
                }
                this.f7499k = nanoTime;
                this.f7498j = 0;
                int i4 = 0;
                while (true) {
                    int i5 = this.u;
                    if (i4 >= i5) {
                        break;
                    }
                    this.f7498j += this.f7490b[i4] / ((long) i5);
                    i4++;
                }
            }
            if (!this.f7496h) {
                a(nanoTime, c2);
                g(nanoTime);
            }
        }
    }

    public final long c() {
        return a(b());
    }

    public final void g(long j2) {
        if (this.o) {
            Method method = this.f7500l;
            if (method != null && j2 - this.p >= 500000) {
                try {
                    AudioTrack audioTrack = this.f7491c;
                    C0737e.a(audioTrack);
                    Integer num = (Integer) method.invoke(audioTrack, new Object[0]);
                    I.a(num);
                    this.m = (((long) num.intValue()) * 1000) - this.f7497i;
                    this.m = Math.max(this.m, 0);
                    if (this.m > 5000000) {
                        this.f7489a.a(this.m);
                        this.m = 0;
                    }
                } catch (Exception unused) {
                    this.f7500l = null;
                }
                this.p = j2;
            }
        }
    }

    public boolean f() {
        h();
        if (this.v != -9223372036854775807L) {
            return false;
        }
        r rVar = this.f7494f;
        C0737e.a(rVar);
        rVar.g();
        return true;
    }

    public long a(boolean z) {
        long j2;
        AudioTrack audioTrack = this.f7491c;
        C0737e.a(audioTrack);
        if (audioTrack.getPlayState() == 3) {
            e();
        }
        long nanoTime = System.nanoTime() / 1000;
        r rVar = this.f7494f;
        C0737e.a(rVar);
        r rVar2 = rVar;
        if (rVar2.d()) {
            long a2 = a(rVar2.b());
            if (!rVar2.e()) {
                return a2;
            }
            return a2 + (nanoTime - rVar2.c());
        }
        if (this.u == 0) {
            j2 = c();
        } else {
            j2 = nanoTime + this.f7498j;
        }
        if (!z) {
            j2 -= this.m;
        }
        return j2;
    }

    public final void a(long j2, long j3) {
        r rVar = this.f7494f;
        C0737e.a(rVar);
        r rVar2 = rVar;
        if (rVar2.a(j2)) {
            long c2 = rVar2.c();
            long b2 = rVar2.b();
            if (Math.abs(c2 - j2) > 5000000) {
                this.f7489a.b(b2, c2, j2, j3);
                rVar2.f();
            } else if (Math.abs(a(b2) - j3) > 5000000) {
                this.f7489a.a(b2, c2, j2, j3);
                rVar2.f();
            } else {
                rVar2.a();
            }
        }
    }

    public final long a(long j2) {
        return (j2 * RetryManager.NANOSECONDS_IN_MS) / ((long) this.f7495g);
    }

    public final boolean a() {
        if (this.f7496h) {
            AudioTrack audioTrack = this.f7491c;
            C0737e.a(audioTrack);
            if (audioTrack.getPlayState() == 2 && b() == 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(int i2) {
        return I.f9565a < 23 && (i2 == 5 || i2 == 6);
    }
}
