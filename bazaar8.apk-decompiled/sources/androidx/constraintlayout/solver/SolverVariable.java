package androidx.constraintlayout.solver;

import b.g.a.C0246b;
import java.util.Arrays;

public class SolverVariable {

    /* renamed from: a  reason: collision with root package name */
    public static int f487a = 1;

    /* renamed from: b  reason: collision with root package name */
    public String f488b;

    /* renamed from: c  reason: collision with root package name */
    public int f489c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f490d = -1;

    /* renamed from: e  reason: collision with root package name */
    public int f491e = 0;

    /* renamed from: f  reason: collision with root package name */
    public float f492f;

    /* renamed from: g  reason: collision with root package name */
    public float[] f493g = new float[7];

    /* renamed from: h  reason: collision with root package name */
    public Type f494h;

    /* renamed from: i  reason: collision with root package name */
    public C0246b[] f495i = new C0246b[8];

    /* renamed from: j  reason: collision with root package name */
    public int f496j = 0;

    /* renamed from: k  reason: collision with root package name */
    public int f497k = 0;

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(Type type, String str) {
        this.f494h = type;
    }

    public static void a() {
        f487a++;
    }

    public final void b(C0246b bVar) {
        int i2 = this.f496j;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f495i[i3] == bVar) {
                for (int i4 = 0; i4 < (i2 - i3) - 1; i4++) {
                    C0246b[] bVarArr = this.f495i;
                    int i5 = i3 + i4;
                    bVarArr[i5] = bVarArr[i5 + 1];
                }
                this.f496j--;
                return;
            }
        }
    }

    public final void c(C0246b bVar) {
        int i2 = this.f496j;
        for (int i3 = 0; i3 < i2; i3++) {
            C0246b[] bVarArr = this.f495i;
            bVarArr[i3].f2438d.a(bVarArr[i3], bVar, false);
        }
        this.f496j = 0;
    }

    public String toString() {
        return "" + this.f488b;
    }

    public final void a(C0246b bVar) {
        int i2 = 0;
        while (true) {
            int i3 = this.f496j;
            if (i2 >= i3) {
                C0246b[] bVarArr = this.f495i;
                if (i3 >= bVarArr.length) {
                    this.f495i = (C0246b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                C0246b[] bVarArr2 = this.f495i;
                int i4 = this.f496j;
                bVarArr2[i4] = bVar;
                this.f496j = i4 + 1;
                return;
            } else if (this.f495i[i2] != bVar) {
                i2++;
            } else {
                return;
            }
        }
    }

    public void b() {
        this.f488b = null;
        this.f494h = Type.UNKNOWN;
        this.f491e = 0;
        this.f489c = -1;
        this.f490d = -1;
        this.f492f = 0.0f;
        this.f496j = 0;
        this.f497k = 0;
    }

    public void a(Type type, String str) {
        this.f494h = type;
    }
}
