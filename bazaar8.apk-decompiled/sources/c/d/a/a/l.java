package c.d.a.a;

import android.view.ViewParent;
import c.d.a.a.p;

/* compiled from: PhotoViewAttacher */
class l implements d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ p f7200a;

    public l(p pVar) {
        this.f7200a = pVar;
    }

    public void a(float f2, float f3) {
        if (!this.f7200a.o.b()) {
            if (this.f7200a.C != null) {
                this.f7200a.C.a(f2, f3);
            }
            this.f7200a.r.postTranslate(f2, f3);
            this.f7200a.d();
            ViewParent parent = this.f7200a.m.getParent();
            if (!this.f7200a.f7214k || this.f7200a.o.b() || this.f7200a.f7215l) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((this.f7200a.E == 2 || ((this.f7200a.E == 0 && f2 >= 1.0f) || ((this.f7200a.E == 1 && f2 <= -1.0f) || ((this.f7200a.F == 0 && f3 >= 1.0f) || (this.f7200a.F == 1 && f3 <= -1.0f))))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
            }
        }
    }

    public void a(float f2, float f3, float f4, float f5) {
        p pVar = this.f7200a;
        p.b unused = pVar.D = new p.b(pVar.m.getContext());
        p.b u = this.f7200a.D;
        p pVar2 = this.f7200a;
        int a2 = pVar2.b(pVar2.m);
        p pVar3 = this.f7200a;
        u.a(a2, pVar3.a(pVar3.m), (int) f4, (int) f5);
        this.f7200a.m.post(this.f7200a.D);
    }

    public void a(float f2, float f3, float f4) {
        if (this.f7200a.l() < this.f7200a.f7213j || f2 < 1.0f) {
            if (this.f7200a.A != null) {
                this.f7200a.A.a(f2, f3, f4);
            }
            this.f7200a.r.postScale(f2, f2, f3, f4);
            this.f7200a.d();
        }
    }
}
