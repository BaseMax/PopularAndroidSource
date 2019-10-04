package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* compiled from: ChainHead */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public ConstraintWidget f2395a;

    /* renamed from: b  reason: collision with root package name */
    public ConstraintWidget f2396b;

    /* renamed from: c  reason: collision with root package name */
    public ConstraintWidget f2397c;

    /* renamed from: d  reason: collision with root package name */
    public ConstraintWidget f2398d;

    /* renamed from: e  reason: collision with root package name */
    public ConstraintWidget f2399e;

    /* renamed from: f  reason: collision with root package name */
    public ConstraintWidget f2400f;

    /* renamed from: g  reason: collision with root package name */
    public ConstraintWidget f2401g;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<ConstraintWidget> f2402h;

    /* renamed from: i  reason: collision with root package name */
    public int f2403i;

    /* renamed from: j  reason: collision with root package name */
    public int f2404j;

    /* renamed from: k  reason: collision with root package name */
    public float f2405k = 0.0f;

    /* renamed from: l  reason: collision with root package name */
    public int f2406l;
    public boolean m = false;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;

    public c(ConstraintWidget constraintWidget, int i2, boolean z) {
        this.f2395a = constraintWidget;
        this.f2406l = i2;
        this.m = z;
    }

    public static boolean a(ConstraintWidget constraintWidget, int i2) {
        if (constraintWidget.t() != 8 && constraintWidget.E[i2] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.f519h;
            if (iArr[i2] == 0 || iArr[i2] == 3) {
                return true;
            }
        }
        return false;
    }

    public final void b() {
        int i2 = this.f2406l * 2;
        boolean z = false;
        ConstraintWidget constraintWidget = this.f2395a;
        boolean z2 = false;
        while (!z2) {
            this.f2403i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.ma;
            int i3 = this.f2406l;
            ConstraintWidget constraintWidget2 = null;
            constraintWidgetArr[i3] = null;
            constraintWidget.la[i3] = null;
            if (constraintWidget.t() != 8) {
                if (this.f2396b == null) {
                    this.f2396b = constraintWidget;
                }
                ConstraintWidget constraintWidget3 = this.f2398d;
                if (constraintWidget3 != null) {
                    constraintWidget3.ma[this.f2406l] = constraintWidget;
                }
                this.f2398d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.E;
                int i4 = this.f2406l;
                if (dimensionBehaviourArr[i4] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    int[] iArr = constraintWidget.f519h;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f2404j++;
                        float[] fArr = constraintWidget.ka;
                        int i5 = this.f2406l;
                        float f2 = fArr[i5];
                        if (f2 > 0.0f) {
                            this.f2405k += fArr[i5];
                        }
                        if (a(constraintWidget, this.f2406l)) {
                            if (f2 < 0.0f) {
                                this.n = true;
                            } else {
                                this.o = true;
                            }
                            if (this.f2402h == null) {
                                this.f2402h = new ArrayList<>();
                            }
                            this.f2402h.add(constraintWidget);
                        }
                        if (this.f2400f == null) {
                            this.f2400f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget4 = this.f2401g;
                        if (constraintWidget4 != null) {
                            constraintWidget4.la[this.f2406l] = constraintWidget;
                        }
                        this.f2401g = constraintWidget;
                    }
                }
            }
            ConstraintAnchor constraintAnchor = constraintWidget.C[i2 + 1].f502d;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget5 = constraintAnchor.f500b;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget5.C;
                if (constraintAnchorArr[i2].f502d != null && constraintAnchorArr[i2].f502d.f500b == constraintWidget) {
                    constraintWidget2 = constraintWidget5;
                }
            }
            if (constraintWidget2 != null) {
                constraintWidget = constraintWidget2;
            } else {
                z2 = true;
            }
        }
        this.f2397c = constraintWidget;
        if (this.f2406l != 0 || !this.m) {
            this.f2399e = this.f2395a;
        } else {
            this.f2399e = this.f2397c;
        }
        if (this.o && this.n) {
            z = true;
        }
        this.p = z;
    }

    public void a() {
        if (!this.q) {
            b();
        }
        this.q = true;
    }
}
