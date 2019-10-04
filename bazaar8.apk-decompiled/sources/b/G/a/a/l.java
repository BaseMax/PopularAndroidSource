package b.g.a.a;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import b.g.a.C0249e;

/* compiled from: ResolutionAnchor */
public class l extends n {

    /* renamed from: c  reason: collision with root package name */
    public ConstraintAnchor f2412c;

    /* renamed from: d  reason: collision with root package name */
    public float f2413d;

    /* renamed from: e  reason: collision with root package name */
    public l f2414e;

    /* renamed from: f  reason: collision with root package name */
    public float f2415f;

    /* renamed from: g  reason: collision with root package name */
    public l f2416g;

    /* renamed from: h  reason: collision with root package name */
    public float f2417h;

    /* renamed from: i  reason: collision with root package name */
    public int f2418i = 0;

    /* renamed from: j  reason: collision with root package name */
    public l f2419j;

    /* renamed from: k  reason: collision with root package name */
    public float f2420k;

    /* renamed from: l  reason: collision with root package name */
    public m f2421l = null;
    public int m = 1;
    public m n = null;
    public int o = 1;

    public l(ConstraintAnchor constraintAnchor) {
        this.f2412c = constraintAnchor;
    }

    public String a(int i2) {
        return i2 == 1 ? "DIRECT" : i2 == 2 ? "CENTER" : i2 == 3 ? "MATCH" : i2 == 4 ? "CHAIN" : i2 == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void a(l lVar, float f2) {
        if (this.f2424b == 0 || !(this.f2416g == lVar || this.f2417h == f2)) {
            this.f2416g = lVar;
            this.f2417h = f2;
            if (this.f2424b == 1) {
                b();
            }
            a();
        }
    }

    public void b(int i2) {
        this.f2418i = i2;
    }

    public void d() {
        super.d();
        this.f2414e = null;
        this.f2415f = 0.0f;
        this.f2421l = null;
        this.m = 1;
        this.n = null;
        this.o = 1;
        this.f2416g = null;
        this.f2417h = 0.0f;
        this.f2413d = 0.0f;
        this.f2419j = null;
        this.f2420k = 0.0f;
        this.f2418i = 0;
    }

    public void e() {
        float f2;
        float f3;
        float f4;
        float f5;
        boolean z = true;
        if (this.f2424b != 1 && this.f2418i != 4) {
            m mVar = this.f2421l;
            if (mVar != null) {
                if (mVar.f2424b == 1) {
                    this.f2415f = ((float) this.m) * mVar.f2422c;
                } else {
                    return;
                }
            }
            m mVar2 = this.n;
            if (mVar2 != null) {
                if (mVar2.f2424b == 1) {
                    this.f2420k = ((float) this.o) * mVar2.f2422c;
                } else {
                    return;
                }
            }
            if (this.f2418i == 1) {
                l lVar = this.f2414e;
                if (lVar == null || lVar.f2424b == 1) {
                    l lVar2 = this.f2414e;
                    if (lVar2 == null) {
                        this.f2416g = this;
                        this.f2417h = this.f2415f;
                    } else {
                        this.f2416g = lVar2.f2416g;
                        this.f2417h = lVar2.f2417h + this.f2415f;
                    }
                    a();
                }
            }
            if (this.f2418i == 2) {
                l lVar3 = this.f2414e;
                if (lVar3 != null && lVar3.f2424b == 1) {
                    l lVar4 = this.f2419j;
                    if (lVar4 != null) {
                        l lVar5 = lVar4.f2414e;
                        if (lVar5 != null && lVar5.f2424b == 1) {
                            if (C0249e.f() != null) {
                                C0249e.f().v++;
                            }
                            this.f2416g = this.f2414e.f2416g;
                            l lVar6 = this.f2419j;
                            lVar6.f2416g = lVar6.f2414e.f2416g;
                            ConstraintAnchor.Type type = this.f2412c.f501c;
                            int i2 = 0;
                            if (!(type == ConstraintAnchor.Type.RIGHT || type == ConstraintAnchor.Type.BOTTOM)) {
                                z = false;
                            }
                            if (z) {
                                f3 = this.f2414e.f2417h;
                                f2 = this.f2419j.f2414e.f2417h;
                            } else {
                                f3 = this.f2419j.f2414e.f2417h;
                                f2 = this.f2414e.f2417h;
                            }
                            float f6 = f3 - f2;
                            ConstraintAnchor constraintAnchor = this.f2412c;
                            ConstraintAnchor.Type type2 = constraintAnchor.f501c;
                            if (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT) {
                                f5 = f6 - ((float) this.f2412c.f500b.u());
                                f4 = this.f2412c.f500b.X;
                            } else {
                                f5 = f6 - ((float) constraintAnchor.f500b.j());
                                f4 = this.f2412c.f500b.Y;
                            }
                            int b2 = this.f2412c.b();
                            int b3 = this.f2419j.f2412c.b();
                            if (this.f2412c.g() == this.f2419j.f2412c.g()) {
                                f4 = 0.5f;
                                b3 = 0;
                            } else {
                                i2 = b2;
                            }
                            float f7 = (float) i2;
                            float f8 = (float) b3;
                            float f9 = (f5 - f7) - f8;
                            if (z) {
                                l lVar7 = this.f2419j;
                                lVar7.f2417h = lVar7.f2414e.f2417h + f8 + (f9 * f4);
                                this.f2417h = (this.f2414e.f2417h - f7) - (f9 * (1.0f - f4));
                            } else {
                                this.f2417h = this.f2414e.f2417h + f7 + (f9 * f4);
                                l lVar8 = this.f2419j;
                                lVar8.f2417h = (lVar8.f2414e.f2417h - f8) - (f9 * (1.0f - f4));
                            }
                            a();
                            this.f2419j.a();
                        }
                    }
                }
            }
            if (this.f2418i == 3) {
                l lVar9 = this.f2414e;
                if (lVar9 != null && lVar9.f2424b == 1) {
                    l lVar10 = this.f2419j;
                    if (lVar10 != null) {
                        l lVar11 = lVar10.f2414e;
                        if (lVar11 != null && lVar11.f2424b == 1) {
                            if (C0249e.f() != null) {
                                C0249e.f().w++;
                            }
                            l lVar12 = this.f2414e;
                            this.f2416g = lVar12.f2416g;
                            l lVar13 = this.f2419j;
                            l lVar14 = lVar13.f2414e;
                            lVar13.f2416g = lVar14.f2416g;
                            this.f2417h = lVar12.f2417h + this.f2415f;
                            lVar13.f2417h = lVar14.f2417h + lVar13.f2415f;
                            a();
                            this.f2419j.a();
                        }
                    }
                }
            }
            if (this.f2418i == 5) {
                this.f2412c.f500b.F();
            }
        }
    }

    public float f() {
        return this.f2417h;
    }

    public void g() {
        ConstraintAnchor g2 = this.f2412c.g();
        if (g2 != null) {
            if (g2.g() == this.f2412c) {
                this.f2418i = 4;
                g2.d().f2418i = 4;
            }
            int b2 = this.f2412c.b();
            ConstraintAnchor.Type type = this.f2412c.f501c;
            if (type == ConstraintAnchor.Type.RIGHT || type == ConstraintAnchor.Type.BOTTOM) {
                b2 = -b2;
            }
            a(g2.d(), b2);
        }
    }

    public String toString() {
        if (this.f2424b != 1) {
            return "{ " + this.f2412c + " UNRESOLVED} type: " + a(this.f2418i);
        } else if (this.f2416g == this) {
            return "[" + this.f2412c + ", RESOLVED: " + this.f2417h + "]  type: " + a(this.f2418i);
        } else {
            return "[" + this.f2412c + ", RESOLVED: " + this.f2416g + ":" + this.f2417h + "] type: " + a(this.f2418i);
        }
    }

    public void b(l lVar, float f2) {
        this.f2419j = lVar;
        this.f2420k = f2;
    }

    public void b(l lVar, int i2, m mVar) {
        this.f2419j = lVar;
        this.n = mVar;
        this.o = i2;
    }

    public void a(int i2, l lVar, int i3) {
        this.f2418i = i2;
        this.f2414e = lVar;
        this.f2415f = (float) i3;
        this.f2414e.a(this);
    }

    public void a(l lVar, int i2) {
        this.f2414e = lVar;
        this.f2415f = (float) i2;
        this.f2414e.a(this);
    }

    public void a(l lVar, int i2, m mVar) {
        this.f2414e = lVar;
        this.f2414e.a(this);
        this.f2421l = mVar;
        this.m = i2;
        this.f2421l.a(this);
    }

    public void a(C0249e eVar) {
        SolverVariable e2 = this.f2412c.e();
        l lVar = this.f2416g;
        if (lVar == null) {
            eVar.a(e2, (int) this.f2417h);
        } else {
            eVar.a(e2, eVar.a((Object) lVar.f2412c), (int) this.f2417h, 6);
        }
    }
}
