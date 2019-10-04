package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import b.g.a.C0247c;
import b.g.a.C0249e;
import b.g.a.a.f;
import b.g.a.a.j;
import b.g.a.a.m;
import java.util.ArrayList;

public class ConstraintWidget {

    /* renamed from: a  reason: collision with root package name */
    public static float f512a = 0.5f;
    public ConstraintAnchor A = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
    public ConstraintAnchor B = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
    public ConstraintAnchor[] C = {this.u, this.w, this.v, this.x, this.y, this.B};
    public ArrayList<ConstraintAnchor> D = new ArrayList<>();
    public DimensionBehaviour[] E;
    public ConstraintWidget F;
    public int G;
    public int H;
    public float I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public float X;
    public float Y;
    public Object Z;
    public int aa;

    /* renamed from: b  reason: collision with root package name */
    public int f513b = -1;
    public int ba;

    /* renamed from: c  reason: collision with root package name */
    public int f514c = -1;
    public String ca;

    /* renamed from: d  reason: collision with root package name */
    public m f515d;
    public String da;

    /* renamed from: e  reason: collision with root package name */
    public m f516e;
    public boolean ea;

    /* renamed from: f  reason: collision with root package name */
    public int f517f = 0;
    public boolean fa;

    /* renamed from: g  reason: collision with root package name */
    public int f518g = 0;
    public int ga;

    /* renamed from: h  reason: collision with root package name */
    public int[] f519h = new int[2];
    public int ha;

    /* renamed from: i  reason: collision with root package name */
    public int f520i = 0;
    public boolean ia;

    /* renamed from: j  reason: collision with root package name */
    public int f521j = 0;
    public boolean ja;

    /* renamed from: k  reason: collision with root package name */
    public float f522k = 1.0f;
    public float[] ka;

