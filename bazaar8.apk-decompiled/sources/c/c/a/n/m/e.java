package c.c.a.n.m;

import c.c.a.c.c.a;
import c.c.a.d.a.c;
import com.farsitel.bazaar.ui.home.MainActivity;

/* compiled from: MainActivity.kt */
public final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MainActivity f6683a;

    public e(MainActivity mainActivity) {
        this.f6683a = mainActivity;
    }

    public void a(int i2) {
        if (i2 == 46755) {
            this.f6683a.H = null;
            a.f4699b.b(new Throwable("Location Permission Declined by user in MainActivity with don't ask again"));
        }
    }

    public void b(int i2) {
        if (i2 == 46755) {
            this.f6683a.E().e(true);
            this.f6683a.H = null;
        }
    }

    public void c(int i2) {
        if (i2 == 46755) {
            this.f6683a.E().q();
            a.f4699b.b(new Throwable("Location Permission Declined by user in MainActivity"));
            this.f6683a.H = null;
        }
    }
}
