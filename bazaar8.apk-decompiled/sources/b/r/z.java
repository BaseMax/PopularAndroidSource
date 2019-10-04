package b.r;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import b.r.A;

/* compiled from: ProcessLifecycleOwner */
public class z implements k {

    /* renamed from: a  reason: collision with root package name */
    public static final z f3188a = new z();

    /* renamed from: b  reason: collision with root package name */
    public int f3189b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f3190c = 0;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3191d = true;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3192e = true;

    /* renamed from: f  reason: collision with root package name */
    public Handler f3193f;

    /* renamed from: g  reason: collision with root package name */
    public final m f3194g = new m(this);

    /* renamed from: h  reason: collision with root package name */
    public Runnable f3195h = new w(this);

    /* renamed from: i  reason: collision with root package name */
    public A.a f3196i = new x(this);

    public static void b(Context context) {
        f3188a.a(context);
    }

    public void a() {
        this.f3190c--;
        if (this.f3190c == 0) {
            this.f3193f.postDelayed(this.f3195h, 700);
        }
    }

    public void e() {
        this.f3190c++;
        if (this.f3190c != 1) {
            return;
        }
        if (this.f3191d) {
            this.f3194g.b(Lifecycle.Event.ON_RESUME);
            this.f3191d = false;
            return;
        }
        this.f3193f.removeCallbacks(this.f3195h);
    }

    public void f() {
        this.f3189b++;
        if (this.f3189b == 1 && this.f3192e) {
            this.f3194g.b(Lifecycle.Event.ON_START);
            this.f3192e = false;
        }
    }

    public void g() {
        this.f3189b--;
        i();
    }

    public void h() {
        if (this.f3190c == 0) {
            this.f3191d = true;
            this.f3194g.b(Lifecycle.Event.ON_PAUSE);
        }
    }

    public void i() {
        if (this.f3189b == 0 && this.f3191d) {
            this.f3194g.b(Lifecycle.Event.ON_STOP);
            this.f3192e = true;
        }
    }

    public Lifecycle b() {
        return this.f3194g;
    }

    public void a(Context context) {
        this.f3193f = new Handler();
        this.f3194g.b(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new y(this));
    }
}
