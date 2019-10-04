package c.e.a.a.d;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import c.e.a.a.C0744q;
import c.e.a.a.d.n;
import c.e.a.a.d.o;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.l;
import c.e.a.a.o.p;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.answers.BackgroundManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.KeysExpiredException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@TargetApi(18)
/* compiled from: DefaultDrmSession */
public class g<T extends n> implements DrmSession<T> {

    /* renamed from: a  reason: collision with root package name */
    public final List<DrmInitData.SchemeData> f7570a;

    /* renamed from: b  reason: collision with root package name */
    public final o<T> f7571b;

    /* renamed from: c  reason: collision with root package name */
    public final c<T> f7572c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7573d;

    /* renamed from: e  reason: collision with root package name */
    public final HashMap<String, String> f7574e;

    /* renamed from: f  reason: collision with root package name */
    public final l<h> f7575f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7576g;

    /* renamed from: h  reason: collision with root package name */
    public final q f7577h;

    /* renamed from: i  reason: collision with root package name */
    public final UUID f7578i;

    /* renamed from: j  reason: collision with root package name */
    public final g<T>.defpackage.b f7579j;

    /* renamed from: k  reason: collision with root package name */
    public int f7580k;

    /* renamed from: l  reason: collision with root package name */
    public int f7581l;
    public HandlerThread m;
    public g<T>.defpackage.a n;
    public T o;
    public DrmSession.DrmSessionException p;
    public byte[] q;
    public byte[] r;
    public o.a s;
    public o.b t;

    @SuppressLint({"HandlerLeak"})
    /* compiled from: DefaultDrmSession */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void a(int i2, Object obj, boolean z) {
            obtainMessage(i2, z ? 1 : 0, 0, obj).sendToTarget();
        }

        public void handleMessage(Message message) {
            Object obj = message.obj;
            try {
                int i2 = message.what;
                if (i2 == 0) {
                    e = g.this.f7577h.a(g.this.f7578i, (o.b) obj);
                } else if (i2 == 1) {
                    e = g.this.f7577h.a(g.this.f7578i, (o.a) obj);
                } else {
                    throw new RuntimeException();
                }
            } catch (Exception e2) {
                e = e2;
                if (a(message)) {
                    return;
                }
            }
            g.this.f7579j.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
        }

        public final boolean a(Message message) {
            if (!(message.arg1 == 1)) {
                return false;
            }
            int i2 = message.arg2 + 1;
            if (i2 > g.this.f7576g) {
                return false;
            }
            Message obtain = Message.obtain(message);
            obtain.arg2 = i2;
            sendMessageDelayed(obtain, a(i2));
            return true;
        }

