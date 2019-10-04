package b.g.a;

import androidx.constraintlayout.solver.SolverVariable;
import java.util.Arrays;

/* renamed from: b.g.a.a  reason: case insensitive filesystem */
/* compiled from: ArrayLinkedVariables */
public class C0245a {

    /* renamed from: a  reason: collision with root package name */
    public int f2384a = 0;

    /* renamed from: b  reason: collision with root package name */
    public final C0246b f2385b;

    /* renamed from: c  reason: collision with root package name */
    public final C0247c f2386c;

    /* renamed from: d  reason: collision with root package name */
    public int f2387d = 8;

    /* renamed from: e  reason: collision with root package name */
    public SolverVariable f2388e = null;

    /* renamed from: f  reason: collision with root package name */
    public int[] f2389f;

    /* renamed from: g  reason: collision with root package name */
    public int[] f2390g;

    /* renamed from: h  reason: collision with root package name */
    public float[] f2391h;

    /* renamed from: i  reason: collision with root package name */
    public int f2392i;

    /* renamed from: j  reason: collision with root package name */
    public int f2393j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2394k;

    public C0245a(C0246b bVar, C0247c cVar) {
        int i2 = this.f2387d;
        this.f2389f = new int[i2];
        this.f2390g = new int[i2];
        this.f2391h = new float[i2];
        this.f2392i = -1;
        this.f2393j = -1;
        this.f2394k = false;
        this.f2385b = bVar;
        this.f2386c = cVar;
    }

    public final void a(SolverVariable solverVariable, float f2) {
        if (f2 == 0.0f) {
            a(solverVariable, true);
            return;
        }
        int i2 = this.f2392i;
        if (i2 == -1) {
            this.f2392i = 0;
            float[] fArr = this.f2391h;
            int i3 = this.f2392i;
            fArr[i3] = f2;
            this.f2389f[i3] = solverVariable.f489c;
            this.f2390g[i3] = -1;
            solverVariable.f497k++;
            solverVariable.a(this.f2385b);
            this.f2384a++;
            if (!this.f2394k) {
                this.f2393j++;
                int i4 = this.f2393j;
                int[] iArr = this.f2389f;
                if (i4 >= iArr.length) {
                    this.f2394k = true;
                    this.f2393j = iArr.length - 1;
                }
            }
            return;
        }
        int i5 = 0;
        int i6 = -1;
        while (i2 != -1 && i5 < this.f2384a) {
            int[] iArr2 = this.f2389f;
            int i7 = iArr2[i2];
            int i8 = solverVariable.f489c;
            if (i7 == i8) {
                this.f2391h[i2] = f2;
                return;
            }
            if (iArr2[i2] < i8) {
                i6 = i2;
            }
            i2 = this.f2390g[i2];
            i5++;
        }
        int i9 = this.f2393j;
        int i10 = i9 + 1;
        if (this.f2394k) {
            int[] iArr3 = this.f2389f;
            if (iArr3[i9] != -1) {
                i9 = iArr3.length;
            }
        } else {
            i9 = i10;
        }
        int[] iArr4 = this.f2389f;
        if (i9 >= iArr4.length && this.f2384a < iArr4.length) {
            int i11 = 0;
            while (true) {
                int[] iArr5 = this.f2389f;
                if (i11 >= iArr5.length) {
                    break;
                } else if (iArr5[i11] == -1) {
                    i9 = i11;
                    break;
                } else {
                    i11++;
                }
            }
        }
        int[] iArr6 = this.f2389f;
        if (i9 >= iArr6.length) {
            i9 = iArr6.length;
            this.f2387d *= 2;
            this.f2394k = false;
            this.f2393j = i9 - 1;
            this.f2391h = Arrays.copyOf(this.f2391h, this.f2387d);
            this.f2389f = Arrays.copyOf(this.f2389f, this.f2387d);
            this.f2390g = Arrays.copyOf(this.f2390g, this.f2387d);
        }
        this.f2389f[i9] = solverVariable.f489c;
        this.f2391h[i9] = f2;
        if (i6 != -1) {
            int[] iArr7 = this.f2390g;
            iArr7[i9] = iArr7[i6];
            iArr7[i6] = i9;
        } else {
            this.f2390g[i9] = this.f2392i;
            this.f2392i = i9;
        }
        solverVariable.f497k++;
        solverVariable.a(this.f2385b);
        this.f2384a++;
        if (!this.f2394k) {
            this.f2393j++;
        }
        if (this.f2384a >= this.f2389f.length) {
            this.f2394k = true;
        }
        int i12 = this.f2393j;
        int[] iArr8 = this.f2389f;
        if (i12 >= iArr8.length) {
            this.f2394k = true;
            this.f2393j = iArr8.length - 1;
        }
    }

