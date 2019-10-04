package b.H.a.b.b;

import android.content.Context;

/* compiled from: Trackers */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static h f1417a;

    /* renamed from: b  reason: collision with root package name */
    public a f1418b;

    /* renamed from: c  reason: collision with root package name */
    public b f1419c;

    /* renamed from: d  reason: collision with root package name */
    public f f1420d;

    /* renamed from: e  reason: collision with root package name */
    public g f1421e;

    public h(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f1418b = new a(applicationContext);
        this.f1419c = new b(applicationContext);
        this.f1420d = new f(applicationContext);
        this.f1421e = new g(applicationContext);
    }

    public static synchronized h a(Context context) {
        h hVar;
        synchronized (h.class) {
            if (f1417a == null) {
                f1417a = new h(context);
            }
            hVar = f1417a;
        }
        return hVar;
    }

    public b b() {
        return this.f1419c;
    }

    public f c() {
        return this.f1420d;
    }

    public g d() {
        return this.f1421e;
    }

    public a a() {
        return this.f1418b;
    }
}