        public final long a(int i2) {
            return (long) Math.min((i2 - 1) * AnswersRetryFilesSender.BACKOFF_MS, BackgroundManager.BACKGROUND_DELAY);
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* compiled from: DefaultDrmSession */
    private class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i2 = message.what;
            if (i2 == 0) {
                g.this.b(obj, obj2);
            } else if (i2 == 1) {
                g.this.a(obj, obj2);
            }
        }
    }

    /* compiled from: DefaultDrmSession */
    public interface c<T extends n> {
        void a();

        void a(g<T> gVar);

        void a(Exception exc);
    }

    public g(UUID uuid, o<T> oVar, c<T> cVar, List<DrmInitData.SchemeData> list, int i2, byte[] bArr, HashMap<String, String> hashMap, q qVar, Looper looper, l<h> lVar, int i3) {
        if (i2 == 1 || i2 == 3) {
            C0737e.a(bArr);
        }
        this.f7578i = uuid;
        this.f7572c = cVar;
        this.f7571b = oVar;
        this.f7573d = i2;
        if (bArr != null) {
            this.r = bArr;
            this.f7570a = null;
        } else {
            C0737e.a(list);
            this.f7570a = Collections.unmodifiableList(list);
        }
        this.f7574e = hashMap;
        this.f7577h = qVar;
        this.f7576g = i3;
        this.f7575f = lVar;
        this.f7580k = 2;
        this.f7579j = new b(looper);
        this.m = new HandlerThread("DrmRequestHandler");
        this.m.start();
        this.n = new a(this.m.getLooper());
    }

    public void c(Exception exc) {
        a(exc);
    }

    public void d() {
        int i2 = this.f7581l + 1;
        this.f7581l = i2;
        if (i2 == 1 && this.f7580k != 1 && b(true)) {
            a(true);
        }
    }

    public final long e() {
        if (!C0744q.f9731d.equals(this.f7578i)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> a2 = r.a(this);
        C0737e.a(a2);
        Pair pair = a2;
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    public final boolean f() {
        int i2 = this.f7580k;
        return i2 == 3 || i2 == 4;
    }

    public final void g() {
        if (this.f7573d == 0 && this.f7580k == 4) {
            I.a(this.q);
            a(false);
        }
    }

    public final int getState() {
        return this.f7580k;
    }

    public void h() {
        if (b(false)) {
            a(true);
        }
    }

    public void i() {
        this.t = this.f7571b.a();
        this.n.a(0, this.t, true);
    }

    public boolean j() {
        int i2 = this.f7581l - 1;
        this.f7581l = i2;
        if (i2 != 0) {
            return false;
        }
        this.f7580k = 0;
        this.f7579j.removeCallbacksAndMessages(null);
        this.n.removeCallbacksAndMessages(null);
        this.n = null;
        this.m.quit();
        this.m = null;
        this.o = null;
        this.p = null;
        this.s = null;
        this.t = null;
        byte[] bArr = this.q;
        if (bArr != null) {
            this.f7571b.c(bArr);
            this.q = null;
            this.f7575f.a(a.f7564a);
        }
        return true;
    }

    public final boolean k() {
        try {
            this.f7571b.a(this.q, this.r);
            return true;
        } catch (Exception e2) {
            p.a("DefaultDrmSession", "Error trying to restore Widevine keys.", e2);
            a(e2);
            return false;
        }
    }

    public final T b() {
        return this.o;
    }

    public final DrmSession.DrmSessionException c() {
        if (this.f7580k == 1) {
            return this.p;
        }
        return null;
    }

    public boolean a(byte[] bArr) {
        return Arrays.equals(this.q, bArr);
    }

    public final boolean b(boolean z) {
        if (f()) {
            return true;
        }
        try {
            this.q = this.f7571b.b();
            this.f7575f.a(d.f7567a);
            this.o = this.f7571b.b(this.q);
            this.f7580k = 3;
            return true;
        } catch (NotProvisionedException e2) {
            if (z) {
                this.f7572c.a(this);
            } else {
                a((Exception) e2);
            }
            return false;
        } catch (Exception e3) {
            a(e3);
            return false;
        }
    }

    public void a(int i2) {
        if (i2 == 2) {
            g();
        }
    }

    public Map<String, String> a() {
        byte[] bArr = this.q;
        if (bArr == null) {
            return null;
        }
        return this.f7571b.a(bArr);
    }

    public final void a(boolean z) {
        int i2 = this.f7573d;
        if (i2 == 0 || i2 == 1) {
            if (this.r == null) {
                a(this.q, 1, z);
            } else if (this.f7580k == 4 || k()) {
                long e2 = e();
                if (this.f7573d == 0 && e2 <= 60) {
                    p.a("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + e2);
                    a(this.q, 2, z);
                } else if (e2 <= 0) {
                    a((Exception) new KeysExpiredException());
                } else {
                    this.f7580k = 4;
                    this.f7575f.a(e.f7568a);
                }
            }
        } else if (i2 != 2) {
            if (i2 == 3) {
                C0737e.a(this.r);
                if (k()) {
                    a(this.r, 3, z);
                }
            }
        } else if (this.r == null) {
            a(this.q, 2, z);
        } else if (k()) {
            a(this.q, 2, z);
        }
    }

    public final void b(Object obj, Object obj2) {
        if (obj == this.t && (this.f7580k == 2 || f())) {
            this.t = null;
            if (obj2 instanceof Exception) {
                this.f7572c.a((Exception) obj2);
                return;
            }
            try {
                this.f7571b.d((byte[]) obj2);
                this.f7572c.a();
            } catch (Exception e2) {
                this.f7572c.a(e2);
            }
        }
    }

    public final void b(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.f7572c.a(this);
        } else {
            a(exc);
        }
    }

    public final void a(byte[] bArr, int i2, boolean z) {
        try {
            this.s = this.f7571b.a(bArr, this.f7570a, i2, this.f7574e);
            this.n.a(1, this.s, z);
        } catch (Exception e2) {
            b(e2);
        }
    }

    public final void a(Object obj, Object obj2) {
        if (obj == this.s && f()) {
            this.s = null;
            if (obj2 instanceof Exception) {
                b((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f7573d == 3) {
                    o<T> oVar = this.f7571b;
                    byte[] bArr2 = this.r;
                    I.a(bArr2);
                    oVar.b(bArr2, bArr);
                    this.f7575f.a(e.f7568a);
                } else {
                    byte[] b2 = this.f7571b.b(this.q, bArr);
                    if (!((this.f7573d != 2 && (this.f7573d != 0 || this.r == null)) || b2 == null || b2.length == 0)) {
                        this.r = b2;
                    }
                    this.f7580k = 4;
                    this.f7575f.a(f.f7569a);
                }
            } catch (Exception e2) {
                b(e2);
            }
        }
    }

    public final void a(Exception exc) {
        this.p = new DrmSession.DrmSessionException(exc);
        this.f7575f.a(new b(exc));
        if (this.f7580k != 4) {
            this.f7580k = 1;
        }
    }
}
