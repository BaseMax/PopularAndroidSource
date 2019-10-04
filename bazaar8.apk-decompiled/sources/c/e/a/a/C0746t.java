package c.e.a.a;

import c.e.a.a.l.o;
import c.e.a.a.n.e;
import c.e.a.a.n.m;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.BackgroundManager;
import com.crashlytics.android.core.LogFileManager;
import com.crashlytics.android.core.SessionProtobufHelper;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* renamed from: c.e.a.a.t  reason: case insensitive filesystem */
/* compiled from: DefaultLoadControl */
public class C0746t implements F {

    /* renamed from: a  reason: collision with root package name */
    public final m f9733a;

    /* renamed from: b  reason: collision with root package name */
    public final long f9734b;

    /* renamed from: c  reason: collision with root package name */
    public final long f9735c;

    /* renamed from: d  reason: collision with root package name */
    public final long f9736d;

    /* renamed from: e  reason: collision with root package name */
    public final long f9737e;

    /* renamed from: f  reason: collision with root package name */
    public final long f9738f;

    /* renamed from: g  reason: collision with root package name */
    public final int f9739g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f9740h;

    /* renamed from: i  reason: collision with root package name */
    public final long f9741i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f9742j;

    /* renamed from: k  reason: collision with root package name */
    public int f9743k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f9744l;
    public boolean m;

    public C0746t() {
        this(new m(true, LogFileManager.MAX_LOG_SIZE));
    }

    public void a() {
        a(false);
    }

    public boolean b() {
        return this.f9742j;
    }

    public long c() {
        return this.f9741i;
    }

    public void d() {
        a(true);
    }

    public e e() {
        return this.f9733a;
    }

    public void f() {
        a(true);
    }

    @Deprecated
    public C0746t(m mVar) {
        this(mVar, 15000, 50000, 50000, 2500, BackgroundManager.BACKGROUND_DELAY, -1, true, 0, false);
    }

    public static boolean b(Q[] qArr, o oVar) {
        for (int i2 = 0; i2 < qArr.length; i2++) {
            if (qArr[i2].f() == 2 && oVar.a(i2) != null) {
                return true;
            }
        }
        return false;
    }

    public void a(Q[] qArr, TrackGroupArray trackGroupArray, o oVar) {
        this.m = b(qArr, oVar);
        int i2 = this.f9739g;
        if (i2 == -1) {
            i2 = a(qArr, oVar);
        }
        this.f9743k = i2;
        this.f9733a.a(this.f9743k);
    }

    public C0746t(m mVar, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8, boolean z2) {
        int i9 = i3;
        int i10 = i4;
        int i11 = i5;
        int i12 = i6;
        int i13 = i8;
        a(i11, 0, "bufferForPlaybackMs", SessionProtobufHelper.SIGNAL_DEFAULT);
        a(i12, 0, "bufferForPlaybackAfterRebufferMs", SessionProtobufHelper.SIGNAL_DEFAULT);
        a(i2, i11, "minBufferAudioMs", "bufferForPlaybackMs");
        a(i9, i11, "minBufferVideoMs", "bufferForPlaybackMs");
        a(i2, i12, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        a(i9, i12, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        a(i10, i2, "maxBufferMs", "minBufferAudioMs");
        a(i10, i9, "maxBufferMs", "minBufferVideoMs");
        a(i13, 0, "backBufferDurationMs", SessionProtobufHelper.SIGNAL_DEFAULT);
        this.f9733a = mVar;
        this.f9734b = C0744q.a((long) i2);
        this.f9735c = C0744q.a((long) i9);
        this.f9736d = C0744q.a((long) i10);
        this.f9737e = C0744q.a((long) i11);
        this.f9738f = C0744q.a((long) i12);
        this.f9739g = i7;
        this.f9740h = z;
        this.f9741i = C0744q.a((long) i13);
        this.f9742j = z2;
    }

    public boolean a(long j2, float f2) {
        boolean z = true;
        boolean z2 = this.f9733a.d() >= this.f9743k;
        long j3 = this.m ? this.f9735c : this.f9734b;
        if (f2 > 1.0f) {
            j3 = Math.min(I.a(j3, f2), this.f9736d);
        }
        if (j2 < j3) {
            if (!this.f9740h && z2) {
                z = false;
            }
            this.f9744l = z;
        } else if (j2 >= this.f9736d || z2) {
            this.f9744l = false;
        }
        return this.f9744l;
    }

    public boolean a(long j2, float f2, boolean z) {
        long b2 = I.b(j2, f2);
        long j3 = z ? this.f9738f : this.f9737e;
        return j3 <= 0 || b2 >= j3 || (!this.f9740h && this.f9733a.d() >= this.f9743k);
    }

    public int a(Q[] qArr, o oVar) {
        int i2 = 0;
        for (int i3 = 0; i3 < qArr.length; i3++) {
            if (oVar.a(i3) != null) {
                i2 += I.b(qArr[i3].f());
            }
        }
        return i2;
    }

    public final void a(boolean z) {
        this.f9743k = 0;
        this.f9744l = false;
        if (z) {
            this.f9733a.e();
        }
    }

    public static void a(int i2, int i3, String str, String str2) {
        boolean z = i2 >= i3;
        C0737e.a(z, (Object) str + " cannot be less than " + str2);
    }
}
