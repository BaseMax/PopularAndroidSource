package b.g.a;

import androidx.constraintlayout.solver.SolverVariable;
import b.g.a.C0249e;

/* renamed from: b.g.a.b  reason: case insensitive filesystem */
/* compiled from: ArrayRow */
public class C0246b implements C0249e.a {

    /* renamed from: a  reason: collision with root package name */
    public SolverVariable f2435a = null;

    /* renamed from: b  reason: collision with root package name */
    public float f2436b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2437c = false;

    /* renamed from: d  reason: collision with root package name */
    public final C0245a f2438d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2439e = false;

    public C0246b(C0247c cVar) {
        this.f2438d = new C0245a(this, cVar);
    }

    public C0246b a(SolverVariable solverVariable, SolverVariable solverVariable2, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f2436b = (float) i2;
        }
        if (!z) {
            this.f2438d.a(solverVariable, -1.0f);
            this.f2438d.a(solverVariable2, 1.0f);
        } else {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
        }
        return this;
    }

    public boolean b() {
        SolverVariable solverVariable = this.f2435a;
        return solverVariable != null && (solverVariable.f494h == SolverVariable.Type.UNRESTRICTED || this.f2436b >= 0.0f);
    }

    public C0246b c(SolverVariable solverVariable, int i2) {
        if (i2 < 0) {
            this.f2436b = (float) (i2 * -1);
            this.f2438d.a(solverVariable, 1.0f);
        } else {
            this.f2436b = (float) i2;
            this.f2438d.a(solverVariable, -1.0f);
        }
        return this;
    }

    public void clear() {
        this.f2438d.a();
        this.f2435a = null;
        this.f2436b = 0.0f;
    }

    public void d() {
        this.f2435a = null;
        this.f2438d.a();
        this.f2436b = 0.0f;
        this.f2439e = false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x00c0  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00d0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String e() {
        /*
            r9 = this;
            androidx.constraintlayout.solver.SolverVariable r0 = r9.f2435a
            java.lang.String r1 = ""
            if (r0 != 0) goto L_0x0018
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r1)
            java.lang.String r1 = "0"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L_0x0029
        L_0x0018:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r1)
            androidx.constraintlayout.solver.SolverVariable r1 = r9.f2435a
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L_0x0029:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = " = "
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            float r1 = r9.f2436b
            r2 = 0
            r3 = 1
            r4 = 0
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 == 0) goto L_0x0056
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            float r0 = r9.f2436b
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r1 = 1
            goto L_0x0057
        L_0x0056:
            r1 = 0
        L_0x0057:
            b.g.a.a r5 = r9.f2438d
            int r5 = r5.f2384a
        L_0x005b:
            if (r2 >= r5) goto L_0x00ec
            b.g.a.a r6 = r9.f2438d
            androidx.constraintlayout.solver.SolverVariable r6 = r6.a((int) r2)
            if (r6 != 0) goto L_0x0067
            goto L_0x00e8
        L_0x0067:
            b.g.a.a r7 = r9.f2438d
            float r7 = r7.b((int) r2)
            int r8 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r8 != 0) goto L_0x0073
            goto L_0x00e8
        L_0x0073:
            java.lang.String r6 = r6.toString()
            r8 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r1 != 0) goto L_0x0091
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 >= 0) goto L_0x00ba
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = "- "
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            goto L_0x00b8
        L_0x0091:
            int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r1 <= 0) goto L_0x00a7
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = " + "
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            goto L_0x00ba
        L_0x00a7:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = " - "
            r1.append(r0)
            java.lang.String r0 = r1.toString()
        L_0x00b8:
            float r7 = r7 * r8
        L_0x00ba:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r1 != 0) goto L_0x00d0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
            goto L_0x00e7
        L_0x00d0:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = r1.toString()
        L_0x00e7:
            r1 = 1
        L_0x00e8:
            int r2 = r2 + 1
            goto L_0x005b
        L_0x00ec:
            if (r1 != 0) goto L_0x00ff
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            java.lang.String r0 = "0.0"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
        L_0x00ff:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.g.a.C0246b.e():java.lang.String");
    }

    public SolverVariable getKey() {
        return this.f2435a;
    }

    public String toString() {
        return e();
    }

    public boolean b(SolverVariable solverVariable) {
        return this.f2438d.a(solverVariable);
    }

    public C0246b b(SolverVariable solverVariable, int i2) {
        this.f2435a = solverVariable;
        float f2 = (float) i2;
        solverVariable.f492f = f2;
        this.f2436b = f2;
        this.f2439e = true;
        return this;
    }

    public SolverVariable c(SolverVariable solverVariable) {
        return this.f2438d.a((boolean[]) null, solverVariable);
    }

    public void d(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f2435a;
        if (solverVariable2 != null) {
            this.f2438d.a(solverVariable2, -1.0f);
            this.f2435a = null;
        }
        float a2 = this.f2438d.a(solverVariable, true) * -1.0f;
        this.f2435a = solverVariable;
        if (a2 != 1.0f) {
            this.f2436b /= a2;
            this.f2438d.a(a2);
        }
    }

    public C0246b a(SolverVariable solverVariable, int i2) {
        this.f2438d.a(solverVariable, (float) i2);
        return this;
    }

    public boolean c() {
        return this.f2435a == null && this.f2436b == 0.0f && this.f2438d.f2384a == 0;
    }

    public C0246b a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f2436b = (float) i2;
        }
        if (!z) {
            this.f2438d.a(solverVariable, -1.0f);
            this.f2438d.a(solverVariable2, 1.0f);
            this.f2438d.a(solverVariable3, 1.0f);
        } else {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
            this.f2438d.a(solverVariable3, -1.0f);
        }
        return this;
    }

    public C0246b b(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i2) {
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            this.f2436b = (float) i2;
        }
        if (!z) {
            this.f2438d.a(solverVariable, -1.0f);
            this.f2438d.a(solverVariable2, 1.0f);
            this.f2438d.a(solverVariable3, -1.0f);
        } else {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
            this.f2438d.a(solverVariable3, 1.0f);
        }
        return this;
    }

    public C0246b a(float f2, float f3, float f4, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f2436b = 0.0f;
        if (f3 == 0.0f || f2 == f4) {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
            this.f2438d.a(solverVariable4, 1.0f);
            this.f2438d.a(solverVariable3, -1.0f);
        } else if (f2 == 0.0f) {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
        } else if (f4 == 0.0f) {
            this.f2438d.a(solverVariable3, 1.0f);
            this.f2438d.a(solverVariable4, -1.0f);
        } else {
            float f5 = (f2 / f3) / (f4 / f3);
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
            this.f2438d.a(solverVariable4, f5);
            this.f2438d.a(solverVariable3, -f5);
        }
        return this;
    }

    public C0246b b(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f2) {
        this.f2438d.a(solverVariable3, 0.5f);
        this.f2438d.a(solverVariable4, 0.5f);
        this.f2438d.a(solverVariable, -0.5f);
        this.f2438d.a(solverVariable2, -0.5f);
        this.f2436b = -f2;
        return this;
    }

    public C0246b a(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, float f2, SolverVariable solverVariable3, SolverVariable solverVariable4, int i3) {
        if (solverVariable2 == solverVariable3) {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable4, 1.0f);
            this.f2438d.a(solverVariable2, -2.0f);
            return this;
        }
        if (f2 == 0.5f) {
            this.f2438d.a(solverVariable, 1.0f);
            this.f2438d.a(solverVariable2, -1.0f);
            this.f2438d.a(solverVariable3, -1.0f);
            this.f2438d.a(solverVariable4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                this.f2436b = (float) ((-i2) + i3);
            }
        } else if (f2 <= 0.0f) {
            this.f2438d.a(solverVariable, -1.0f);
            this.f2438d.a(solverVariable2, 1.0f);
            this.f2436b = (float) i2;
        } else if (f2 >= 1.0f) {
            this.f2438d.a(solverVariable3, -1.0f);
            this.f2438d.a(solverVariable4, 1.0f);
            this.f2436b = (float) i3;
        } else {
            float f3 = 1.0f - f2;
            this.f2438d.a(solverVariable, f3 * 1.0f);
            this.f2438d.a(solverVariable2, f3 * -1.0f);
            this.f2438d.a(solverVariable3, -1.0f * f2);
            this.f2438d.a(solverVariable4, 1.0f * f2);
            if (i2 > 0 || i3 > 0) {
                this.f2436b = (((float) (-i2)) * f3) + (((float) i3) * f2);
            }
        }
        return this;
    }

    public C0246b a(C0249e eVar, int i2) {
        this.f2438d.a(eVar.a(i2, "ep"), 1.0f);
        this.f2438d.a(eVar.a(i2, "em"), -1.0f);
        return this;
    }

    public C0246b a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f2) {
        this.f2438d.a(solverVariable, -1.0f);
        this.f2438d.a(solverVariable2, 1.0f - f2);
        this.f2438d.a(solverVariable3, f2);
        return this;
    }

    public C0246b a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f2) {
        this.f2438d.a(solverVariable, -1.0f);
        this.f2438d.a(solverVariable2, 1.0f);
        this.f2438d.a(solverVariable3, f2);
        this.f2438d.a(solverVariable4, -f2);
        return this;
    }

    public void a() {
        float f2 = this.f2436b;
        if (f2 < 0.0f) {
            this.f2436b = f2 * -1.0f;
            this.f2438d.b();
        }
    }

    public boolean a(C0249e eVar) {
        boolean z;
        SolverVariable a2 = this.f2438d.a(eVar);
        if (a2 == null) {
            z = true;
        } else {
            d(a2);
            z = false;
        }
        if (this.f2438d.f2384a == 0) {
            this.f2439e = true;
        }
        return z;
    }

    public SolverVariable a(C0249e eVar, boolean[] zArr) {
        return this.f2438d.a(zArr, (SolverVariable) null);
    }

    public void a(C0249e.a aVar) {
        if (aVar instanceof C0246b) {
            C0246b bVar = (C0246b) aVar;
            this.f2435a = null;
            this.f2438d.a();
            int i2 = 0;
            while (true) {
                C0245a aVar2 = bVar.f2438d;
                if (i2 < aVar2.f2384a) {
                    this.f2438d.a(aVar2.a(i2), bVar.f2438d.b(i2), true);
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    public void a(SolverVariable solverVariable) {
        int i2 = solverVariable.f491e;
        float f2 = 1.0f;
        if (i2 != 1) {
            if (i2 == 2) {
                f2 = 1000.0f;
            } else if (i2 == 3) {
                f2 = 1000000.0f;
            } else if (i2 == 4) {
                f2 = 1.0E9f;
            } else if (i2 == 5) {
                f2 = 1.0E12f;
            }
        }
        this.f2438d.a(solverVariable, f2);
    }
}