    /* renamed from: l  reason: collision with root package name */
    public int f523l = 0;
    public ConstraintWidget[] la;
    public int m = 0;
    public ConstraintWidget[] ma;
    public float n = 1.0f;
    public ConstraintWidget na;
    public boolean o;
    public ConstraintWidget oa;
    public boolean p;
    public int q = -1;
    public float r = 1.0f;
    public int[] s = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    public float t = 0.0f;
    public ConstraintAnchor u = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
    public ConstraintAnchor v = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
    public ConstraintAnchor w = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
    public ConstraintAnchor x = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
    public ConstraintAnchor y = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
    public ConstraintAnchor z = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.E = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.F = null;
        this.G = 0;
        this.H = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        float f2 = f512a;
        this.X = f2;
        this.Y = f2;
        this.aa = 0;
        this.ba = 0;
        this.ca = null;
        this.da = null;
        this.ga = 0;
        this.ha = 0;
        this.ka = new float[]{-1.0f, -1.0f};
        this.la = new ConstraintWidget[]{null, null};
        this.ma = new ConstraintWidget[]{null, null};
        this.na = null;
        this.oa = null;
        a();
    }

    public boolean A() {
        return this.f518g == 0 && this.I == 0.0f && this.f523l == 0 && this.m == 0 && this.E[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean B() {
        return this.f517f == 0 && this.I == 0.0f && this.f520i == 0 && this.f521j == 0 && this.E[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public void C() {
        this.u.j();
        this.v.j();
        this.w.j();
        this.x.j();
        this.y.j();
        this.z.j();
        this.A.j();
        this.B.j();
        this.F = null;
        this.t = 0.0f;
        this.G = 0;
        this.H = 0;
        this.I = 0.0f;
        this.J = -1;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.W = 0;
        float f2 = f512a;
        this.X = f2;
        this.Y = f2;
        DimensionBehaviour[] dimensionBehaviourArr = this.E;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.Z = null;
        this.aa = 0;
        this.ba = 0;
        this.da = null;
        this.ea = false;
        this.fa = false;
        this.ga = 0;
        this.ha = 0;
        this.ia = false;
        this.ja = false;
        float[] fArr = this.ka;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f513b = -1;
        this.f514c = -1;
        int[] iArr = this.s;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f517f = 0;
        this.f518g = 0;
        this.f522k = 1.0f;
        this.n = 1.0f;
        this.f521j = Integer.MAX_VALUE;
        this.m = Integer.MAX_VALUE;
        this.f520i = 0;
        this.f523l = 0;
        this.q = -1;
        this.r = 1.0f;
        m mVar = this.f515d;
        if (mVar != null) {
            mVar.d();
        }
        m mVar2 = this.f516e;
        if (mVar2 != null) {
            mVar2.d();
        }
    }

    public void D() {
        ConstraintWidget m2 = m();
        if (m2 == null || !(m2 instanceof f) || !((f) m()).M()) {
            int size = this.D.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.D.get(i2).j();
            }
        }
    }

    public void E() {
        for (int i2 = 0; i2 < 6; i2++) {
            this.C[i2].d().d();
        }
    }

    public void F() {
    }

    public void G() {
        int i2 = this.K;
        int i3 = this.L;
        this.M = i2;
        this.N = i3;
        this.O = (this.G + i2) - i2;
        this.P = (this.H + i3) - i3;
    }

    public void H() {
        for (int i2 = 0; i2 < 6; i2++) {
            this.C[i2].d().g();
        }
    }

    public void a(int i2) {
        j.a(i2, this);
    }

    public void b(boolean z2) {
        this.o = z2;
    }

    public ArrayList<ConstraintAnchor> c() {
        return this.D;
    }

    public int d() {
        return this.S;
    }

    public void e(int i2) {
        this.s[1] = i2;
    }

    public void f(int i2) {
        this.s[0] = i2;
    }

    public String g() {
        return this.ca;
    }

    public int h() {
        return this.M + this.Q;
    }

    public int i() {
        return this.N + this.R;
    }

    public void j(int i2) {
        this.ba = i2;
    }

    public float k() {
        return this.X;
    }

    public void l(int i2) {
        this.W = i2;
    }

    public ConstraintWidget m() {
        return this.F;
    }

    public m n() {
        if (this.f516e == null) {
            this.f516e = new m();
        }
        return this.f516e;
    }

    public m o() {
        if (this.f515d == null) {
            this.f515d = new m();
        }
        return this.f515d;
    }

    public int p() {
        return x() + this.G;
    }

    public int q() {
        return this.K + this.Q;
    }

    public int r() {
        return this.L + this.R;
    }

    public DimensionBehaviour s() {
        return this.E[1];
    }

    public int t() {
        return this.ba;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.da != null) {
            str = "type: " + this.da + " ";
        } else {
            str = str2;
        }
        sb.append(str);
        if (this.ca != null) {
            str2 = "id: " + this.ca + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.K);
        sb.append(", ");
        sb.append(this.L);
        sb.append(") - (");
        sb.append(this.G);
        sb.append(" x ");
        sb.append(this.H);
        sb.append(") wrap: (");
        sb.append(this.V);
        sb.append(" x ");
        sb.append(this.W);
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        if (this.ba == 8) {
            return 0;
        }
        return this.G;
    }

    public int v() {
        return this.W;
    }

    public int w() {
        return this.V;
    }

    public int x() {
        return this.K;
    }

    public int y() {
        return this.L;
    }

    public boolean z() {
        return this.S > 0;
    }

    public void a(C0247c cVar) {
        this.u.a(cVar);
        this.v.a(cVar);
        this.w.a(cVar);
        this.x.a(cVar);
        this.y.a(cVar);
        this.B.a(cVar);
        this.z.a(cVar);
        this.A.a(cVar);
    }

    public void b(C0249e eVar) {
        eVar.a((Object) this.u);
        eVar.a((Object) this.v);
        eVar.a((Object) this.w);
        eVar.a((Object) this.x);
        if (this.S > 0) {
            eVar.a((Object) this.y);
        }
    }

    public void c(int i2, int i3) {
        this.K = i2;
        this.L = i3;
    }

    public void d(int i2, int i3) {
        this.L = i2;
        this.H = i3 - i2;
        int i4 = this.H;
        int i5 = this.U;
        if (i4 < i5) {
            this.H = i5;
        }
    }

    public int e() {
        return y() + this.H;
    }

    public Object f() {
        return this.Z;
    }

    public void g(int i2) {
        if (i2 < 0) {
            this.U = 0;
        } else {
            this.U = i2;
        }
    }

    public void h(int i2) {
        if (i2 < 0) {
            this.T = 0;
        } else {
            this.T = i2;
        }
    }

    public void i(int i2) {
        this.ha = i2;
    }

    public int j() {
        if (this.ba == 8) {
            return 0;
        }
        return this.H;
    }

    public void k(int i2) {
        this.G = i2;
        int i3 = this.G;
        int i4 = this.T;
        if (i3 < i4) {
            this.G = i4;
        }
    }

    public DimensionBehaviour l() {
        return this.E[0];
    }

    public void m(int i2) {
        this.V = i2;
    }

    public void c(int i2) {
        this.H = i2;
        int i3 = this.H;
        int i4 = this.U;
        if (i3 < i4) {
            this.H = i4;
        }
    }

    public void n(int i2) {
        this.K = i2;
    }

    public void o(int i2) {
        this.L = i2;
    }

    public void d(float f2) {
        this.ka[1] = f2;
    }

    public void c(float f2) {
        this.Y = f2;
    }

    public void d(int i2) {
        this.ga = i2;
    }

    public void b(int i2, int i3) {
        this.Q = i2;
        this.R = i3;
    }

    public void c(C0249e eVar) {
        int b2 = eVar.b((Object) this.u);
        int b3 = eVar.b((Object) this.v);
        int b4 = eVar.b((Object) this.w);
        int b5 = eVar.b((Object) this.x);
        int i2 = b5 - b3;
        if (b4 - b2 < 0 || i2 < 0 || b2 == Integer.MIN_VALUE || b2 == Integer.MAX_VALUE || b3 == Integer.MIN_VALUE || b3 == Integer.MAX_VALUE || b4 == Integer.MIN_VALUE || b4 == Integer.MAX_VALUE || b5 == Integer.MIN_VALUE || b5 == Integer.MAX_VALUE) {
            b5 = 0;
            b2 = 0;
            b3 = 0;
            b4 = 0;
        }
        a(b2, b3, b4, b5);
    }

    public final void a() {
        this.D.add(this.u);
        this.D.add(this.v);
        this.D.add(this.w);
        this.D.add(this.x);
        this.D.add(this.z);
        this.D.add(this.A);
        this.D.add(this.B);
        this.D.add(this.y);
    }

    public void b(int i2, int i3, int i4, float f2) {
        this.f518g = i2;
        this.f523l = i3;
        this.m = i4;
        this.n = f2;
        if (f2 < 1.0f && this.f518g == 0) {
            this.f518g = 2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0089  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(java.lang.String r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L_0x008e
            int r1 = r9.length()
            if (r1 != 0) goto L_0x000b
            goto L_0x008e
        L_0x000b:
            r1 = -1
            int r2 = r9.length()
            r3 = 44
            int r3 = r9.indexOf(r3)
            r4 = 0
            r5 = 1
            if (r3 <= 0) goto L_0x0037
            int r6 = r2 + -1
            if (r3 >= r6) goto L_0x0037
            java.lang.String r6 = r9.substring(r4, r3)
            java.lang.String r7 = "W"
            boolean r7 = r6.equalsIgnoreCase(r7)
            if (r7 == 0) goto L_0x002c
            r1 = 0
            goto L_0x0035
        L_0x002c:
            java.lang.String r4 = "H"
            boolean r4 = r6.equalsIgnoreCase(r4)
            if (r4 == 0) goto L_0x0035
            r1 = 1
        L_0x0035:
            int r4 = r3 + 1
        L_0x0037:
            r3 = 58
            int r3 = r9.indexOf(r3)
            if (r3 < 0) goto L_0x0075
            int r2 = r2 - r5
            if (r3 >= r2) goto L_0x0075
            java.lang.String r2 = r9.substring(r4, r3)
            int r3 = r3 + r5
            java.lang.String r9 = r9.substring(r3)
            int r3 = r2.length()
            if (r3 <= 0) goto L_0x0084
            int r3 = r9.length()
            if (r3 <= 0) goto L_0x0084
            float r2 = java.lang.Float.parseFloat(r2)     // Catch:{ NumberFormatException -> 0x0084 }
            float r9 = java.lang.Float.parseFloat(r9)     // Catch:{ NumberFormatException -> 0x0084 }
            int r3 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r3 <= 0) goto L_0x0084
            int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r3 <= 0) goto L_0x0084
            if (r1 != r5) goto L_0x006f
            float r9 = r9 / r2
            float r9 = java.lang.Math.abs(r9)     // Catch:{ NumberFormatException -> 0x0084 }
            goto L_0x0085
        L_0x006f:
            float r2 = r2 / r9
            float r9 = java.lang.Math.abs(r2)     // Catch:{ NumberFormatException -> 0x0084 }
            goto L_0x0085
        L_0x0075:
            java.lang.String r9 = r9.substring(r4)
            int r2 = r9.length()
            if (r2 <= 0) goto L_0x0084
            float r9 = java.lang.Float.parseFloat(r9)     // Catch:{ NumberFormatException -> 0x0084 }
            goto L_0x0085
        L_0x0084:
            r9 = 0
        L_0x0085:
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 <= 0) goto L_0x008d
            r8.I = r9
            r8.J = r1
        L_0x008d:
            return
        L_0x008e:
            r8.I = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.b(java.lang.String):void");
    }

    public void a(ConstraintWidget constraintWidget) {
        this.F = constraintWidget;
    }

    public void a(boolean z2) {
        this.p = z2;
    }

    public void a(ConstraintWidget constraintWidget, float f2, int i2) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        a(type, constraintWidget, type, i2, 0);
        this.t = f2;
    }

    public void a(String str) {
        this.ca = str;
    }

    public void a(int i2, int i3, int i4, float f2) {
        this.f517f = i2;
        this.f520i = i3;
        this.f521j = i4;
        this.f522k = f2;
        if (f2 < 1.0f && this.f517f == 0) {
            this.f517f = 2;
        }
    }

    public void a(float f2) {
        this.X = f2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r5 < r3) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x001c, code lost:
        if (r4 < r2) goto L_0x0020;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r2, int r3, int r4, int r5) {
        /*
            r1 = this;
            int r4 = r4 - r2
            int r5 = r5 - r3
            r1.K = r2
            r1.L = r3
            int r2 = r1.ba
            r3 = 0
            r0 = 8
            if (r2 != r0) goto L_0x0012
            r1.G = r3
            r1.H = r3
            return
        L_0x0012:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r2 = r1.E
            r2 = r2[r3]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            if (r2 != r3) goto L_0x001f
            int r2 = r1.G
            if (r4 >= r2) goto L_0x001f
            goto L_0x0020
        L_0x001f:
            r2 = r4
        L_0x0020:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r3 = r1.E
            r4 = 1
            r3 = r3[r4]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r4 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            if (r3 != r4) goto L_0x002e
            int r3 = r1.H
            if (r5 >= r3) goto L_0x002e
            goto L_0x002f
        L_0x002e:
            r3 = r5
        L_0x002f:
            r1.G = r2
            r1.H = r3
            int r2 = r1.H
            int r3 = r1.U
            if (r2 >= r3) goto L_0x003b
            r1.H = r3
        L_0x003b:
            int r2 = r1.G
            int r3 = r1.T
            if (r2 >= r3) goto L_0x0043
            r1.G = r3
        L_0x0043:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.a(int, int, int, int):void");
    }

    public void b(int i2) {
        this.S = i2;
    }

    public void b(float f2) {
        this.ka[0] = f2;
    }

    public boolean b() {
        return this.ba != 8;
    }

    public void b(DimensionBehaviour dimensionBehaviour) {
        this.E[1] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            c(this.W);
        }
    }

    public void a(int i2, int i3) {
        this.K = i2;
        this.G = i3 - i2;
        int i4 = this.G;
        int i5 = this.T;
        if (i4 < i5) {
            this.G = i5;
        }
    }

    public void a(Object obj) {
        this.Z = obj;
    }

    public void a(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i2, int i3) {
        a(type).a(constraintWidget.a(type2), i2, i3, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    public ConstraintAnchor a(ConstraintAnchor.Type type) {
        switch (e.f2408a[type.ordinal()]) {
            case 1:
                return this.u;
            case 2:
                return this.v;
            case 3:
                return this.w;
            case 4:
                return this.x;
            case 5:
                return this.y;
            case 6:
                return this.B;
            case 7:
                return this.z;
            case 8:
                return this.A;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public void a(DimensionBehaviour dimensionBehaviour) {
        this.E[0] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            k(this.V);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:134:0x01ee, code lost:
        if (r1 == -1) goto L_0x01f2;
     */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x01e9  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x01f5  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x0201  */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x021a  */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x0281  */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0292 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x0293  */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02b5  */
    /* JADX WARNING: Removed duplicated region for block: B:181:0x02ea  */
    /* JADX WARNING: Removed duplicated region for block: B:186:0x02f4  */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x02fd  */
    /* JADX WARNING: Removed duplicated region for block: B:190:0x0303  */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x030b  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x0342  */
    /* JADX WARNING: Removed duplicated region for block: B:198:0x036b  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0375  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(b.g.a.C0249e r39) {
        /*
            r38 = this;
            r15 = r38
            r14 = r39
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.u
            androidx.constraintlayout.solver.SolverVariable r21 = r14.a((java.lang.Object) r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.w
            androidx.constraintlayout.solver.SolverVariable r10 = r14.a((java.lang.Object) r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.v
            androidx.constraintlayout.solver.SolverVariable r6 = r14.a((java.lang.Object) r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.x
            androidx.constraintlayout.solver.SolverVariable r4 = r14.a((java.lang.Object) r0)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.y
            androidx.constraintlayout.solver.SolverVariable r3 = r14.a((java.lang.Object) r0)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r15.F
            r1 = 8
            r2 = 1
            r13 = 0
            if (r0 == 0) goto L_0x00ee
            if (r0 == 0) goto L_0x0036
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r0 = r0.E
            r0 = r0[r13]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r5 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r0 != r5) goto L_0x0036
            r0 = 1
            goto L_0x0037
        L_0x0036:
            r0 = 0
        L_0x0037:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r5 = r15.F
            if (r5 == 0) goto L_0x0045
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r5 = r5.E
            r5 = r5[r2]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r5 != r7) goto L_0x0045
            r5 = 1
            goto L_0x0046
        L_0x0045:
            r5 = 0
        L_0x0046:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r15.u
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r7.f502d
            if (r8 == 0) goto L_0x0061
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r8.f502d
            if (r8 == r7) goto L_0x0061
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r15.w
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r7.f502d
            if (r8 == 0) goto L_0x0061
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r8.f502d
            if (r8 != r7) goto L_0x0061
            androidx.constraintlayout.solver.widgets.ConstraintWidget r7 = r15.F
            b.g.a.a.f r7 = (b.g.a.a.f) r7
            r7.a((androidx.constraintlayout.solver.widgets.ConstraintWidget) r15, (int) r13)
        L_0x0061:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r15.u
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r7.f502d
            if (r8 == 0) goto L_0x006b
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r8.f502d
            if (r8 == r7) goto L_0x0075
        L_0x006b:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r15.w
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r7.f502d
            if (r8 == 0) goto L_0x0077
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r8.f502d
            if (r8 != r7) goto L_0x0077
        L_0x0075:
            r7 = 1
            goto L_0x0078
        L_0x0077:
            r7 = 0
        L_0x0078:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r15.v
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r8.f502d
            if (r9 == 0) goto L_0x0093
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 == r8) goto L_0x0093
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r15.x
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r8.f502d
            if (r9 == 0) goto L_0x0093
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 != r8) goto L_0x0093
            androidx.constraintlayout.solver.widgets.ConstraintWidget r8 = r15.F
            b.g.a.a.f r8 = (b.g.a.a.f) r8
            r8.a((androidx.constraintlayout.solver.widgets.ConstraintWidget) r15, (int) r2)
        L_0x0093:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r15.v
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r8.f502d
            if (r9 == 0) goto L_0x009d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 == r8) goto L_0x00a7
        L_0x009d:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r15.x
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r8.f502d
            if (r9 == 0) goto L_0x00a9
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 != r8) goto L_0x00a9
        L_0x00a7:
            r8 = 1
            goto L_0x00aa
        L_0x00a9:
            r8 = 0
        L_0x00aa:
            if (r0 == 0) goto L_0x00c7
            int r9 = r15.ba
            if (r9 == r1) goto L_0x00c7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r15.u
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 != 0) goto L_0x00c7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r15.w
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 != 0) goto L_0x00c7
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r15.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.w
            androidx.constraintlayout.solver.SolverVariable r9 = r14.a((java.lang.Object) r9)
            r14.b(r9, r10, r13, r2)
        L_0x00c7:
            if (r5 == 0) goto L_0x00e8
            int r9 = r15.ba
            if (r9 == r1) goto L_0x00e8
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r15.v
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 != 0) goto L_0x00e8
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r15.x
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.f502d
            if (r9 != 0) goto L_0x00e8
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r15.y
            if (r9 != 0) goto L_0x00e8
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r15.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r9.x
            androidx.constraintlayout.solver.SolverVariable r9 = r14.a((java.lang.Object) r9)
            r14.b(r9, r4, r13, r2)
        L_0x00e8:
            r12 = r5
            r16 = r7
            r22 = r8
            goto L_0x00f4
        L_0x00ee:
            r0 = 0
            r12 = 0
            r16 = 0
            r22 = 0
        L_0x00f4:
            int r5 = r15.G
            int r7 = r15.T
            if (r5 >= r7) goto L_0x00fb
            r5 = r7
        L_0x00fb:
            int r7 = r15.H
            int r8 = r15.U
            if (r7 >= r8) goto L_0x0102
            r7 = r8
        L_0x0102:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r8 = r15.E
            r8 = r8[r13]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r9 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r8 == r9) goto L_0x010c
            r8 = 1
            goto L_0x010d
        L_0x010c:
            r8 = 0
        L_0x010d:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r9 = r15.E
            r9 = r9[r2]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r11 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r9 == r11) goto L_0x0117
            r9 = 1
            goto L_0x0118
        L_0x0117:
            r9 = 0
        L_0x0118:
            int r11 = r15.J
            r15.q = r11
            float r11 = r15.I
            r15.r = r11
            int r2 = r15.f517f
            int r13 = r15.f518g
            r18 = 0
            r19 = 4
            int r11 = (r11 > r18 ? 1 : (r11 == r18 ? 0 : -1))
            if (r11 <= 0) goto L_0x01d3
            int r11 = r15.ba
            r1 = 8
            if (r11 == r1) goto L_0x01d3
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r15.E
            r11 = 0
            r1 = r1[r11]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r11 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            r23 = r3
            if (r1 != r11) goto L_0x0140
            if (r2 != 0) goto L_0x0140
            r2 = 3
        L_0x0140:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r15.E
            r11 = 1
            r1 = r1[r11]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r11 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r1 != r11) goto L_0x014c
            if (r13 != 0) goto L_0x014c
            r13 = 3
        L_0x014c:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r15.E
            r11 = 0
            r3 = r1[r11]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r11 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r3 != r11) goto L_0x0164
            r3 = 1
            r1 = r1[r3]
            if (r1 != r11) goto L_0x0164
            r1 = 3
            if (r2 != r1) goto L_0x0165
            if (r13 != r1) goto L_0x0165
            r15.a((boolean) r0, (boolean) r12, (boolean) r8, (boolean) r9)
            goto L_0x01c8
        L_0x0164:
            r1 = 3
        L_0x0165:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r3 = r15.E
            r8 = 0
            r9 = r3[r8]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r11 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r9 != r11) goto L_0x018d
            if (r2 != r1) goto L_0x018d
            r15.q = r8
            float r1 = r15.r
            int r5 = r15.H
            float r5 = (float) r5
            float r1 = r1 * r5
            int r1 = (int) r1
            r8 = 1
            r3 = r3[r8]
            if (r3 == r11) goto L_0x0188
            r28 = r1
            r29 = r7
            r26 = r13
            r25 = 4
            goto L_0x01dd
        L_0x0188:
            r28 = r1
            r25 = r2
            goto L_0x01cc
        L_0x018d:
            r8 = 1
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r15.E
            r1 = r1[r8]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r1 != r3) goto L_0x01c8
            r1 = 3
            if (r13 != r1) goto L_0x01c8
            r15.q = r8
            int r1 = r15.J
            r3 = -1
            if (r1 != r3) goto L_0x01a7
            r1 = 1065353216(0x3f800000, float:1.0)
            float r3 = r15.r
            float r1 = r1 / r3
            r15.r = r1
        L_0x01a7:
            float r1 = r15.r
            int r3 = r15.G
            float r3 = (float) r3
            float r1 = r1 * r3
            int r1 = (int) r1
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r3 = r15.E
            r7 = 0
            r3 = r3[r7]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r7 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r3 == r7) goto L_0x01c1
            r29 = r1
            r25 = r2
            r28 = r5
            r26 = 4
            goto L_0x01dd
        L_0x01c1:
            r29 = r1
            r25 = r2
            r28 = r5
            goto L_0x01ce
        L_0x01c8:
            r25 = r2
            r28 = r5
        L_0x01cc:
            r29 = r7
        L_0x01ce:
            r26 = r13
            r27 = 1
            goto L_0x01df
        L_0x01d3:
            r23 = r3
            r25 = r2
            r28 = r5
            r29 = r7
            r26 = r13
        L_0x01dd:
            r27 = 0
        L_0x01df:
            int[] r1 = r15.f519h
            r2 = 0
            r1[r2] = r25
            r2 = 1
            r1[r2] = r26
            if (r27 == 0) goto L_0x01f5
            int r1 = r15.q
            if (r1 == 0) goto L_0x01f1
            r2 = -1
            if (r1 != r2) goto L_0x01f6
            goto L_0x01f2
        L_0x01f1:
            r2 = -1
        L_0x01f2:
            r24 = 1
            goto L_0x01f8
        L_0x01f5:
            r2 = -1
        L_0x01f6:
            r24 = 0
        L_0x01f8:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r15.E
            r3 = 0
            r1 = r1[r3]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r1 != r3) goto L_0x0208
            boolean r1 = r15 instanceof b.g.a.a.f
            if (r1 == 0) goto L_0x0208
            r30 = 1
            goto L_0x020a
        L_0x0208:
            r30 = 0
        L_0x020a:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r15.B
            boolean r1 = r1.i()
            r3 = 1
            r31 = r1 ^ 1
            int r1 = r15.f513b
            r13 = 2
            r32 = 0
            if (r1 == r13) goto L_0x0281
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r15.F
            if (r1 == 0) goto L_0x0227
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.w
            androidx.constraintlayout.solver.SolverVariable r1 = r14.a((java.lang.Object) r1)
            r20 = r1
            goto L_0x0229
        L_0x0227:
            r20 = r32
        L_0x0229:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r1 = r15.F
            if (r1 == 0) goto L_0x0236
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.u
            androidx.constraintlayout.solver.SolverVariable r1 = r14.a((java.lang.Object) r1)
            r33 = r1
            goto L_0x0238
        L_0x0236:
            r33 = r32
        L_0x0238:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r1 = r15.E
            r17 = 0
            r5 = r1[r17]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r15.u
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r15.w
            int r9 = r15.K
            int r11 = r15.T
            int[] r1 = r15.s
            r1 = r1[r17]
            r34 = r12
            r12 = r1
            float r1 = r15.X
            r13 = r1
            int r1 = r15.f520i
            r17 = r1
            int r1 = r15.f521j
            r18 = r1
            float r1 = r15.f522k
            r19 = r1
            r35 = r0
            r0 = r38
            r1 = r39
            r3 = -1
            r2 = r35
            r36 = r23
            r3 = r33
            r23 = r4
            r4 = r20
            r37 = r6
            r6 = r30
            r30 = r10
            r10 = r28
            r14 = r24
            r15 = r16
            r16 = r25
            r20 = r31
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            goto L_0x028b
        L_0x0281:
            r37 = r6
            r30 = r10
            r34 = r12
            r36 = r23
            r23 = r4
        L_0x028b:
            r15 = r38
            int r0 = r15.f514c
            r1 = 2
            if (r0 != r1) goto L_0x0293
            return
        L_0x0293:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r0 = r15.E
            r14 = 1
            r0 = r0[r14]
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r1 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r0 != r1) goto L_0x02a2
            boolean r0 = r15 instanceof b.g.a.a.f
            if (r0 == 0) goto L_0x02a2
            r6 = 1
            goto L_0x02a3
        L_0x02a2:
            r6 = 0
        L_0x02a3:
            if (r27 == 0) goto L_0x02af
            int r0 = r15.q
            if (r0 == r14) goto L_0x02ac
            r1 = -1
            if (r0 != r1) goto L_0x02af
        L_0x02ac:
            r16 = 1
            goto L_0x02b1
        L_0x02af:
            r16 = 0
        L_0x02b1:
            int r0 = r15.S
            if (r0 <= 0) goto L_0x02ea
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.y
            b.g.a.a.l r0 = r0.d()
            int r0 = r0.f2424b
            if (r0 != r14) goto L_0x02cb
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.y
            b.g.a.a.l r0 = r0.d()
            r10 = r39
            r0.a((b.g.a.C0249e) r10)
            goto L_0x02ec
        L_0x02cb:
            r10 = r39
            int r0 = r38.d()
            r1 = 6
            r2 = r36
            r4 = r37
            r10.a((androidx.constraintlayout.solver.SolverVariable) r2, (androidx.constraintlayout.solver.SolverVariable) r4, (int) r0, (int) r1)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r15.y
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f502d
            if (r0 == 0) goto L_0x02ee
            androidx.constraintlayout.solver.SolverVariable r0 = r10.a((java.lang.Object) r0)
            r3 = 0
            r10.a((androidx.constraintlayout.solver.SolverVariable) r2, (androidx.constraintlayout.solver.SolverVariable) r0, (int) r3, (int) r1)
            r20 = 0
            goto L_0x02f0
        L_0x02ea:
            r10 = r39
        L_0x02ec:
            r4 = r37
        L_0x02ee:
            r20 = r31
        L_0x02f0:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r15.F
            if (r0 == 0) goto L_0x02fd
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.x
            androidx.constraintlayout.solver.SolverVariable r0 = r10.a((java.lang.Object) r0)
            r24 = r0
            goto L_0x02ff
        L_0x02fd:
            r24 = r32
        L_0x02ff:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r15.F
            if (r0 == 0) goto L_0x030b
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.v
            androidx.constraintlayout.solver.SolverVariable r0 = r10.a((java.lang.Object) r0)
            r3 = r0
            goto L_0x030d
        L_0x030b:
            r3 = r32
        L_0x030d:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour[] r0 = r15.E
            r5 = r0[r14]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r7 = r15.v
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r15.x
            int r9 = r15.L
            int r11 = r15.U
            int[] r0 = r15.s
            r12 = r0[r14]
            float r13 = r15.Y
            int r0 = r15.f523l
            r17 = r0
            int r0 = r15.m
            r18 = r0
            float r0 = r15.n
            r19 = r0
            r0 = r38
            r1 = r39
            r2 = r34
            r25 = r4
            r4 = r24
            r10 = r29
            r14 = r16
            r15 = r22
            r16 = r26
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            if (r27 == 0) goto L_0x036b
            r6 = 6
            r7 = r38
            int r0 = r7.q
            r1 = 1
            if (r0 != r1) goto L_0x035a
            float r5 = r7.r
            r0 = r39
            r1 = r23
            r2 = r25
            r3 = r30
            r4 = r21
            r0.a((androidx.constraintlayout.solver.SolverVariable) r1, (androidx.constraintlayout.solver.SolverVariable) r2, (androidx.constraintlayout.solver.SolverVariable) r3, (androidx.constraintlayout.solver.SolverVariable) r4, (float) r5, (int) r6)
            goto L_0x036d
        L_0x035a:
            float r5 = r7.r
            r6 = 6
            r0 = r39
            r1 = r30
            r2 = r21
            r3 = r23
            r4 = r25
            r0.a((androidx.constraintlayout.solver.SolverVariable) r1, (androidx.constraintlayout.solver.SolverVariable) r2, (androidx.constraintlayout.solver.SolverVariable) r3, (androidx.constraintlayout.solver.SolverVariable) r4, (float) r5, (int) r6)
            goto L_0x036d
        L_0x036b:
            r7 = r38
        L_0x036d:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r7.B
            boolean r0 = r0.i()
            if (r0 == 0) goto L_0x0395
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r7.B
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.g()
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.c()
            float r1 = r7.t
            r2 = 1119092736(0x42b40000, float:90.0)
            float r1 = r1 + r2
            double r1 = (double) r1
            double r1 = java.lang.Math.toRadians(r1)
            float r1 = (float) r1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r7.B
            int r2 = r2.b()
            r3 = r39
            r3.a((androidx.constraintlayout.solver.widgets.ConstraintWidget) r7, (androidx.constraintlayout.solver.widgets.ConstraintWidget) r0, (float) r1, (int) r2)
        L_0x0395:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.a(b.g.a.e):void");
    }

    public void a(boolean z2, boolean z3, boolean z4, boolean z5) {
        if (this.q == -1) {
            if (z4 && !z5) {
                this.q = 0;
            } else if (!z4 && z5) {
                this.q = 1;
                if (this.J == -1) {
                    this.r = 1.0f / this.r;
                }
            }
        }
        if (this.q == 0 && (!this.v.i() || !this.x.i())) {
            this.q = 1;
        } else if (this.q == 1 && (!this.u.i() || !this.w.i())) {
            this.q = 0;
        }
        if (this.q == -1 && (!this.v.i() || !this.x.i() || !this.u.i() || !this.w.i())) {
            if (this.v.i() && this.x.i()) {
                this.q = 0;
            } else if (this.u.i() && this.w.i()) {
                this.r = 1.0f / this.r;
                this.q = 1;
            }
        }
        if (this.q == -1) {
            if (z2 && !z3) {
                this.q = 0;
            } else if (!z2 && z3) {
                this.r = 1.0f / this.r;
                this.q = 1;
            }
        }
        if (this.q == -1) {
            if (this.f520i > 0 && this.f523l == 0) {
                this.q = 0;
            } else if (this.f520i == 0 && this.f523l > 0) {
                this.r = 1.0f / this.r;
                this.q = 1;
            }
        }
        if (this.q == -1 && z2 && z3) {
            this.r = 1.0f / this.r;
            this.q = 1;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:163:0x02c8  */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x02e5  */
    /* JADX WARNING: Removed duplicated region for block: B:166:0x02ea  */
    /* JADX WARNING: Removed duplicated region for block: B:167:0x02fb  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02fe  */
    /* JADX WARNING: Removed duplicated region for block: B:173:0x0308  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x01e9  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(b.g.a.C0249e r26, boolean r27, androidx.constraintlayout.solver.SolverVariable r28, androidx.constraintlayout.solver.SolverVariable r29, androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour r30, boolean r31, androidx.constraintlayout.solver.widgets.ConstraintAnchor r32, androidx.constraintlayout.solver.widgets.ConstraintAnchor r33, int r34, int r35, int r36, int r37, float r38, boolean r39, boolean r40, int r41, int r42, int r43, float r44, boolean r45) {
        /*
            r25 = this;
            r0 = r25
            r10 = r26
            r11 = r28
            r12 = r29
            r1 = r36
            r2 = r37
            r13 = r32
            androidx.constraintlayout.solver.SolverVariable r14 = r10.a((java.lang.Object) r13)
            r15 = r33
            androidx.constraintlayout.solver.SolverVariable r9 = r10.a((java.lang.Object) r15)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r32.g()
            androidx.constraintlayout.solver.SolverVariable r8 = r10.a((java.lang.Object) r3)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r33.g()
            androidx.constraintlayout.solver.SolverVariable r7 = r10.a((java.lang.Object) r3)
            boolean r3 = r10.f2451i
            r6 = 1
            r4 = 6
            r5 = 0
            if (r3 == 0) goto L_0x0066
            b.g.a.a.l r3 = r32.d()
            int r3 = r3.f2424b
            if (r3 != r6) goto L_0x0066
            b.g.a.a.l r3 = r33.d()
            int r3 = r3.f2424b
            if (r3 != r6) goto L_0x0066
            b.g.a.f r1 = b.g.a.C0249e.f()
            if (r1 == 0) goto L_0x0050
            b.g.a.f r1 = b.g.a.C0249e.f()
            long r2 = r1.r
            r6 = 1
            long r2 = r2 + r6
            r1.r = r2
        L_0x0050:
            b.g.a.a.l r1 = r32.d()
            r1.a((b.g.a.C0249e) r10)
            b.g.a.a.l r1 = r33.d()
            r1.a((b.g.a.C0249e) r10)
            if (r40 != 0) goto L_0x0065
            if (r27 == 0) goto L_0x0065
            r10.b(r12, r9, r5, r4)
        L_0x0065:
            return
        L_0x0066:
            b.g.a.f r3 = b.g.a.C0249e.f()
            if (r3 == 0) goto L_0x0078
            b.g.a.f r3 = b.g.a.C0249e.f()
            long r4 = r3.z
            r16 = 1
            long r4 = r4 + r16
            r3.z = r4
        L_0x0078:
            boolean r16 = r32.i()
            boolean r17 = r33.i()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r0.B
            boolean r19 = r3.i()
            if (r16 == 0) goto L_0x008a
            r3 = 1
            goto L_0x008b
        L_0x008a:
            r3 = 0
        L_0x008b:
            if (r17 == 0) goto L_0x008f
            int r3 = r3 + 1
        L_0x008f:
            if (r19 == 0) goto L_0x0093
            int r3 = r3 + 1
        L_0x0093:
            r5 = r3
            if (r39 == 0) goto L_0x0098
            r3 = 3
            goto L_0x009a
        L_0x0098:
            r3 = r41
        L_0x009a:
            int[] r20 = b.g.a.a.e.f2409b
            int r21 = r30.ordinal()
            r4 = r20[r21]
            r13 = 2
            r15 = 4
            if (r4 == r6) goto L_0x00ad
            if (r4 == r13) goto L_0x00ad
            r13 = 3
            if (r4 == r13) goto L_0x00ad
            if (r4 == r15) goto L_0x00af
        L_0x00ad:
            r4 = 0
            goto L_0x00b3
        L_0x00af:
            if (r3 != r15) goto L_0x00b2
            goto L_0x00ad
        L_0x00b2:
            r4 = 1
        L_0x00b3:
            int r13 = r0.ba
            r15 = 8
            if (r13 != r15) goto L_0x00bc
            r4 = 0
            r13 = 0
            goto L_0x00bf
        L_0x00bc:
            r13 = r4
            r4 = r35
        L_0x00bf:
            if (r45 == 0) goto L_0x00da
            if (r16 != 0) goto L_0x00cd
            if (r17 != 0) goto L_0x00cd
            if (r19 != 0) goto L_0x00cd
            r15 = r34
            r10.a((androidx.constraintlayout.solver.SolverVariable) r14, (int) r15)
            goto L_0x00da
        L_0x00cd:
            if (r16 == 0) goto L_0x00da
            if (r17 != 0) goto L_0x00da
            int r15 = r32.b()
            r6 = 6
            r10.a((androidx.constraintlayout.solver.SolverVariable) r14, (androidx.constraintlayout.solver.SolverVariable) r8, (int) r15, (int) r6)
            goto L_0x00db
        L_0x00da:
            r6 = 6
        L_0x00db:
            if (r13 != 0) goto L_0x0108
            if (r31 == 0) goto L_0x00f5
            r6 = 0
            r15 = 3
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r14, (int) r6, (int) r15)
            if (r1 <= 0) goto L_0x00eb
            r4 = 6
            r10.b(r9, r14, r1, r4)
            goto L_0x00ec
        L_0x00eb:
            r4 = 6
        L_0x00ec:
            r6 = 2147483647(0x7fffffff, float:NaN)
            if (r2 >= r6) goto L_0x00fa
            r10.c(r9, r14, r2, r4)
            goto L_0x00fa
        L_0x00f5:
            r2 = 6
            r15 = 3
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r14, (int) r4, (int) r2)
        L_0x00fa:
            r15 = r42
            r2 = r43
            r34 = r3
            r0 = r5
            r24 = r7
            r22 = r8
            r1 = 0
            goto L_0x0201
        L_0x0108:
            r15 = 3
            r2 = -2
            r6 = r42
            if (r6 != r2) goto L_0x0112
            r6 = r43
            r15 = r4
            goto L_0x0115
        L_0x0112:
            r15 = r6
            r6 = r43
        L_0x0115:
            if (r6 != r2) goto L_0x0118
            r6 = r4
        L_0x0118:
            if (r15 <= 0) goto L_0x012a
            if (r27 == 0) goto L_0x0121
            r2 = 6
            r10.b(r9, r14, r15, r2)
            goto L_0x0125
        L_0x0121:
            r2 = 6
            r10.b(r9, r14, r15, r2)
        L_0x0125:
            int r4 = java.lang.Math.max(r4, r15)
            goto L_0x012b
        L_0x012a:
            r2 = 6
        L_0x012b:
            if (r6 <= 0) goto L_0x013c
            if (r27 == 0) goto L_0x0135
            r2 = 1
            r10.c(r9, r14, r6, r2)
            r2 = 6
            goto L_0x0138
        L_0x0135:
            r10.c(r9, r14, r6, r2)
        L_0x0138:
            int r4 = java.lang.Math.min(r4, r6)
        L_0x013c:
            r2 = 1
            if (r3 != r2) goto L_0x0167
            if (r27 == 0) goto L_0x0153
            r2 = 6
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r14, (int) r4, (int) r2)
            r34 = r3
            r0 = r5
            r24 = r7
            r22 = r8
            r35 = r13
            r1 = 0
            r8 = r4
            r13 = r6
            goto L_0x01e5
        L_0x0153:
            r2 = 6
            if (r40 == 0) goto L_0x015e
            r35 = r13
            r13 = 4
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r14, (int) r4, (int) r13)
            goto L_0x01db
        L_0x015e:
            r35 = r13
            r2 = 1
            r13 = 4
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r14, (int) r4, (int) r2)
            goto L_0x01db
        L_0x0167:
            r35 = r13
            r2 = 2
            r13 = 4
            if (r3 != r2) goto L_0x01db
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r2 = r32.h()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r13 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            if (r2 == r13) goto L_0x0199
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r2 = r32.h()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r13 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            if (r2 != r13) goto L_0x017e
            goto L_0x0199
        L_0x017e:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r0.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r13 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r13)
            androidx.constraintlayout.solver.SolverVariable r2 = r10.a((java.lang.Object) r2)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r13 = r0.F
            r31 = r2
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r2 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r2)
            androidx.constraintlayout.solver.SolverVariable r2 = r10.a((java.lang.Object) r2)
            goto L_0x01b3
        L_0x0199:
            androidx.constraintlayout.solver.widgets.ConstraintWidget r2 = r0.F
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r13 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r2.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r13)
            androidx.constraintlayout.solver.SolverVariable r2 = r10.a((java.lang.Object) r2)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r13 = r0.F
            r31 = r2
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r2 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r2 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r2)
            androidx.constraintlayout.solver.SolverVariable r2 = r10.a((java.lang.Object) r2)
        L_0x01b3:
            r21 = r31
            r13 = r2
            b.g.a.b r2 = r26.c()
            r31 = r2
            r18 = 1
            r20 = 6
            r0 = r3
            r3 = r9
            r34 = r0
            r22 = r8
            r0 = 6
            r8 = r4
            r4 = r14
            r0 = r5
            r1 = 0
            r5 = r13
            r13 = r6
            r6 = r21
            r24 = r7
            r7 = r44
            r2.a(r3, r4, r5, r6, r7)
            r10.a((b.g.a.C0246b) r2)
            r5 = 0
            goto L_0x01e7
        L_0x01db:
            r34 = r3
            r0 = r5
            r13 = r6
            r24 = r7
            r22 = r8
            r1 = 0
            r8 = r4
        L_0x01e5:
            r5 = r35
        L_0x01e7:
            if (r5 == 0) goto L_0x01ff
            r2 = 2
            if (r0 == r2) goto L_0x01ff
            if (r39 != 0) goto L_0x01ff
            int r2 = java.lang.Math.max(r15, r8)
            if (r13 <= 0) goto L_0x01f8
            int r2 = java.lang.Math.min(r13, r2)
        L_0x01f8:
            r3 = 6
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r14, (int) r2, (int) r3)
            r2 = r13
            r13 = 0
            goto L_0x0201
        L_0x01ff:
            r2 = r13
            r13 = r5
        L_0x0201:
            if (r45 == 0) goto L_0x030f
            if (r40 == 0) goto L_0x0207
            goto L_0x030f
        L_0x0207:
            r0 = 5
            if (r16 != 0) goto L_0x0215
            if (r17 != 0) goto L_0x0215
            if (r19 != 0) goto L_0x0215
            if (r27 == 0) goto L_0x0303
            r10.b(r12, r9, r1, r0)
            goto L_0x0303
        L_0x0215:
            if (r16 == 0) goto L_0x0220
            if (r17 != 0) goto L_0x0220
            if (r27 == 0) goto L_0x0303
            r10.b(r12, r9, r1, r0)
            goto L_0x0303
        L_0x0220:
            if (r16 != 0) goto L_0x0236
            if (r17 == 0) goto L_0x0236
            int r2 = r33.b()
            int r2 = -r2
            r8 = r24
            r3 = 6
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r8, (int) r2, (int) r3)
            if (r27 == 0) goto L_0x0303
            r10.b(r14, r11, r1, r0)
            goto L_0x0303
        L_0x0236:
            r8 = r24
            if (r16 == 0) goto L_0x0303
            if (r17 == 0) goto L_0x0303
            if (r13 == 0) goto L_0x02ad
            if (r27 == 0) goto L_0x0248
            r13 = 0
            if (r36 != 0) goto L_0x0249
            r1 = 6
            r10.b(r9, r14, r13, r1)
            goto L_0x0249
        L_0x0248:
            r13 = 0
        L_0x0249:
            if (r34 != 0) goto L_0x0277
            if (r2 > 0) goto L_0x0253
            if (r15 <= 0) goto L_0x0250
            goto L_0x0253
        L_0x0250:
            r1 = 6
            r6 = 0
            goto L_0x0255
        L_0x0253:
            r1 = 4
            r6 = 1
        L_0x0255:
            int r3 = r32.b()
            r7 = r22
            r10.a((androidx.constraintlayout.solver.SolverVariable) r14, (androidx.constraintlayout.solver.SolverVariable) r7, (int) r3, (int) r1)
            int r3 = r33.b()
            int r3 = -r3
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r8, (int) r3, (int) r1)
            if (r2 > 0) goto L_0x026e
            if (r15 <= 0) goto L_0x026b
            goto L_0x026e
        L_0x026b:
            r23 = 0
            goto L_0x0270
        L_0x026e:
            r23 = 1
        L_0x0270:
            r15 = r25
            r16 = r6
            r1 = r23
            goto L_0x02c6
        L_0x0277:
            r4 = r34
            r7 = r22
            r1 = 1
            if (r4 != r1) goto L_0x0284
            r0 = 6
            r16 = 1
            r15 = r25
            goto L_0x02c6
        L_0x0284:
            r3 = 3
            if (r4 != r3) goto L_0x02a9
            if (r39 != 0) goto L_0x0294
            r15 = r25
            int r3 = r15.q
            r4 = -1
            if (r3 == r4) goto L_0x0296
            if (r2 > 0) goto L_0x0296
            r2 = 6
            goto L_0x0297
        L_0x0294:
            r15 = r25
        L_0x0296:
            r2 = 4
        L_0x0297:
            int r3 = r32.b()
            r10.a((androidx.constraintlayout.solver.SolverVariable) r14, (androidx.constraintlayout.solver.SolverVariable) r7, (int) r3, (int) r2)
            int r3 = r33.b()
            int r3 = -r3
            r10.a((androidx.constraintlayout.solver.SolverVariable) r9, (androidx.constraintlayout.solver.SolverVariable) r8, (int) r3, (int) r2)
            r16 = 1
            goto L_0x02c6
        L_0x02a9:
            r15 = r25
            r1 = 0
            goto L_0x02c4
        L_0x02ad:
            r7 = r22
            r1 = 1
            r13 = 0
            r15 = r25
            if (r27 == 0) goto L_0x02c4
            int r2 = r32.b()
            r10.b(r14, r7, r2, r0)
            int r2 = r33.b()
            int r2 = -r2
            r10.c(r9, r8, r2, r0)
        L_0x02c4:
            r16 = 0
        L_0x02c6:
            if (r1 == 0) goto L_0x02e5
            int r4 = r32.b()
            int r17 = r33.b()
            r1 = r26
            r2 = r14
            r3 = r7
            r5 = r38
            r6 = r8
            r18 = r7
            r7 = r9
            r15 = r8
            r13 = r18
            r8 = r17
            r12 = r9
            r9 = r0
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9)
            goto L_0x02e8
        L_0x02e5:
            r13 = r7
            r15 = r8
            r12 = r9
        L_0x02e8:
            if (r16 == 0) goto L_0x02fb
            int r0 = r32.b()
            r1 = 6
            r10.b(r14, r13, r0, r1)
            int r0 = r33.b()
            int r0 = -r0
            r10.c(r12, r15, r0, r1)
            goto L_0x02fc
        L_0x02fb:
            r1 = 6
        L_0x02fc:
            if (r27 == 0) goto L_0x0305
            r2 = 0
            r10.b(r14, r11, r2, r1)
            goto L_0x0306
        L_0x0303:
            r12 = r9
            r1 = 6
        L_0x0305:
            r2 = 0
        L_0x0306:
            if (r27 == 0) goto L_0x030e
            r3 = r29
            r4 = r12
            r10.b(r3, r4, r2, r1)
        L_0x030e:
            return
        L_0x030f:
            r4 = r9
            r3 = r12
            r1 = 6
            r2 = 0
            r5 = 2
            if (r0 >= r5) goto L_0x031e
            if (r27 == 0) goto L_0x031e
            r10.b(r14, r11, r2, r1)
            r10.b(r3, r4, r2, r1)
        L_0x031e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.a(b.g.a.e, boolean, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.solver.widgets.ConstraintAnchor, androidx.constraintlayout.solver.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, int, int, int, float, boolean):void");
    }
}
