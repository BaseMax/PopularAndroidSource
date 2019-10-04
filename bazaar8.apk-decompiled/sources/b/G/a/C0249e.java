package b.g.a;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: b.g.a.e  reason: case insensitive filesystem */
/* compiled from: LinearSystem */
public class C0249e {

    /* renamed from: a  reason: collision with root package name */
    public static int f2443a = 1000;

    /* renamed from: b  reason: collision with root package name */
    public static C0250f f2444b;

    /* renamed from: c  reason: collision with root package name */
    public int f2445c = 0;

    /* renamed from: d  reason: collision with root package name */
    public HashMap<String, SolverVariable> f2446d = null;

    /* renamed from: e  reason: collision with root package name */
    public a f2447e;

    /* renamed from: f  reason: collision with root package name */
    public int f2448f = 32;

    /* renamed from: g  reason: collision with root package name */
    public int f2449g;

    /* renamed from: h  reason: collision with root package name */
    public C0246b[] f2450h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2451i;

    /* renamed from: j  reason: collision with root package name */
    public boolean[] f2452j;

    /* renamed from: k  reason: collision with root package name */
    public int f2453k;

    /* renamed from: l  reason: collision with root package name */
    public int f2454l;
    public int m;
    public final C0247c n;
    public SolverVariable[] o;
    public int p;
    public C0246b[] q;
    public final a r;

    /* renamed from: b.g.a.e$a */
    /* compiled from: LinearSystem */
    interface a {
        SolverVariable a(C0249e eVar, boolean[] zArr);

        void a(SolverVariable solverVariable);

        void a(a aVar);

        void clear();

        SolverVariable getKey();
    }

    public C0249e() {
        int i2 = this.f2448f;
        this.f2449g = i2;
        this.f2450h = null;
        this.f2451i = false;
        this.f2452j = new boolean[i2];
        this.f2453k = 1;
        this.f2454l = 0;
        this.m = i2;
        this.o = new SolverVariable[f2443a];
        this.p = 0;
        this.q = new C0246b[i2];
        this.f2450h = new C0246b[i2];
        i();
        this.n = new C0247c();
        this.f2447e = new C0248d(this.n);
        this.r = new C0246b(this.n);
    }

    public static C0250f f() {
        return f2444b;
    }

