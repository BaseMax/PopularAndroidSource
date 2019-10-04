package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* compiled from: Snapshot */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public int f2425a;

    /* renamed from: b  reason: collision with root package name */
    public int f2426b;

    /* renamed from: c  reason: collision with root package name */
    public int f2427c;

    /* renamed from: d  reason: collision with root package name */
    public int f2428d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<a> f2429e = new ArrayList<>();

    /* compiled from: Snapshot */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public ConstraintAnchor f2430a;

        /* renamed from: b  reason: collision with root package name */
        public ConstraintAnchor f2431b;

        /* renamed from: c  reason: collision with root package name */
        public int f2432c;

        /* renamed from: d  reason: collision with root package name */
        public ConstraintAnchor.Strength f2433d;

        /* renamed from: e  reason: collision with root package name */
        public int f2434e;

        public a(ConstraintAnchor constraintAnchor) {
            this.f2430a = constraintAnchor;
            this.f2431b = constraintAnchor.g();
            this.f2432c = constraintAnchor.b();
            this.f2433d = constraintAnchor.f();
            this.f2434e = constraintAnchor.a();
        }

        public void a(ConstraintWidget constraintWidget) {
            constraintWidget.a(this.f2430a.h()).a(this.f2431b, this.f2432c, this.f2433d, this.f2434e);
        }

        public void b(ConstraintWidget constraintWidget) {
            this.f2430a = constraintWidget.a(this.f2430a.h());
            ConstraintAnchor constraintAnchor = this.f2430a;
            if (constraintAnchor != null) {
                this.f2431b = constraintAnchor.g();
                this.f2432c = this.f2430a.b();
                this.f2433d = this.f2430a.f();
                this.f2434e = this.f2430a.a();
                return;
            }
            this.f2431b = null;
            this.f2432c = 0;
            this.f2433d = ConstraintAnchor.Strength.STRONG;
            this.f2434e = 0;
        }
    }

    public o(ConstraintWidget constraintWidget) {
        this.f2425a = constraintWidget.x();
        this.f2426b = constraintWidget.y();
        this.f2427c = constraintWidget.u();
        this.f2428d = constraintWidget.j();
        ArrayList<ConstraintAnchor> c2 = constraintWidget.c();
        int size = c2.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2429e.add(new a(c2.get(i2)));
        }
    }

    public void a(ConstraintWidget constraintWidget) {
        constraintWidget.n(this.f2425a);
        constraintWidget.o(this.f2426b);
        constraintWidget.k(this.f2427c);
        constraintWidget.c(this.f2428d);
        int size = this.f2429e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2429e.get(i2).a(constraintWidget);
        }
    }

    public void b(ConstraintWidget constraintWidget) {
        this.f2425a = constraintWidget.x();
        this.f2426b = constraintWidget.y();
        this.f2427c = constraintWidget.u();
        this.f2428d = constraintWidget.j();
        int size = this.f2429e.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2429e.get(i2).b(constraintWidget);
        }
    }
}
