package c.f.a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.squareup.picasso.Picasso;

/* compiled from: Stats */
public class L {

    /* renamed from: a  reason: collision with root package name */
    public final HandlerThread f11931a = new HandlerThread("Picasso-Stats", 10);

    /* renamed from: b  reason: collision with root package name */
    public final C1040k f11932b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f11933c;

    /* renamed from: d  reason: collision with root package name */
    public long f11934d;

    /* renamed from: e  reason: collision with root package name */
    public long f11935e;

    /* renamed from: f  reason: collision with root package name */
    public long f11936f;

    /* renamed from: g  reason: collision with root package name */
    public long f11937g;

    /* renamed from: h  reason: collision with root package name */
    public long f11938h;

    /* renamed from: i  reason: collision with root package name */
    public long f11939i;

    /* renamed from: j  reason: collision with root package name */
    public long f11940j;

    /* renamed from: k  reason: collision with root package name */
    public long f11941k;

    /* renamed from: l  reason: collision with root package name */
    public int f11942l;
    public int m;
    public int n;

    /* compiled from: Stats */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        public final L f11943a;

        public a(Looper looper, L l2) {
            super(looper);
            this.f11943a = l2;
        }

        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                this.f11943a.d();
            } else if (i2 == 1) {
                this.f11943a.e();
            } else if (i2 == 2) {
                this.f11943a.b((long) message.arg1);
            } else if (i2 == 3) {
                this.f11943a.c((long) message.arg1);
            } else if (i2 != 4) {
                Picasso.f13602a.post(new K(this, message));
            } else {
                this.f11943a.a((Long) message.obj);
            }
        }
    }

    public L(C1040k kVar) {
        this.f11932b = kVar;
        this.f11931a.start();
        P.a(this.f11931a.getLooper());
        this.f11933c = new a(this.f11931a.getLooper(), this);
    }

    public void a(Bitmap bitmap) {
        a(bitmap, 2);
    }

    public void b(Bitmap bitmap) {
        a(bitmap, 3);
    }

    public void c() {
        this.f11933c.sendEmptyMessage(1);
    }

    public void d() {
        this.f11934d++;
    }

    public void e() {
        this.f11935e++;
    }

    public void a(long j2) {
        Handler handler = this.f11933c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j2)));
    }

    public void b() {
        this.f11933c.sendEmptyMessage(0);
    }

    public void c(long j2) {
        this.n++;
        this.f11938h += j2;
        this.f11941k = a(this.m, this.f11938h);
    }

    public void a(Long l2) {
        this.f11942l++;
        this.f11936f += l2.longValue();
        this.f11939i = a(this.f11942l, this.f11936f);
    }

    public void b(long j2) {
        this.m++;
        this.f11937g += j2;
        this.f11940j = a(this.m, this.f11937g);
    }

    public M a() {
        M m2 = new M(this.f11932b.a(), this.f11932b.size(), this.f11934d, this.f11935e, this.f11936f, this.f11937g, this.f11938h, this.f11939i, this.f11940j, this.f11941k, this.f11942l, this.m, this.n, System.currentTimeMillis());
        return m2;
    }

    public final void a(Bitmap bitmap, int i2) {
        int a2 = P.a(bitmap);
        Handler handler = this.f11933c;
        handler.sendMessage(handler.obtainMessage(i2, a2, 0));
    }

    public static long a(int i2, long j2) {
        return j2 / ((long) i2);
    }
}
