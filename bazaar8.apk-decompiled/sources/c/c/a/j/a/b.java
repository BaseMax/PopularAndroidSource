package c.c.a.j.a;

import android.view.View;

/* compiled from: OnLongClickListener */
public final class b implements View.OnLongClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final a f6067a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6068b;

    /* compiled from: OnLongClickListener */
    public interface a {
        boolean a(int i2, View view);
    }

    public b(a aVar, int i2) {
        this.f6067a = aVar;
        this.f6068b = i2;
    }

    public boolean onLongClick(View view) {
        return this.f6067a.a(this.f6068b, view);
    }
}
