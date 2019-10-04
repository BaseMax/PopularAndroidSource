package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import b.g.a.C0247c;
import java.util.ArrayList;

/* compiled from: WidgetContainer */
public class p extends ConstraintWidget {
    public ArrayList<ConstraintWidget> pa = new ArrayList<>();

    public void C() {
        this.pa.clear();
        super.C();
    }

    public void G() {
        super.G();
        ArrayList<ConstraintWidget> arrayList = this.pa;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget = this.pa.get(i2);
                constraintWidget.b(h(), i());
                if (!(constraintWidget instanceof f)) {
                    constraintWidget.G();
                }
            }
        }
    }

    public f I() {
        ConstraintWidget m = m();
        f fVar = this instanceof f ? (f) this : null;
        while (m != null) {
            ConstraintWidget m2 = m.m();
            if (m instanceof f) {
                fVar = (f) m;
            }
            m = m2;
        }
        return fVar;
    }

    public void J() {
        G();
        ArrayList<ConstraintWidget> arrayList = this.pa;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget = this.pa.get(i2);
                if (constraintWidget instanceof p) {
                    ((p) constraintWidget).J();
                }
            }
        }
    }

    public void K() {
        this.pa.clear();
    }

    public void a(C0247c cVar) {
        super.a(cVar);
        int size = this.pa.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.pa.get(i2).a(cVar);
        }
    }

    public void b(ConstraintWidget constraintWidget) {
        this.pa.add(constraintWidget);
        if (constraintWidget.m() != null) {
            ((p) constraintWidget.m()).c(constraintWidget);
        }
        constraintWidget.a((ConstraintWidget) this);
    }

    public void c(ConstraintWidget constraintWidget) {
        this.pa.remove(constraintWidget);
        constraintWidget.a((ConstraintWidget) null);
    }

    public void b(int i2, int i3) {
        super.b(i2, i3);
        int size = this.pa.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.pa.get(i4).b(q(), r());
        }
    }
}
