package b.b.f;

import android.view.View;
import b.i.k.J;
import b.i.k.K;

/* compiled from: ViewPropertyAnimatorCompatSet */
class h extends K {

    /* renamed from: a  reason: collision with root package name */
    public boolean f1987a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f1988b = 0;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ i f1989c;

    public h(i iVar) {
        this.f1989c = iVar;
    }

    public void a() {
        this.f1988b = 0;
        this.f1987a = false;
        this.f1989c.b();
    }

    public void b(View view) {
        int i2 = this.f1988b + 1;
        this.f1988b = i2;
        if (i2 == this.f1989c.f1990a.size()) {
            J j2 = this.f1989c.f1993d;
            if (j2 != null) {
                j2.b(null);
            }
            a();
        }
    }

    public void c(View view) {
        if (!this.f1987a) {
            this.f1987a = true;
            J j2 = this.f1989c.f1993d;
            if (j2 != null) {
                j2.c(null);
            }
        }
    }
}
