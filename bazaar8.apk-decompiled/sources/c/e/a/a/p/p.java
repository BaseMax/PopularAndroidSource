package c.e.a.a.p;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import c.e.a.a.o.I;

/* compiled from: VideoFrameReleaseTimeHelper */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final WindowManager f9706a;

    /* renamed from: b  reason: collision with root package name */
    public final b f9707b;

    /* renamed from: c  reason: collision with root package name */
    public final a f9708c;

    /* renamed from: d  reason: collision with root package name */
    public long f9709d;

    /* renamed from: e  reason: collision with root package name */
    public long f9710e;

    /* renamed from: f  reason: collision with root package name */
    public long f9711f;

    /* renamed from: g  reason: collision with root package name */
    public long f9712g;

    /* renamed from: h  reason: collision with root package name */
    public long f9713h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f9714i;

    /* renamed from: j  reason: collision with root package name */
    public long f9715j;

    /* renamed from: k  reason: collision with root package name */
    public long f9716k;

    /* renamed from: l  reason: collision with root package name */
    public long f9717l;

    @TargetApi(17)
    /* compiled from: VideoFrameReleaseTimeHelper */
    private final class a implements DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        public final DisplayManager f9718a;

        public a(DisplayManager displayManager) {
            this.f9718a = displayManager;
        }

        public void a() {
            this.f9718a.registerDisplayListener(this, null);
        }

        public void b() {
            this.f9718a.unregisterDisplayListener(this);
        }

        public void onDisplayAdded(int i2) {
        }

        public void onDisplayChanged(int i2) {
            if (i2 == 0) {
                p.this.c();
            }
        }

        public void onDisplayRemoved(int i2) {
        }
    }

    /* compiled from: VideoFrameReleaseTimeHelper */
    private static final class b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        public static final b f9720a = new b();

        /* renamed from: b  reason: collision with root package name */
        public volatile long f9721b = -9223372036854775807L;

        /* renamed from: c  reason: collision with root package name */
        public final Handler f9722c;

        /* renamed from: d  reason: collision with root package name */
        public final HandlerThread f9723d = new HandlerThread("ChoreographerOwner:Handler");

        /* renamed from: e  reason: collision with root package name */
        public Choreographer f9724e;

        /* renamed from: f  reason: collision with root package name */
        public int f9725f;

        public b() {
            this.f9723d.start();
            this.f9722c = I.a(this.f9723d.getLooper(), (Handler.Callback) this);
            this.f9722c.sendEmptyMessage(0);
        }

        public static b d() {
            return f9720a;
        }

        public void a() {
            this.f9722c.sendEmptyMessage(1);
        }

        public final void b() {
            this.f9725f++;
            if (this.f9725f == 1) {
                this.f9724e.postFrameCallback(this);
            }
        }

        public final void c() {
            this.f9724e = Choreographer.getInstance();
        }

        public void doFrame(long j2) {
            this.f9721b = j2;
            this.f9724e.postFrameCallbackDelayed(this, 500);
        }

        public void e() {
            this.f9722c.sendEmptyMessage(2);
        }

        public final void f() {
            this.f9725f--;
            if (this.f9725f == 0) {
                this.f9724e.removeFrameCallback(this);
                this.f9721b = -9223372036854775807L;
            }
        }

        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                c();
                return true;
            } else if (i2 == 1) {
                b();
                return true;
            } else if (i2 != 2) {
                return false;
            } else {
                f();
                return true;
            }
        }
    }

    public p(Context context) {
        a aVar = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.f9706a = (WindowManager) context.getSystemService("window");
        } else {
            this.f9706a = null;
        }
        if (this.f9706a != null) {
            this.f9708c = I.f9565a >= 17 ? a(context) : aVar;
            this.f9707b = b.d();
        } else {
            this.f9708c = null;
            this.f9707b = null;
        }
        this.f9709d = -9223372036854775807L;
        this.f9710e = -9223372036854775807L;
    }

    public void b() {
        this.f9714i = false;
        if (this.f9706a != null) {
            this.f9707b.a();
            a aVar = this.f9708c;
            if (aVar != null) {
                aVar.a();
            }
            c();
        }
    }

    public final void c() {
        Display defaultDisplay = this.f9706a.getDefaultDisplay();
        if (defaultDisplay != null) {
            double refreshRate = (double) defaultDisplay.getRefreshRate();
            Double.isNaN(refreshRate);
            this.f9709d = (long) (1.0E9d / refreshRate);
            this.f9710e = (this.f9709d * 80) / 100;
        }
    }

    public void a() {
        if (this.f9706a != null) {
            a aVar = this.f9708c;
            if (aVar != null) {
                aVar.b();
            }
            this.f9707b.e();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0048  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long a(long r11, long r13) {
        /*
            r10 = this;
            r0 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r11
            boolean r2 = r10.f9714i
            if (r2 == 0) goto L_0x0042
            long r2 = r10.f9711f
            int r4 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r4 == 0) goto L_0x0019
            long r2 = r10.f9717l
            r4 = 1
            long r2 = r2 + r4
            r10.f9717l = r2
            long r2 = r10.f9713h
            r10.f9712g = r2
        L_0x0019:
            long r2 = r10.f9717l
            r4 = 6
            r6 = 0
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 < 0) goto L_0x003a
            long r4 = r10.f9716k
            long r4 = r0 - r4
            long r4 = r4 / r2
            long r2 = r10.f9712g
            long r2 = r2 + r4
            boolean r4 = r10.b(r2, r13)
            if (r4 == 0) goto L_0x0033
            r10.f9714i = r6
            goto L_0x0042
        L_0x0033:
            long r4 = r10.f9715j
            long r4 = r4 + r2
            long r6 = r10.f9716k
            long r4 = r4 - r6
            goto L_0x0044
        L_0x003a:
            boolean r2 = r10.b(r0, r13)
            if (r2 == 0) goto L_0x0042
            r10.f9714i = r6
        L_0x0042:
            r4 = r13
            r2 = r0
        L_0x0044:
            boolean r6 = r10.f9714i
            if (r6 != 0) goto L_0x0053
            r10.f9716k = r0
            r10.f9715j = r13
            r13 = 0
            r10.f9717l = r13
            r13 = 1
            r10.f9714i = r13
        L_0x0053:
            r10.f9711f = r11
            r10.f9713h = r2
            c.e.a.a.p.p$b r11 = r10.f9707b
            if (r11 == 0) goto L_0x0078
            long r12 = r10.f9709d
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r14 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r14 != 0) goto L_0x0067
            goto L_0x0078
        L_0x0067:
            long r6 = r11.f9721b
            int r11 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r11 != 0) goto L_0x006e
            return r4
        L_0x006e:
            long r8 = r10.f9709d
            long r11 = a(r4, r6, r8)
            long r13 = r10.f9710e
            long r11 = r11 - r13
            return r11
        L_0x0078:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.p.p.a(long, long):long");
    }

    public final boolean b(long j2, long j3) {
        return Math.abs((j3 - this.f9715j) - (j2 - this.f9716k)) > 20000000;
    }

    @TargetApi(17)
    public final a a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager == null) {
            return null;
        }
        return new a(displayManager);
    }

    public static long a(long j2, long j3, long j4) {
        long j5;
        long j6 = j3 + (((j2 - j3) / j4) * j4);
        if (j2 <= j6) {
            j5 = j6 - j4;
        } else {
            long j7 = j6;
            j6 = j4 + j6;
            j5 = j7;
        }
        return j6 - j2 < j2 - j5 ? j6 : j5;
    }
}
