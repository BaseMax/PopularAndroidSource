package c.c.a.j.a;

import android.view.View;

/* compiled from: OnClickListener */
public final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final C0085a f6065a;

    /* renamed from: b  reason: collision with root package name */
    public final int f6066b;

    /* renamed from: c.c.a.j.a.a$a  reason: collision with other inner class name */
    /* compiled from: OnClickListener */
    public interface C0085a {
        void b(int i2, View view);
    }

    public a(C0085a aVar, int i2) {
        this.f6065a = aVar;
        this.f6066b = i2;
    }

    public void onClick(View view) {
        this.f6065a.b(this.f6066b, view);
    }
}
