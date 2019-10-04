package b.b.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.widget.Toolbar;
import b.b.g.Ca;
import b.f.d;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* compiled from: AppCompatDelegate */
public abstract class o {

    /* renamed from: a  reason: collision with root package name */
    public static int f1759a = -100;

    /* renamed from: b  reason: collision with root package name */
    public static final d<WeakReference<o>> f1760b = new d<>();

    /* renamed from: c  reason: collision with root package name */
    public static final Object f1761c = new Object();

    public static o a(Activity activity, n nVar) {
        return new AppCompatDelegateImpl(activity, nVar);
    }

    public static void b(o oVar) {
        synchronized (f1761c) {
            c(oVar);
        }
    }

    public static void c(o oVar) {
        synchronized (f1761c) {
            Iterator<WeakReference<o>> it = f1760b.iterator();
            while (it.hasNext()) {
                o oVar2 = (o) it.next().get();
                if (oVar2 == oVar || oVar2 == null) {
                    it.remove();
                }
            }
        }
    }

    public abstract <T extends View> T a(int i2);

    public void a(Context context) {
    }

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(Toolbar toolbar);

    public abstract void a(CharSequence charSequence);

    public int b() {
        return -100;
    }

    public abstract void b(Bundle bundle);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean b(int i2);

    public abstract MenuInflater c();

    public abstract void c(int i2);

    public abstract void c(Bundle bundle);

    public abstract C0190a d();

    public void d(int i2) {
    }

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract void i();

    public abstract void j();

    public static o a(Dialog dialog, n nVar) {
        return new AppCompatDelegateImpl(dialog, nVar);
    }

    public static int a() {
        return f1759a;
    }

    public static void a(boolean z) {
        Ca.a(z);
    }

    public static void a(o oVar) {
        synchronized (f1761c) {
            c(oVar);
            f1760b.add(new WeakReference(oVar));
        }
    }
}