    public void b() {
        int i2 = this.f2392i;
        int i3 = 0;
        while (i2 != -1 && i3 < this.f2384a) {
            float[] fArr = this.f2391h;
            fArr[i2] = fArr[i2] * -1.0f;
            i2 = this.f2390g[i2];
            i3++;
        }
    }

    public String toString() {
        int i2 = this.f2392i;
        String str = "";
        int i3 = 0;
        while (i2 != -1 && i3 < this.f2384a) {
            String str2 = str + " -> ";
            String str3 = str2 + this.f2391h[i2] + " : ";
            str = str3 + this.f2386c.f2442c[this.f2389f[i2]];
            i2 = this.f2390g[i2];
            i3++;
        }
        return str;
    }

    public final float b(int i2) {
        int i3 = this.f2392i;
        int i4 = 0;
        while (i3 != -1 && i4 < this.f2384a) {
            if (i4 == i2) {
                return this.f2391h[i3];
            }
            i3 = this.f2390g[i3];
            i4++;
        }
        return 0.0f;
    }

    public final float b(SolverVariable solverVariable) {
        int i2 = this.f2392i;
        int i3 = 0;
        while (i2 != -1 && i3 < this.f2384a) {
            if (this.f2389f[i2] == solverVariable.f489c) {
                return this.f2391h[i2];
            }
            i2 = this.f2390g[i2];
            i3++;
        }
        return 0.0f;
    }

