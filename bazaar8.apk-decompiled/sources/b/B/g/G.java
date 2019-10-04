package b.b.g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.ViewGroup;
import android.view.Window;
import b.b.f.a.k;
import b.b.f.a.t;
import b.i.k.I;

/* compiled from: DecorToolbar */
public interface G {
    I a(int i2, long j2);

    void a(int i2);

    void a(Menu menu, t.a aVar);

    void a(t.a aVar, k.a aVar2);

    void a(V v);

    void a(boolean z);

    boolean a();

    Context b();

    void b(int i2);

    void b(boolean z);

    void c();

    void c(int i2);

    void collapseActionView();

    boolean d();

    boolean e();

    boolean f();

    boolean g();

    CharSequence getTitle();

    void h();

    boolean i();

    Menu j();

    int k();

    ViewGroup l();

    int m();

    void n();

    void o();

    void setIcon(int i2);

    void setIcon(Drawable drawable);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
