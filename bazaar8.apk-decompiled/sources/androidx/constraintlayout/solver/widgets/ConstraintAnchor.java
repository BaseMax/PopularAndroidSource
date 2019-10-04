package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.SolverVariable;
import b.g.a.C0247c;
import b.g.a.a.h;
import b.g.a.a.l;

public class ConstraintAnchor {

    /* renamed from: a  reason: collision with root package name */
    public l f499a = new l(this);

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintWidget f500b;

    /* renamed from: c  reason: collision with root package name */
    public final Type f501c;

    /* renamed from: d  reason: collision with root package name */
    public ConstraintAnchor f502d;

    /* renamed from: e  reason: collision with root package name */
    public int f503e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f504f = -1;

    /* renamed from: g  reason: collision with root package name */
    public Strength f505g = Strength.NONE;

    /* renamed from: h  reason: collision with root package name */
    public ConnectionType f506h = ConnectionType.RELAXED;

    /* renamed from: i  reason: collision with root package name */
    public int f507i = 0;

    /* renamed from: j  reason: collision with root package name */
    public SolverVariable f508j;

    public enum ConnectionType {
        RELAXED,
        STRICT
    }

    public enum Strength {
        NONE,
        STRONG,
        WEAK
    }

    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.f500b = constraintWidget;
        this.f501c = type;
    }

    public void a(C0247c cVar) {
        SolverVariable solverVariable = this.f508j;
        if (solverVariable == null) {
            this.f508j = new SolverVariable(SolverVariable.Type.UNRESTRICTED, null);
        } else {
            solverVariable.b();
        }
    }

    public int b() {
        if (this.f500b.t() == 8) {
            return 0;
        }
        if (this.f504f > -1) {
            ConstraintAnchor constraintAnchor = this.f502d;
            if (constraintAnchor != null && constraintAnchor.f500b.t() == 8) {
                return this.f504f;
            }
        }
        return this.f503e;
    }

    public ConstraintWidget c() {
        return this.f500b;
    }

    public l d() {
        return this.f499a;
    }

    public SolverVariable e() {
        return this.f508j;
    }

    public Strength f() {
        return this.f505g;
    }

    public ConstraintAnchor g() {
        return this.f502d;
    }

    public Type h() {
        return this.f501c;
    }

    public boolean i() {
        return this.f502d != null;
    }

    public void j() {
        this.f502d = null;
        this.f503e = 0;
        this.f504f = -1;
        this.f505g = Strength.STRONG;
        this.f507i = 0;
        this.f506h = ConnectionType.RELAXED;
        this.f499a.d();
    }

    public String toString() {
        return this.f500b.g() + ":" + this.f501c.toString();
    }

    public int a() {
        return this.f507i;
    }

    public boolean a(ConstraintAnchor constraintAnchor, int i2, Strength strength, int i3) {
        return a(constraintAnchor, i2, -1, strength, i3, false);
    }

    public boolean a(ConstraintAnchor constraintAnchor, int i2, int i3, Strength strength, int i4, boolean z) {
        if (constraintAnchor == null) {
            this.f502d = null;
            this.f503e = 0;
            this.f504f = -1;
            this.f505g = Strength.NONE;
            this.f507i = 2;
            return true;
        } else if (!z && !a(constraintAnchor)) {
            return false;
        } else {
            this.f502d = constraintAnchor;
            if (i2 > 0) {
                this.f503e = i2;
            } else {
                this.f503e = 0;
            }
            this.f504f = i3;
            this.f505g = strength;
            this.f507i = i4;
            return true;
        }
    }

    public boolean a(ConstraintAnchor constraintAnchor) {
        boolean z = false;
        if (constraintAnchor == null) {
            return false;
        }
        Type h2 = constraintAnchor.h();
        Type type = this.f501c;
        if (h2 != type) {
            switch (d.f2407a[type.ordinal()]) {
                case 1:
                    if (!(h2 == Type.BASELINE || h2 == Type.CENTER_X || h2 == Type.CENTER_Y)) {
                        z = true;
                    }
                    return z;
                case 2:
                case 3:
                    boolean z2 = h2 == Type.LEFT || h2 == Type.RIGHT;
                    if (constraintAnchor.c() instanceof h) {
                        z2 = z2 || h2 == Type.CENTER_X;
                    }
                    return z2;
                case 4:
                case 5:
                    boolean z3 = h2 == Type.TOP || h2 == Type.BOTTOM;
                    if (constraintAnchor.c() instanceof h) {
                        z3 = z3 || h2 == Type.CENTER_Y;
                    }
                    return z3;
                case 6:
                case 7:
                case 8:
                case 9:
                    return false;
                default:
                    throw new AssertionError(this.f501c.name());
            }
        } else if (type != Type.BASELINE || (constraintAnchor.c().z() && c().z())) {
            return true;
        } else {
            return false;
        }
    }
}