    public final void a(SolverVariable solverVariable, float f2, boolean z) {
        if (f2 != 0.0f) {
            int i2 = this.f2392i;
            if (i2 == -1) {
                this.f2392i = 0;
                float[] fArr = this.f2391h;
                int i3 = this.f2392i;
                fArr[i3] = f2;
                this.f2389f[i3] = solverVariable.f489c;
                this.f2390g[i3] = -1;
                solverVariable.f497k++;
                solverVariable.a(this.f2385b);
                this.f2384a++;
                if (!this.f2394k) {
                    this.f2393j++;
                    int i4 = this.f2393j;
                    int[] iArr = this.f2389f;
                    if (i4 >= iArr.length) {
                        this.f2394k = true;
                        this.f2393j = iArr.length - 1;
                    }
                }
                return;
            }
            int i5 = 0;
            int i6 = -1;
            while (i2 != -1 && i5 < this.f2384a) {
                int[] iArr2 = this.f2389f;
                int i7 = iArr2[i2];
                int i8 = solverVariable.f489c;
                if (i7 == i8) {
                    float[] fArr2 = this.f2391h;
                    fArr2[i2] = fArr2[i2] + f2;
                    if (fArr2[i2] == 0.0f) {
                        if (i2 == this.f2392i) {
                            this.f2392i = this.f2390g[i2];
                        } else {
                            int[] iArr3 = this.f2390g;
                            iArr3[i6] = iArr3[i2];
                        }
                        if (z) {
                            solverVariable.b(this.f2385b);
                        }
                        if (this.f2394k) {
                            this.f2393j = i2;
                        }
                        solverVariable.f497k--;
                        this.f2384a--;
                    }
                    return;
                }
                if (iArr2[i2] < i8) {
                    i6 = i2;
                }
                i2 = this.f2390g[i2];
                i5++;
            }
            int i9 = this.f2393j;
            int i10 = i9 + 1;
            if (this.f2394k) {
                int[] iArr4 = this.f2389f;
                if (iArr4[i9] != -1) {
                    i9 = iArr4.length;
                }
            } else {
                i9 = i10;
            }
            int[] iArr5 = this.f2389f;
            if (i9 >= iArr5.length && this.f2384a < iArr5.length) {
                int i11 = 0;
                while (true) {
                    int[] iArr6 = this.f2389f;
                    if (i11 >= iArr6.length) {
                        break;
                    } else if (iArr6[i11] == -1) {
                        i9 = i11;
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            int[] iArr7 = this.f2389f;
            if (i9 >= iArr7.length) {
                i9 = iArr7.length;
                this.f2387d *= 2;
                this.f2394k = false;
                this.f2393j = i9 - 1;
                this.f2391h = Arrays.copyOf(this.f2391h, this.f2387d);
                this.f2389f = Arrays.copyOf(this.f2389f, this.f2387d);
                this.f2390g = Arrays.copyOf(this.f2390g, this.f2387d);
            }
            this.f2389f[i9] = solverVariable.f489c;
            this.f2391h[i9] = f2;
            if (i6 != -1) {
                int[] iArr8 = this.f2390g;
                iArr8[i9] = iArr8[i6];
                iArr8[i6] = i9;
            } else {
                this.f2390g[i9] = this.f2392i;
                this.f2392i = i9;
            }
            solverVariable.f497k++;
            solverVariable.a(this.f2385b);
            this.f2384a++;
            if (!this.f2394k) {
                this.f2393j++;
            }
            int i12 = this.f2393j;
            int[] iArr9 = this.f2389f;
            if (i12 >= iArr9.length) {
                this.f2394k = true;
                this.f2393j = iArr9.length - 1;
            }
        }
    }

    public final float a(SolverVariable solverVariable, boolean z) {
        if (this.f2388e == solverVariable) {
            this.f2388e = null;
        }
        int i2 = this.f2392i;
        if (i2 == -1) {
            return 0.0f;
        }
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.f2384a) {
            if (this.f2389f[i2] == solverVariable.f489c) {
                if (i2 == this.f2392i) {
                    this.f2392i = this.f2390g[i2];
                } else {
                    int[] iArr = this.f2390g;
                    iArr[i4] = iArr[i2];
                }
                if (z) {
                    solverVariable.b(this.f2385b);
                }
                solverVariable.f497k--;
                this.f2384a--;
                this.f2389f[i2] = -1;
                if (this.f2394k) {
                    this.f2393j = i2;
                }
                return this.f2391h[i2];
            }
            i3++;
            i4 = i2;
            i2 = this.f2390g[i2];
        }
        return 0.0f;
    }

    public final void a() {
        int i2 = this.f2392i;
        int i3 = 0;
        while (i2 != -1 && i3 < this.f2384a) {
            SolverVariable solverVariable = this.f2386c.f2442c[this.f2389f[i2]];
            if (solverVariable != null) {
                solverVariable.b(this.f2385b);
            }
            i2 = this.f2390g[i2];
            i3++;
        }
        this.f2392i = -1;
        this.f2393j = -1;
        this.f2394k = false;
        this.f2384a = 0;
    }

    public final boolean a(SolverVariable solverVariable) {
        int i2 = this.f2392i;
        if (i2 == -1) {
            return false;
        }
        int i3 = 0;
        while (i2 != -1 && i3 < this.f2384a) {
            if (this.f2389f[i2] == solverVariable.f489c) {
                return true;
            }
            i2 = this.f2390g[i2];
            i3++;
        }
        return false;
    }

    public void a(float f2) {
        int i2 = this.f2392i;
        int i3 = 0;
        while (i2 != -1 && i3 < this.f2384a) {
            float[] fArr = this.f2391h;
            fArr[i2] = fArr[i2] / f2;
            i2 = this.f2390g[i2];
            i3++;
        }
    }

    public final boolean a(SolverVariable solverVariable, C0249e eVar) {
        return solverVariable.f497k <= 1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x008f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public androidx.constraintlayout.solver.SolverVariable a(b.g.a.C0249e r15) {
        /*
            r14 = this;
            int r0 = r14.f2392i
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = r1
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
        L_0x000a:
            r9 = -1
            if (r0 == r9) goto L_0x0097
            int r9 = r14.f2384a
            if (r2 >= r9) goto L_0x0097
            float[] r9 = r14.f2391h
            r10 = r9[r0]
            r11 = 981668463(0x3a83126f, float:0.001)
            b.g.a.c r12 = r14.f2386c
            androidx.constraintlayout.solver.SolverVariable[] r12 = r12.f2442c
            int[] r13 = r14.f2389f
            r13 = r13[r0]
            r12 = r12[r13]
            int r13 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r13 >= 0) goto L_0x0035
            r11 = -1165815185(0xffffffffba83126f, float:-0.001)
            int r11 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r11 <= 0) goto L_0x0041
            r9[r0] = r3
            b.g.a.b r9 = r14.f2385b
            r12.b(r9)
            goto L_0x0040
        L_0x0035:
            int r11 = (r10 > r11 ? 1 : (r10 == r11 ? 0 : -1))
            if (r11 >= 0) goto L_0x0041
            r9[r0] = r3
            b.g.a.b r9 = r14.f2385b
            r12.b(r9)
        L_0x0040:
            r10 = 0
        L_0x0041:
            r9 = 1
            int r11 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r11 == 0) goto L_0x008f
            androidx.constraintlayout.solver.SolverVariable$Type r11 = r12.f494h
            androidx.constraintlayout.solver.SolverVariable$Type r13 = androidx.constraintlayout.solver.SolverVariable.Type.UNRESTRICTED
            if (r11 != r13) goto L_0x006b
            if (r4 != 0) goto L_0x0056
            boolean r4 = r14.a((androidx.constraintlayout.solver.SolverVariable) r12, (b.g.a.C0249e) r15)
        L_0x0052:
            r6 = r4
            r5 = r10
            r4 = r12
            goto L_0x008f
        L_0x0056:
            int r11 = (r5 > r10 ? 1 : (r5 == r10 ? 0 : -1))
            if (r11 <= 0) goto L_0x005f
            boolean r4 = r14.a((androidx.constraintlayout.solver.SolverVariable) r12, (b.g.a.C0249e) r15)
            goto L_0x0052
        L_0x005f:
            if (r6 != 0) goto L_0x008f
            boolean r11 = r14.a((androidx.constraintlayout.solver.SolverVariable) r12, (b.g.a.C0249e) r15)
            if (r11 == 0) goto L_0x008f
            r5 = r10
            r4 = r12
            r6 = 1
            goto L_0x008f
        L_0x006b:
            if (r4 != 0) goto L_0x008f
            int r11 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r11 >= 0) goto L_0x008f
            if (r1 != 0) goto L_0x007b
            boolean r1 = r14.a((androidx.constraintlayout.solver.SolverVariable) r12, (b.g.a.C0249e) r15)
        L_0x0077:
            r8 = r1
            r7 = r10
            r1 = r12
            goto L_0x008f
        L_0x007b:
            int r11 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r11 <= 0) goto L_0x0084
            boolean r1 = r14.a((androidx.constraintlayout.solver.SolverVariable) r12, (b.g.a.C0249e) r15)
            goto L_0x0077
        L_0x0084:
            if (r8 != 0) goto L_0x008f
            boolean r11 = r14.a((androidx.constraintlayout.solver.SolverVariable) r12, (b.g.a.C0249e) r15)
            if (r11 == 0) goto L_0x008f
            r7 = r10
            r1 = r12
            r8 = 1
        L_0x008f:
            int[] r9 = r14.f2390g
            r0 = r9[r0]
            int r2 = r2 + 1
            goto L_0x000a
        L_0x0097:
            if (r4 == 0) goto L_0x009a
            return r4
        L_0x009a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.g.a.C0245a.a(b.g.a.e):androidx.constraintlayout.solver.SolverVariable");
    }

    public final void a(C0246b bVar, C0246b bVar2, boolean z) {
        int i2 = this.f2392i;
        while (true) {
            int i3 = 0;
            while (i2 != -1 && i3 < this.f2384a) {
                int i4 = this.f2389f[i2];
                SolverVariable solverVariable = bVar2.f2435a;
                if (i4 == solverVariable.f489c) {
                    float f2 = this.f2391h[i2];
                    a(solverVariable, z);
                    C0245a aVar = bVar2.f2438d;
                    int i5 = aVar.f2392i;
                    int i6 = 0;
                    while (i5 != -1 && i6 < aVar.f2384a) {
                        a(this.f2386c.f2442c[aVar.f2389f[i5]], aVar.f2391h[i5] * f2, z);
                        i5 = aVar.f2390g[i5];
                        i6++;
                    }
                    bVar.f2436b += bVar2.f2436b * f2;
                    if (z) {
                        bVar2.f2435a.b(bVar);
                    }
                    i2 = this.f2392i;
                } else {
                    i2 = this.f2390g[i2];
                    i3++;
                }
            }
            return;
        }
    }

    public void a(C0246b bVar, C0246b[] bVarArr) {
        int i2 = this.f2392i;
        while (true) {
            int i3 = 0;
            while (i2 != -1 && i3 < this.f2384a) {
                SolverVariable solverVariable = this.f2386c.f2442c[this.f2389f[i2]];
                if (solverVariable.f490d != -1) {
                    float f2 = this.f2391h[i2];
                    a(solverVariable, true);
                    C0246b bVar2 = bVarArr[solverVariable.f490d];
                    if (!bVar2.f2439e) {
                        C0245a aVar = bVar2.f2438d;
                        int i4 = aVar.f2392i;
                        int i5 = 0;
                        while (i4 != -1 && i5 < aVar.f2384a) {
                            a(this.f2386c.f2442c[aVar.f2389f[i4]], aVar.f2391h[i4] * f2, true);
                            i4 = aVar.f2390g[i4];
                            i5++;
                        }
                    }
                    bVar.f2436b += bVar2.f2436b * f2;
                    bVar2.f2435a.b(bVar);
                    i2 = this.f2392i;
                } else {
                    i2 = this.f2390g[i2];
                    i3++;
                }
            }
            return;
        }
    }

    public SolverVariable a(boolean[] zArr, SolverVariable solverVariable) {
        int i2 = this.f2392i;
        int i3 = 0;
        SolverVariable solverVariable2 = null;
        float f2 = 0.0f;
        while (i2 != -1 && i3 < this.f2384a) {
            if (this.f2391h[i2] < 0.0f) {
                SolverVariable solverVariable3 = this.f2386c.f2442c[this.f2389f[i2]];
                if ((zArr == null || !zArr[solverVariable3.f489c]) && solverVariable3 != solverVariable) {
                    SolverVariable.Type type = solverVariable3.f494h;
                    if (type == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) {
                        float f3 = this.f2391h[i2];
                        if (f3 < f2) {
                            solverVariable2 = solverVariable3;
                            f2 = f3;
                        }
                    }
                }
            }
            i2 = this.f2390g[i2];
            i3++;
        }
        return solverVariable2;
    }

    public final SolverVariable a(int i2) {
        int i3 = this.f2392i;
        int i4 = 0;
        while (i3 != -1 && i4 < this.f2384a) {
            if (i4 == i2) {
                return this.f2386c.f2442c[this.f2389f[i3]];
            }
            i3 = this.f2390g[i3];
            i4++;
        }
        return null;
    }
}