    public SolverVariable a(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.f2453k + 1 >= this.f2449g) {
            g();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.e();
            if (solverVariable == null) {
                constraintAnchor.a(this.n);
                solverVariable = constraintAnchor.e();
            }
            int i2 = solverVariable.f489c;
            if (i2 == -1 || i2 > this.f2445c || this.n.f2442c[i2] == null) {
                if (solverVariable.f489c != -1) {
                    solverVariable.b();
                }
                this.f2445c++;
                this.f2453k++;
                int i3 = this.f2445c;
                solverVariable.f489c = i3;
                solverVariable.f494h = SolverVariable.Type.UNRESTRICTED;
                this.n.f2442c[i3] = solverVariable;
            }
        }
        return solverVariable;
    }

    public SolverVariable b() {
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.n++;
        }
        if (this.f2453k + 1 >= this.f2449g) {
            g();
        }
        SolverVariable a2 = a(SolverVariable.Type.SLACK, (String) null);
        this.f2445c++;
        this.f2453k++;
        int i2 = this.f2445c;
        a2.f489c = i2;
        this.n.f2442c[i2] = a2;
        return a2;
    }

    public C0246b c() {
        C0246b a2 = this.n.f2440a.a();
        if (a2 == null) {
            a2 = new C0246b(this.n);
        } else {
            a2.d();
        }
        SolverVariable.a();
        return a2;
    }

    public SolverVariable d() {
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.m++;
        }
        if (this.f2453k + 1 >= this.f2449g) {
            g();
        }
        SolverVariable a2 = a(SolverVariable.Type.SLACK, (String) null);
        this.f2445c++;
        this.f2453k++;
        int i2 = this.f2445c;
        a2.f489c = i2;
        this.n.f2442c[i2] = a2;
        return a2;
    }

    public C0247c e() {
        return this.n;
    }

    public final void g() {
        this.f2448f *= 2;
        this.f2450h = (C0246b[]) Arrays.copyOf(this.f2450h, this.f2448f);
        C0247c cVar = this.n;
        cVar.f2442c = (SolverVariable[]) Arrays.copyOf(cVar.f2442c, this.f2448f);
        int i2 = this.f2448f;
        this.f2452j = new boolean[i2];
        this.f2449g = i2;
        this.m = i2;
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.f2458d++;
            fVar.o = Math.max(fVar.o, (long) i2);
            C0250f fVar2 = f2444b;
            fVar2.A = fVar2.o;
        }
    }

    public void h() {
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.f2459e++;
        }
        if (this.f2451i) {
            C0250f fVar2 = f2444b;
            if (fVar2 != null) {
                fVar2.q++;
            }
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= this.f2454l) {
                    z = true;
                    break;
                } else if (!this.f2450h[i2].f2439e) {
                    break;
                } else {
                    i2++;
                }
            }
            if (!z) {
                b(this.f2447e);
                return;
            }
            C0250f fVar3 = f2444b;
            if (fVar3 != null) {
                fVar3.p++;
            }
            a();
            return;
        }
        b(this.f2447e);
    }

    public final void i() {
        int i2 = 0;
        while (true) {
            C0246b[] bVarArr = this.f2450h;
            if (i2 < bVarArr.length) {
                C0246b bVar = bVarArr[i2];
                if (bVar != null) {
                    this.n.f2440a.a(bVar);
                }
                this.f2450h[i2] = null;
                i2++;
            } else {
                return;
            }
        }
    }

    public void j() {
        C0247c cVar;
        int i2 = 0;
        while (true) {
            cVar = this.n;
            SolverVariable[] solverVariableArr = cVar.f2442c;
            if (i2 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i2];
            if (solverVariable != null) {
                solverVariable.b();
            }
            i2++;
        }
        cVar.f2441b.a(this.o, this.p);
        this.p = 0;
        Arrays.fill(this.n.f2442c, null);
        HashMap<String, SolverVariable> hashMap = this.f2446d;
        if (hashMap != null) {
            hashMap.clear();
        }
        this.f2445c = 0;
        this.f2447e.clear();
        this.f2453k = 1;
        for (int i3 = 0; i3 < this.f2454l; i3++) {
            this.f2450h[i3].f2437c = false;
        }
        i();
        this.f2454l = 0;
    }

    public final void c(C0246b bVar) {
        C0246b[] bVarArr = this.f2450h;
        int i2 = this.f2454l;
        if (bVarArr[i2] != null) {
            this.n.f2440a.a(bVarArr[i2]);
        }
        C0246b[] bVarArr2 = this.f2450h;
        int i3 = this.f2454l;
        bVarArr2[i3] = bVar;
        SolverVariable solverVariable = bVar.f2435a;
        solverVariable.f490d = i3;
        this.f2454l = i3 + 1;
        solverVariable.c(bVar);
    }

    public final void b(C0246b bVar) {
        bVar.a(this, 0);
    }

    public final void d(C0246b bVar) {
        if (this.f2454l > 0) {
            bVar.f2438d.a(bVar, this.f2450h);
            if (bVar.f2438d.f2384a == 0) {
                bVar.f2439e = true;
            }
        }
    }

    public int b(Object obj) {
        SolverVariable e2 = ((ConstraintAnchor) obj).e();
        if (e2 != null) {
            return (int) (e2.f492f + 0.5f);
        }
        return 0;
    }

    public void c(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i3) {
        C0246b c2 = c();
        SolverVariable d2 = d();
        d2.f491e = 0;
        c2.b(solverVariable, solverVariable2, d2, i2);
        if (i3 != 6) {
            a(c2, (int) (c2.f2438d.b(d2) * -1.0f), i3);
        }
        a(c2);
    }

    public void b(a aVar) {
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.s++;
            fVar.t = Math.max(fVar.t, (long) this.f2453k);
            C0250f fVar2 = f2444b;
            fVar2.u = Math.max(fVar2.u, (long) this.f2454l);
        }
        d((C0246b) aVar);
        a(aVar);
        a(aVar, false);
        a();
    }

    public void a(C0246b bVar, int i2, int i3) {
        bVar.a(a(i3, (String) null), i2);
    }

    public SolverVariable a(int i2, String str) {
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.f2466l++;
        }
        if (this.f2453k + 1 >= this.f2449g) {
            g();
        }
        SolverVariable a2 = a(SolverVariable.Type.ERROR, str);
        this.f2445c++;
        this.f2453k++;
        int i3 = this.f2445c;
        a2.f489c = i3;
        a2.f491e = i2;
        this.n.f2442c[i3] = a2;
        this.f2447e.a(a2);
        return a2;
    }

    public void b(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i3) {
        C0246b c2 = c();
        SolverVariable d2 = d();
        d2.f491e = 0;
        c2.a(solverVariable, solverVariable2, d2, i2);
        if (i3 != 6) {
            a(c2, (int) (c2.f2438d.b(d2) * -1.0f), i3);
        }
        a(c2);
    }

    public final SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable a2 = this.n.f2441b.a();
        if (a2 == null) {
            a2 = new SolverVariable(type, str);
            a2.a(type, str);
        } else {
            a2.b();
            a2.a(type, str);
        }
        int i2 = this.p;
        int i3 = f2443a;
        if (i2 >= i3) {
            f2443a = i3 * 2;
            this.o = (SolverVariable[]) Arrays.copyOf(this.o, f2443a);
        }
        SolverVariable[] solverVariableArr = this.o;
        int i4 = this.p;
        this.p = i4 + 1;
        solverVariableArr[i4] = a2;
        return a2;
    }

    public void b(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        C0246b c2 = c();
        SolverVariable d2 = d();
        d2.f491e = 0;
        c2.b(solverVariable, solverVariable2, d2, 0);
        if (z) {
            a(c2, (int) (c2.f2438d.b(d2) * -1.0f), 1);
        }
        a(c2);
    }

    public void a(C0246b bVar) {
        if (bVar != null) {
            C0250f fVar = f2444b;
            if (fVar != null) {
                fVar.f2460f++;
                if (bVar.f2439e) {
                    fVar.f2461g++;
                }
            }
            if (this.f2454l + 1 >= this.m || this.f2453k + 1 >= this.f2449g) {
                g();
            }
            boolean z = false;
            if (!bVar.f2439e) {
                d(bVar);
                if (!bVar.c()) {
                    bVar.a();
                    if (bVar.a(this)) {
                        SolverVariable b2 = b();
                        bVar.f2435a = b2;
                        c(bVar);
                        this.r.a((a) bVar);
                        a(this.r, true);
                        if (b2.f490d == -1) {
                            if (bVar.f2435a == b2) {
                                SolverVariable c2 = bVar.c(b2);
                                if (c2 != null) {
                                    C0250f fVar2 = f2444b;
                                    if (fVar2 != null) {
                                        fVar2.f2464j++;
                                    }
                                    bVar.d(c2);
                                }
                            }
                            if (!bVar.f2439e) {
                                bVar.f2435a.c(bVar);
                            }
                            this.f2454l--;
                        }
                        z = true;
                    }
                    if (!bVar.b()) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (!z) {
                c(bVar);
            }
        }
    }

    public final int a(a aVar, boolean z) {
        C0250f fVar = f2444b;
        if (fVar != null) {
            fVar.f2462h++;
        }
        for (int i2 = 0; i2 < this.f2453k; i2++) {
            this.f2452j[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            C0250f fVar2 = f2444b;
            if (fVar2 != null) {
                fVar2.f2463i++;
            }
            i3++;
            if (i3 >= this.f2453k * 2) {
                return i3;
            }
            if (aVar.getKey() != null) {
                this.f2452j[aVar.getKey().f489c] = true;
            }
            SolverVariable a2 = aVar.a(this, this.f2452j);
            if (a2 != null) {
                boolean[] zArr = this.f2452j;
                int i4 = a2.f489c;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (a2 != null) {
                int i5 = -1;
                float f2 = Float.MAX_VALUE;
                for (int i6 = 0; i6 < this.f2454l; i6++) {
                    C0246b bVar = this.f2450h[i6];
                    if (bVar.f2435a.f494h != SolverVariable.Type.UNRESTRICTED && !bVar.f2439e && bVar.b(a2)) {
                        float b2 = bVar.f2438d.b(a2);
                        if (b2 < 0.0f) {
                            float f3 = (-bVar.f2436b) / b2;
                            if (f3 < f2) {
                                i5 = i6;
                                f2 = f3;
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    C0246b bVar2 = this.f2450h[i5];
                    bVar2.f2435a.f490d = -1;
                    C0250f fVar3 = f2444b;
                    if (fVar3 != null) {
                        fVar3.f2464j++;
                    }
                    bVar2.d(a2);
                    SolverVariable solverVariable = bVar2.f2435a;
                    solverVariable.f490d = i5;
                    solverVariable.c(bVar2);
                }
            }
            z2 = true;
        }
        return i3;
    }

    public final int a(a aVar) {
        float f2;
        boolean z;
        int i2 = 0;
        while (true) {
            f2 = 0.0f;
            if (i2 >= this.f2454l) {
                z = false;
                break;
            }
            C0246b[] bVarArr = this.f2450h;
            if (bVarArr[i2].f2435a.f494h != SolverVariable.Type.UNRESTRICTED && bVarArr[i2].f2436b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            C0250f fVar = f2444b;
            if (fVar != null) {
                fVar.f2465k++;
            }
            i3++;
            int i4 = 0;
            int i5 = -1;
            int i6 = -1;
            float f3 = Float.MAX_VALUE;
            int i7 = 0;
            while (i4 < this.f2454l) {
                C0246b bVar = this.f2450h[i4];
                if (bVar.f2435a.f494h != SolverVariable.Type.UNRESTRICTED && !bVar.f2439e && bVar.f2436b < f2) {
                    int i8 = 1;
                    while (i8 < this.f2453k) {
                        SolverVariable solverVariable = this.n.f2442c[i8];
                        float b2 = bVar.f2438d.b(solverVariable);
                        if (b2 > f2) {
                            int i9 = i7;
                            float f4 = f3;
                            int i10 = i6;
                            int i11 = i5;
                            for (int i12 = 0; i12 < 7; i12++) {
                                float f5 = solverVariable.f493g[i12] / b2;
                                if ((f5 < f4 && i12 == i9) || i12 > i9) {
                                    i10 = i8;
                                    i11 = i4;
                                    f4 = f5;
                                    i9 = i12;
                                }
                            }
                            i5 = i11;
                            i6 = i10;
                            f3 = f4;
                            i7 = i9;
                        }
                        i8++;
                        f2 = 0.0f;
                    }
                }
                i4++;
                f2 = 0.0f;
            }
            if (i5 != -1) {
                C0246b bVar2 = this.f2450h[i5];
                bVar2.f2435a.f490d = -1;
                C0250f fVar2 = f2444b;
                if (fVar2 != null) {
                    fVar2.f2464j++;
                }
                bVar2.d(this.n.f2442c[i6]);
                SolverVariable solverVariable2 = bVar2.f2435a;
                solverVariable2.f490d = i5;
                solverVariable2.c(bVar2);
            } else {
                z2 = true;
            }
            if (i3 > this.f2453k / 2) {
                z2 = true;
            }
            f2 = 0.0f;
        }
        return i3;
    }

    public final void a() {
        for (int i2 = 0; i2 < this.f2454l; i2++) {
            C0246b bVar = this.f2450h[i2];
            bVar.f2435a.f492f = bVar.f2436b;
        }
    }

    public void a(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        C0246b c2 = c();
        SolverVariable d2 = d();
        d2.f491e = 0;
        c2.a(solverVariable, solverVariable2, d2, 0);
        if (z) {
            a(c2, (int) (c2.f2438d.b(d2) * -1.0f), 1);
        }
        a(c2);
    }

    public void a(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, float f2, SolverVariable solverVariable3, SolverVariable solverVariable4, int i3, int i4) {
        int i5 = i4;
        C0246b c2 = c();
        c2.a(solverVariable, solverVariable2, i2, f2, solverVariable3, solverVariable4, i3);
        if (i5 != 6) {
            c2.a(this, i5);
        }
        a(c2);
    }

    public void a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f2, int i2) {
        C0246b c2 = c();
        c2.a(solverVariable, solverVariable2, solverVariable3, solverVariable4, f2);
        if (i2 != 6) {
            c2.a(this, i2);
        }
        a(c2);
    }

    public C0246b a(SolverVariable solverVariable, SolverVariable solverVariable2, int i2, int i3) {
        C0246b c2 = c();
        c2.a(solverVariable, solverVariable2, i2);
        if (i3 != 6) {
            c2.a(this, i3);
        }
        a(c2);
        return c2;
    }

    public void a(SolverVariable solverVariable, int i2) {
        int i3 = solverVariable.f490d;
        if (i3 != -1) {
            C0246b bVar = this.f2450h[i3];
            if (bVar.f2439e) {
                bVar.f2436b = (float) i2;
            } else if (bVar.f2438d.f2384a == 0) {
                bVar.f2439e = true;
                bVar.f2436b = (float) i2;
            } else {
                C0246b c2 = c();
                c2.c(solverVariable, i2);
                a(c2);
            }
        } else {
            C0246b c3 = c();
            c3.b(solverVariable, i2);
            a(c3);
        }
    }

    public static C0246b a(C0249e eVar, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f2, boolean z) {
        C0246b c2 = eVar.c();
        if (z) {
            eVar.b(c2);
        }
        c2.a(solverVariable, solverVariable2, solverVariable3, f2);
        return c2;
    }

    public void a(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f2, int i2) {
        ConstraintWidget constraintWidget3 = constraintWidget;
        ConstraintWidget constraintWidget4 = constraintWidget2;
        SolverVariable a2 = a((Object) constraintWidget3.a(ConstraintAnchor.Type.LEFT));
        SolverVariable a3 = a((Object) constraintWidget3.a(ConstraintAnchor.Type.TOP));
        SolverVariable a4 = a((Object) constraintWidget3.a(ConstraintAnchor.Type.RIGHT));
        SolverVariable a5 = a((Object) constraintWidget3.a(ConstraintAnchor.Type.BOTTOM));
        SolverVariable a6 = a((Object) constraintWidget4.a(ConstraintAnchor.Type.LEFT));
        SolverVariable a7 = a((Object) constraintWidget4.a(ConstraintAnchor.Type.TOP));
        SolverVariable a8 = a((Object) constraintWidget4.a(ConstraintAnchor.Type.RIGHT));
        SolverVariable a9 = a((Object) constraintWidget4.a(ConstraintAnchor.Type.BOTTOM));
        C0246b c2 = c();
        double d2 = (double) f2;
        double sin = Math.sin(d2);
        SolverVariable solverVariable = a4;
        double d3 = (double) i2;
        Double.isNaN(d3);
        c2.b(a3, a5, a7, a9, (float) (sin * d3));
        a(c2);
        C0246b c3 = c();
        double cos = Math.cos(d2);
        Double.isNaN(d3);
        c3.b(a2, solverVariable, a6, a8, (float) (cos * d3));
        a(c3);
    }
}
