package b.a;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.ImmLeaksCleaner;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Lifecycle;
import b.A.b;
import b.A.c;
import b.i.a.k;
import b.r.A;
import b.r.H;
import b.r.I;
import b.r.m;

/* renamed from: b.a.c  reason: case insensitive filesystem */
/* compiled from: ComponentActivity */
public class C0188c extends k implements b.r.k, I, c, g {

    /* renamed from: b  reason: collision with root package name */
    public final m f1660b = new m(this);

    /* renamed from: c  reason: collision with root package name */
    public final b f1661c = b.a((c) this);

    /* renamed from: d  reason: collision with root package name */
    public H f1662d;

    /* renamed from: e  reason: collision with root package name */
    public final OnBackPressedDispatcher f1663e = new OnBackPressedDispatcher(new C0187b(this));

    /* renamed from: f  reason: collision with root package name */
    public int f1664f;

    /* renamed from: b.a.c$a */
    /* compiled from: ComponentActivity */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Object f1665a;

        /* renamed from: b  reason: collision with root package name */
        public H f1666b;
    }

    public C0188c() {
        if (b() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                b().a(new ComponentActivity$2(this));
            }
            b().a(new ComponentActivity$3(this));
            int i2 = Build.VERSION.SDK_INT;
            if (19 <= i2 && i2 <= 23) {
                b().a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    public Lifecycle b() {
        return this.f1660b;
    }

    public final OnBackPressedDispatcher c() {
        return this.f1663e;
    }

    public final b.A.a d() {
        return this.f1661c.a();
    }

    public H e() {
        if (getApplication() != null) {
            if (this.f1662d == null) {
                a aVar = (a) getLastNonConfigurationInstance();
                if (aVar != null) {
                    this.f1662d = aVar.f1666b;
                }
                if (this.f1662d == null) {
                    this.f1662d = new H();
                }
            }
            return this.f1662d;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    public void onBackPressed() {
        this.f1663e.a();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1661c.a(bundle);
        A.b((Activity) this);
        int i2 = this.f1664f;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    public final Object onRetainNonConfigurationInstance() {
        Object q = q();
        H h2 = this.f1662d;
        if (h2 == null) {
            a aVar = (a) getLastNonConfigurationInstance();
            if (aVar != null) {
                h2 = aVar.f1666b;
            }
        }
        if (h2 == null && q == null) {
            return null;
        }
        a aVar2 = new a();
        aVar2.f1665a = q;
        aVar2.f1666b = h2;
        return aVar2;
    }

    public void onSaveInstanceState(Bundle bundle) {
        Lifecycle b2 = b();
        if (b2 instanceof m) {
            ((m) b2).d(Lifecycle.State.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f1661c.b(bundle);
    }

    @Deprecated
    public Object q() {
        return null;
    }
}
