package androidx.constraintlayout.widget;

import a.a.a.b;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import b.g.a.C0250f;
import b.g.a.a.f;
import b.g.a.a.h;
import b.g.b.c;
import b.g.b.e;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    public SparseArray<View> f528a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    public ArrayList<b.g.b.a> f529b = new ArrayList<>(4);

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<ConstraintWidget> f530c = new ArrayList<>(100);

    /* renamed from: d  reason: collision with root package name */
    public f f531d = new f();

    /* renamed from: e  reason: collision with root package name */
    public int f532e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f533f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f534g = Integer.MAX_VALUE;

    /* renamed from: h  reason: collision with root package name */
    public int f535h = Integer.MAX_VALUE;

    /* renamed from: i  reason: collision with root package name */
    public boolean f536i = true;

    /* renamed from: j  reason: collision with root package name */
    public int f537j = 3;

    /* renamed from: k  reason: collision with root package name */
    public c f538k = null;

    /* renamed from: l  reason: collision with root package name */
    public int f539l = -1;
    public HashMap<String, Integer> m = new HashMap<>();
    public int n = -1;
    public int o = -1;
    public int p = -1;
    public int q = -1;
    public int r = 0;
    public int s = 0;
    public C0250f t;

    public static class a extends ViewGroup.MarginLayoutParams {
        public float A = 0.5f;
        public String B = null;
        public float C = 0.0f;
        public int D = 1;
        public float E = -1.0f;
        public float F = -1.0f;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public int N = 0;
        public float O = 1.0f;
        public float P = 1.0f;
        public int Q = -1;
        public int R = -1;
        public int S = -1;
        public boolean T = false;
        public boolean U = false;
        public boolean V = true;
        public boolean W = true;
        public boolean X = false;
        public boolean Y = false;
        public boolean Z = false;

        /* renamed from: a  reason: collision with root package name */
        public int f540a = -1;
        public boolean aa = false;

        /* renamed from: b  reason: collision with root package name */
        public int f541b = -1;
        public int ba = -1;

        /* renamed from: c  reason: collision with root package name */
        public float f542c = -1.0f;
        public int ca = -1;

        /* renamed from: d  reason: collision with root package name */
        public int f543d = -1;
        public int da = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f544e = -1;
        public int ea = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f545f = -1;
        public int fa = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f546g = -1;
        public int ga = -1;

        /* renamed from: h  reason: collision with root package name */
        public int f547h = -1;
        public float ha = 0.5f;

        /* renamed from: i  reason: collision with root package name */
        public int f548i = -1;
        public int ia;

        /* renamed from: j  reason: collision with root package name */
        public int f549j = -1;
        public int ja;

        /* renamed from: k  reason: collision with root package name */
        public int f550k = -1;
        public float ka;

        /* renamed from: l  reason: collision with root package name */
        public int f551l = -1;
        public ConstraintWidget la = new ConstraintWidget();
        public int m = -1;
        public boolean ma = false;
        public int n = 0;
        public float o = 0.0f;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = -1;
        public int v = -1;
        public int w = -1;
        public int x = -1;
        public int y = -1;
        public float z = 0.5f;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a  reason: collision with other inner class name */
        private static class C0012a {

            /* renamed from: a  reason: collision with root package name */
            public static final SparseIntArray f552a = new SparseIntArray();

            static {
                f552a.append(b.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f552a.append(b.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f552a.append(b.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f552a.append(b.ConstraintLayout_Layout_android_orientation, 1);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f552a.append(b.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f552a.append(b.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f552a.append(b.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f552a.append(b.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f552a.append(b.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f552a.append(b.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f552a.append(b.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f552a.append(b.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f552a.append(b.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i2;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                switch (C0012a.f552a.get(index)) {
                    case 1:
                        this.S = obtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 2:
                        this.m = obtainStyledAttributes.getResourceId(index, this.m);
                        if (this.m != -1) {
                            break;
                        } else {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 3:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        this.o = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        float f2 = this.o;
                        if (f2 >= 0.0f) {
                            break;
                        } else {
                            this.o = (360.0f - f2) % 360.0f;
                            break;
                        }
                    case 5:
                        this.f540a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f540a);
                        break;
                    case 6:
                        this.f541b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f541b);
                        break;
                    case 7:
                        this.f542c = obtainStyledAttributes.getFloat(index, this.f542c);
                        break;
                    case 8:
                        this.f543d = obtainStyledAttributes.getResourceId(index, this.f543d);
                        if (this.f543d != -1) {
                            break;
                        } else {
                            this.f543d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 9:
                        this.f544e = obtainStyledAttributes.getResourceId(index, this.f544e);
                        if (this.f544e != -1) {
                            break;
                        } else {
                            this.f544e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 10:
                        this.f545f = obtainStyledAttributes.getResourceId(index, this.f545f);
                        if (this.f545f != -1) {
                            break;
                        } else {
                            this.f545f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 11:
                        this.f546g = obtainStyledAttributes.getResourceId(index, this.f546g);
                        if (this.f546g != -1) {
                            break;
                        } else {
                            this.f546g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 12:
                        this.f547h = obtainStyledAttributes.getResourceId(index, this.f547h);
                        if (this.f547h != -1) {
                            break;
                        } else {
                            this.f547h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 13:
                        this.f548i = obtainStyledAttributes.getResourceId(index, this.f548i);
                        if (this.f548i != -1) {
                            break;
                        } else {
                            this.f548i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 14:
                        this.f549j = obtainStyledAttributes.getResourceId(index, this.f549j);
                        if (this.f549j != -1) {
                            break;
                        } else {
                            this.f549j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 15:
                        this.f550k = obtainStyledAttributes.getResourceId(index, this.f550k);
                        if (this.f550k != -1) {
                            break;
                        } else {
                            this.f550k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 16:
                        this.f551l = obtainStyledAttributes.getResourceId(index, this.f551l);
                        if (this.f551l != -1) {
                            break;
                        } else {
                            this.f551l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 17:
                        this.p = obtainStyledAttributes.getResourceId(index, this.p);
                        if (this.p != -1) {
                            break;
                        } else {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 18:
                        this.q = obtainStyledAttributes.getResourceId(index, this.q);
                        if (this.q != -1) {
                            break;
                        } else {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 19:
                        this.r = obtainStyledAttributes.getResourceId(index, this.r);
                        if (this.r != -1) {
                            break;
                        } else {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 20:
                        this.s = obtainStyledAttributes.getResourceId(index, this.s);
                        if (this.s != -1) {
                            break;
                        } else {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 21:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 28:
                        this.U = obtainStyledAttributes.getBoolean(index, this.U);
                        break;
                    case 29:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        this.I = obtainStyledAttributes.getInt(index, 0);
                        if (this.I != 1) {
                            break;
                        } else {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        }
                    case 32:
                        this.J = obtainStyledAttributes.getInt(index, 0);
                        if (this.J != 1) {
                            break;
                        } else {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        }
                    case 33:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.K) != -2) {
                                break;
                            } else {
                                this.K = -2;
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.M) != -2) {
                                break;
                            } else {
                                this.M = -2;
                                break;
                            }
                        }
                    case 35:
                        this.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.O));
                        break;
                    case 36:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.L) != -2) {
                                break;
                            } else {
                                this.L = -2;
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.N) != -2) {
                                break;
                            } else {
                                this.N = -2;
                                break;
                            }
                        }
                    case 38:
                        this.P = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.P));
                        break;
                    case 44:
                        this.B = obtainStyledAttributes.getString(index);
                        this.C = Float.NaN;
                        this.D = -1;
                        String str = this.B;
                        if (str == null) {
                            break;
                        } else {
                            int length = str.length();
                            int indexOf = this.B.indexOf(44);
                            if (indexOf <= 0 || indexOf >= length - 1) {
                                i2 = 0;
                            } else {
                                String substring = this.B.substring(0, indexOf);
                                if (substring.equalsIgnoreCase("W")) {
                                    this.D = 0;
                                } else if (substring.equalsIgnoreCase("H")) {
                                    this.D = 1;
                                }
                                i2 = indexOf + 1;
                            }
                            int indexOf2 = this.B.indexOf(58);
                            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                String substring2 = this.B.substring(i2, indexOf2);
                                String substring3 = this.B.substring(indexOf2 + 1);
                                if (substring2.length() > 0 && substring3.length() > 0) {
                                    try {
                                        float parseFloat = Float.parseFloat(substring2);
                                        float parseFloat2 = Float.parseFloat(substring3);
                                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                            if (this.D != 1) {
                                                this.C = Math.abs(parseFloat / parseFloat2);
                                                break;
                                            } else {
                                                this.C = Math.abs(parseFloat2 / parseFloat);
                                                break;
                                            }
                                        }
                                    } catch (NumberFormatException unused5) {
                                        break;
                                    }
                                }
                            } else {
                                String substring4 = this.B.substring(i2);
                                if (substring4.length() <= 0) {
                                    break;
                                } else {
                                    this.C = Float.parseFloat(substring4);
                                    break;
                                }
                            }
                        }
                        break;
                    case 45:
                        this.E = obtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 46:
                        this.F = obtainStyledAttributes.getFloat(index, this.F);
                        break;
                    case 47:
                        this.G = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 48:
                        this.H = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 49:
                        this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                        break;
                    case 50:
                        this.R = obtainStyledAttributes.getDimensionPixelOffset(index, this.R);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            if (this.width == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            if (this.height == -2 && this.U) {
                this.W = false;
                this.J = 1;
            }
            if (this.width == 0 || this.width == -1) {
                this.V = false;
                if (this.width == 0 && this.I == 1) {
                    this.width = -2;
                    this.T = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.W = false;
                if (this.height == 0 && this.J == 1) {
                    this.height = -2;
                    this.U = true;
                }
            }
            if (this.f542c != -1.0f || this.f540a != -1 || this.f541b != -1) {
                this.Y = true;
                this.V = true;
                this.W = true;
                if (!(this.la instanceof h)) {
                    this.la = new h();
                }
                ((h) this.la).r(this.S);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x004c  */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0053  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x005a  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0060  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x0066  */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x007c  */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x0084  */
        @android.annotation.TargetApi(17)
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void resolveLayoutDirection(int r7) {
            /*
                r6 = this;
                int r0 = r6.leftMargin
                int r1 = r6.rightMargin
                super.resolveLayoutDirection(r7)
                r7 = -1
                r6.da = r7
                r6.ea = r7
                r6.ba = r7
                r6.ca = r7
                r6.fa = r7
                r6.ga = r7
                int r2 = r6.t
                r6.fa = r2
                int r2 = r6.v
                r6.ga = r2
                float r2 = r6.z
                r6.ha = r2
                int r2 = r6.f540a
                r6.ia = r2
                int r2 = r6.f541b
                r6.ja = r2
                float r2 = r6.f542c
                r6.ka = r2
                int r2 = r6.getLayoutDirection()
                r3 = 0
                r4 = 1
                if (r4 != r2) goto L_0x0036
                r2 = 1
                goto L_0x0037
            L_0x0036:
                r2 = 0
            L_0x0037:
                if (r2 == 0) goto L_0x009a
                int r2 = r6.p
                if (r2 == r7) goto L_0x0041
                r6.da = r2
            L_0x003f:
                r3 = 1
                goto L_0x0048
            L_0x0041:
                int r2 = r6.q
                if (r2 == r7) goto L_0x0048
                r6.ea = r2
                goto L_0x003f
            L_0x0048:
                int r2 = r6.r
                if (r2 == r7) goto L_0x004f
                r6.ca = r2
                r3 = 1
            L_0x004f:
                int r2 = r6.s
                if (r2 == r7) goto L_0x0056
                r6.ba = r2
                r3 = 1
            L_0x0056:
                int r2 = r6.x
                if (r2 == r7) goto L_0x005c
                r6.ga = r2
            L_0x005c:
                int r2 = r6.y
                if (r2 == r7) goto L_0x0062
                r6.fa = r2
            L_0x0062:
                r2 = 1065353216(0x3f800000, float:1.0)
                if (r3 == 0) goto L_0x006c
                float r3 = r6.z
                float r3 = r2 - r3
                r6.ha = r3
            L_0x006c:
                boolean r3 = r6.Y
                if (r3 == 0) goto L_0x00be
                int r3 = r6.S
                if (r3 != r4) goto L_0x00be
                float r3 = r6.f542c
                r4 = -1082130432(0xffffffffbf800000, float:-1.0)
                int r5 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r5 == 0) goto L_0x0084
                float r2 = r2 - r3
                r6.ka = r2
                r6.ia = r7
                r6.ja = r7
                goto L_0x00be
            L_0x0084:
                int r2 = r6.f540a
                if (r2 == r7) goto L_0x008f
                r6.ja = r2
                r6.ia = r7
                r6.ka = r4
                goto L_0x00be
            L_0x008f:
                int r2 = r6.f541b
                if (r2 == r7) goto L_0x00be
                r6.ia = r2
                r6.ja = r7
                r6.ka = r4
                goto L_0x00be
            L_0x009a:
                int r2 = r6.p
                if (r2 == r7) goto L_0x00a0
                r6.ca = r2
            L_0x00a0:
                int r2 = r6.q
                if (r2 == r7) goto L_0x00a6
                r6.ba = r2
            L_0x00a6:
                int r2 = r6.r
                if (r2 == r7) goto L_0x00ac
                r6.da = r2
            L_0x00ac:
                int r2 = r6.s
                if (r2 == r7) goto L_0x00b2
                r6.ea = r2
            L_0x00b2:
                int r2 = r6.x
                if (r2 == r7) goto L_0x00b8
                r6.fa = r2
            L_0x00b8:
                int r2 = r6.y
                if (r2 == r7) goto L_0x00be
                r6.ga = r2
            L_0x00be:
                int r2 = r6.r
                if (r2 != r7) goto L_0x0108
                int r2 = r6.s
                if (r2 != r7) goto L_0x0108
                int r2 = r6.q
                if (r2 != r7) goto L_0x0108
                int r2 = r6.p
                if (r2 != r7) goto L_0x0108
                int r2 = r6.f545f
                if (r2 == r7) goto L_0x00dd
                r6.da = r2
                int r2 = r6.rightMargin
                if (r2 > 0) goto L_0x00eb
                if (r1 <= 0) goto L_0x00eb
                r6.rightMargin = r1
                goto L_0x00eb
            L_0x00dd:
                int r2 = r6.f546g
                if (r2 == r7) goto L_0x00eb
                r6.ea = r2
                int r2 = r6.rightMargin
                if (r2 > 0) goto L_0x00eb
                if (r1 <= 0) goto L_0x00eb
                r6.rightMargin = r1
            L_0x00eb:
                int r1 = r6.f543d
                if (r1 == r7) goto L_0x00fa
                r6.ba = r1
                int r7 = r6.leftMargin
                if (r7 > 0) goto L_0x0108
                if (r0 <= 0) goto L_0x0108
                r6.leftMargin = r0
                goto L_0x0108
            L_0x00fa:
                int r1 = r6.f544e
                if (r1 == r7) goto L_0x0108
                r6.ca = r1
                int r7 = r6.leftMargin
                if (r7 > 0) goto L_0x0108
                if (r0 <= 0) goto L_0x0108
                r6.leftMargin = r0
            L_0x0108:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.resolveLayoutDirection(int):void");
        }

        public a(int i2, int i3) {
            super(i2, i3);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    public void a(int i2, Object obj, Object obj2) {
        if (i2 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.m == null) {
                this.m = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.m.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    public final void b() {
        int childCount = getChildCount();
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            } else if (getChildAt(i2).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i2++;
            }
        }
        if (z) {
            this.f530c.clear();
            a();
        }
    }

    public final void c() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof e) {
                ((e) childAt).a(this);
            }
        }
        int size = this.f529b.size();
        if (size > 0) {
            for (int i3 = 0; i3 < size; i3++) {
                this.f529b.get(i3).b(this);
            }
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = (float) getWidth();
            float height = (float) getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8) {
                    Object tag = childAt.getTag();
                    if (tag != null && (tag instanceof String)) {
                        String[] split = ((String) tag).split(",");
                        if (split.length == 4) {
                            int parseInt = Integer.parseInt(split[0]);
                            int parseInt2 = Integer.parseInt(split[1]);
                            int parseInt3 = Integer.parseInt(split[2]);
                            int i3 = (int) ((((float) parseInt) / 1080.0f) * width);
                            int i4 = (int) ((((float) parseInt2) / 1920.0f) * height);
                            Paint paint = new Paint();
                            paint.setColor(-65536);
                            float f2 = (float) i3;
                            float f3 = (float) (i3 + ((int) ((((float) parseInt3) / 1080.0f) * width)));
                            Canvas canvas2 = canvas;
                            float f4 = (float) i4;
                            float f5 = f2;
                            float f6 = f2;
                            float f7 = f4;
                            Paint paint2 = paint;
                            float f8 = f3;
                            Paint paint3 = paint2;
                            canvas2.drawLine(f5, f7, f8, f4, paint3);
                            float parseInt4 = (float) (i4 + ((int) ((((float) Integer.parseInt(split[3])) / 1920.0f) * height)));
                            float f9 = f3;
                            float f10 = parseInt4;
                            canvas2.drawLine(f9, f7, f8, f10, paint3);
                            float f11 = parseInt4;
                            float f12 = f6;
                            canvas2.drawLine(f9, f11, f12, f10, paint3);
                            float f13 = f6;
                            canvas2.drawLine(f13, f11, f12, f4, paint3);
                            Paint paint4 = paint2;
                            paint4.setColor(-16711936);
                            Paint paint5 = paint4;
                            float f14 = f3;
                            Paint paint6 = paint5;
                            canvas2.drawLine(f13, f4, f14, parseInt4, paint6);
                            canvas2.drawLine(f13, parseInt4, f14, f4, paint6);
                        }
                    }
                }
            }
        }
    }

    public int getMaxHeight() {
        return this.f535h;
    }

    public int getMaxWidth() {
        return this.f534g;
    }

    public int getMinHeight() {
        return this.f533f;
    }

    public int getMinWidth() {
        return this.f532e;
    }

    public int getOptimizationLevel() {
        return this.f531d.L();
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            a aVar = (a) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = aVar.la;
            if ((childAt.getVisibility() != 8 || aVar.Y || aVar.Z || isInEditMode) && !aVar.aa) {
                int h2 = constraintWidget.h();
                int i7 = constraintWidget.i();
                int u = constraintWidget.u() + h2;
                int j2 = constraintWidget.j() + i7;
                childAt.layout(h2, i7, u, j2);
                if (childAt instanceof e) {
                    View content = ((e) childAt).getContent();
                    if (content != null) {
                        content.setVisibility(0);
                        content.layout(h2, i7, u, j2);
                    }
                }
            }
        }
        int size = this.f529b.size();
        if (size > 0) {
            for (int i8 = 0; i8 < size; i8++) {
                this.f529b.get(i8).a(this);
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        boolean z;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = i2;
        int i12 = i3;
        System.currentTimeMillis();
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (this.n != -1) {
            int i13 = this.o;
        }
        if (mode == 1073741824 && mode2 == 1073741824 && size == this.n) {
            int i14 = this.o;
        }
        boolean z3 = mode == this.r && mode2 == this.s;
        if (z3 && size == this.p) {
            int i15 = this.q;
        }
        if (z3 && mode == Integer.MIN_VALUE && mode2 == 1073741824 && size >= this.n) {
            int i16 = this.o;
        }
        if (z3 && mode == 1073741824 && mode2 == Integer.MIN_VALUE && size == this.n) {
            int i17 = this.o;
        }
        this.r = mode;
        this.s = mode2;
        this.p = size;
        this.q = size2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.f531d.n(paddingLeft);
        this.f531d.o(paddingTop);
        this.f531d.f(this.f534g);
        this.f531d.e(this.f535h);
        if (Build.VERSION.SDK_INT >= 17) {
            this.f531d.c(getLayoutDirection() == 1);
        }
        c(i2, i3);
        int u = this.f531d.u();
        int j2 = this.f531d.j();
        if (this.f536i) {
            this.f536i = false;
            b();
        }
        boolean z4 = (this.f537j & 8) == 8;
        if (z4) {
            this.f531d.S();
            this.f531d.e(u, j2);
            b(i2, i3);
        } else {
            a(i2, i3);
        }
        c();
        if (getChildCount() > 0) {
            a("First pass");
        }
        int size3 = this.f530c.size();
        int paddingBottom = paddingTop + getPaddingBottom();
        int paddingRight = paddingLeft + getPaddingRight();
        if (size3 > 0) {
            boolean z5 = this.f531d.l() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z6 = this.f531d.s() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            int max = Math.max(this.f531d.u(), this.f532e);
            int max2 = Math.max(this.f531d.j(), this.f533f);
            int i18 = max;
            int i19 = 0;
            boolean z7 = false;
            int i20 = 0;
            while (i19 < size3) {
                ConstraintWidget constraintWidget = this.f530c.get(i19);
                View view = (View) constraintWidget.f();
                if (view == null) {
                    i5 = u;
                    i7 = j2;
                    i6 = size3;
                } else {
                    i6 = size3;
                    a aVar = (a) view.getLayoutParams();
                    i7 = j2;
                    if (aVar.Z || aVar.Y) {
                        i5 = u;
                    } else {
                        i5 = u;
                        if (view.getVisibility() != 8 && (!z4 || !constraintWidget.o().c() || !constraintWidget.n().c())) {
                            if (aVar.width != -2 || !aVar.V) {
                                i8 = View.MeasureSpec.makeMeasureSpec(constraintWidget.u(), 1073741824);
                            } else {
                                i8 = ViewGroup.getChildMeasureSpec(i11, paddingRight, aVar.width);
                            }
                            if (aVar.height != -2 || !aVar.W) {
                                i9 = View.MeasureSpec.makeMeasureSpec(constraintWidget.j(), 1073741824);
                            } else {
                                i9 = ViewGroup.getChildMeasureSpec(i12, paddingBottom, aVar.height);
                            }
                            view.measure(i8, i9);
                            C0250f fVar = this.t;
                            if (fVar != null) {
                                fVar.f2456b++;
                            }
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            if (measuredWidth != constraintWidget.u()) {
                                constraintWidget.k(measuredWidth);
                                if (z4) {
                                    constraintWidget.o().a(measuredWidth);
                                }
                                if (z5 && constraintWidget.p() > i18) {
                                    i18 = Math.max(i18, constraintWidget.p() + constraintWidget.a(ConstraintAnchor.Type.RIGHT).b());
                                }
                                z7 = true;
                            }
                            if (measuredHeight != constraintWidget.j()) {
                                constraintWidget.c(measuredHeight);
                                if (z4) {
                                    constraintWidget.n().a(measuredHeight);
                                }
                                if (z6) {
                                    i10 = max2;
                                    if (constraintWidget.e() > i10) {
                                        max2 = Math.max(i10, constraintWidget.e() + constraintWidget.a(ConstraintAnchor.Type.BOTTOM).b());
                                        z7 = true;
                                    }
                                } else {
                                    i10 = max2;
                                }
                                max2 = i10;
                                z7 = true;
                            } else {
                                int i21 = max2;
                            }
                            if (aVar.X) {
                                int baseline = view.getBaseline();
                                if (!(baseline == -1 || baseline == constraintWidget.d())) {
                                    constraintWidget.b(baseline);
                                    z7 = true;
                                }
                            }
                            if (Build.VERSION.SDK_INT >= 11) {
                                i20 = ViewGroup.combineMeasuredStates(i20, view.getMeasuredState());
                            } else {
                                int i22 = i20;
                            }
                            i19++;
                            i11 = i2;
                            j2 = i7;
                            size3 = i6;
                            u = i5;
                        }
                    }
                }
                max2 = max2;
                i20 = i20;
                i19++;
                i11 = i2;
                j2 = i7;
                size3 = i6;
                u = i5;
            }
            int i23 = u;
            int i24 = j2;
            int i25 = size3;
            int i26 = max2;
            i4 = i20;
            if (z7) {
                this.f531d.k(i23);
                this.f531d.c(i24);
                if (z4) {
                    this.f531d.U();
                }
                a("2nd pass");
                if (this.f531d.u() < i18) {
                    this.f531d.k(i18);
                    z = true;
                } else {
                    z = false;
                }
                if (this.f531d.j() < i26) {
                    this.f531d.c(i26);
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    a("3rd pass");
                }
            }
            int i27 = i25;
            for (int i28 = 0; i28 < i27; i28++) {
                ConstraintWidget constraintWidget2 = this.f530c.get(i28);
                View view2 = (View) constraintWidget2.f();
                if (view2 != null && (view2.getMeasuredWidth() != constraintWidget2.u() || view2.getMeasuredHeight() != constraintWidget2.j())) {
                    if (constraintWidget2.t() != 8) {
                        view2.measure(View.MeasureSpec.makeMeasureSpec(constraintWidget2.u(), 1073741824), View.MeasureSpec.makeMeasureSpec(constraintWidget2.j(), 1073741824));
                        C0250f fVar2 = this.t;
                        if (fVar2 != null) {
                            fVar2.f2456b++;
                        }
                    }
                }
            }
        } else {
            i4 = 0;
        }
        int u2 = this.f531d.u() + paddingRight;
        int j3 = this.f531d.j() + paddingBottom;
        if (Build.VERSION.SDK_INT >= 11) {
            int min = Math.min(this.f534g, ViewGroup.resolveSizeAndState(u2, i2, i4) & 16777215);
            int min2 = Math.min(this.f535h, ViewGroup.resolveSizeAndState(j3, i12, i4 << 16) & 16777215);
            if (this.f531d.P()) {
                min |= 16777216;
            }
            if (this.f531d.N()) {
                min2 |= 16777216;
            }
            setMeasuredDimension(min, min2);
            this.n = min;
            this.o = min2;
            return;
        }
        setMeasuredDimension(u2, j3);
        this.n = u2;
        this.o = j3;
    }

    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget a2 = a(view);
        if ((view instanceof Guideline) && !(a2 instanceof h)) {
            a aVar = (a) view.getLayoutParams();
            aVar.la = new h();
            aVar.Y = true;
            ((h) aVar.la).r(aVar.S);
        }
        if (view instanceof b.g.b.a) {
            b.g.b.a aVar2 = (b.g.b.a) view;
            aVar2.a();
            ((a) view.getLayoutParams()).Z = true;
            if (!this.f529b.contains(aVar2)) {
                this.f529b.add(aVar2);
            }
        }
        this.f528a.put(view.getId(), view);
        this.f536i = true;
    }

    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f528a.remove(view.getId());
        ConstraintWidget a2 = a(view);
        this.f531d.c(a2);
        this.f529b.remove(view);
        this.f530c.remove(a2);
        this.f536i = true;
    }

    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    public void requestLayout() {
        super.requestLayout();
        this.f536i = true;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.r = 0;
        this.s = 0;
    }

    public void setConstraintSet(c cVar) {
        this.f538k = cVar;
    }

    public void setId(int i2) {
        this.f528a.remove(getId());
        super.setId(i2);
        this.f528a.put(getId(), this);
    }

    public void setMaxHeight(int i2) {
        if (i2 != this.f535h) {
            this.f535h = i2;
            requestLayout();
        }
    }

    public void setMaxWidth(int i2) {
        if (i2 != this.f534g) {
            this.f534g = i2;
            requestLayout();
        }
    }

    public void setMinHeight(int i2) {
        if (i2 != this.f533f) {
            this.f533f = i2;
            requestLayout();
        }
    }

    public void setMinWidth(int i2) {
        if (i2 != this.f532e) {
            this.f532e = i2;
            requestLayout();
        }
    }

    public void setOptimizationLevel(int i2) {
        this.f531d.q(i2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x0206  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x0240  */
    /* JADX WARNING: Removed duplicated region for block: B:129:0x0265  */
    /* JADX WARNING: Removed duplicated region for block: B:130:0x026e  */
    /* JADX WARNING: Removed duplicated region for block: B:133:0x0273  */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x0275  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x027b  */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x027d  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x0291  */
    /* JADX WARNING: Removed duplicated region for block: B:143:0x0296  */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x029b  */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x02a3  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x02ac  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x02b4  */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x02c1  */
    /* JADX WARNING: Removed duplicated region for block: B:155:0x02cc  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r24, int r25) {
        /*
            r23 = this;
            r0 = r23
            r1 = r24
            r2 = r25
            int r3 = r23.getPaddingTop()
            int r4 = r23.getPaddingBottom()
            int r3 = r3 + r4
            int r4 = r23.getPaddingLeft()
            int r5 = r23.getPaddingRight()
            int r4 = r4 + r5
            int r5 = r23.getChildCount()
            r7 = 0
        L_0x001d:
            r8 = 1
            r10 = 8
            r12 = -2
            if (r7 >= r5) goto L_0x00de
            android.view.View r14 = r0.getChildAt(r7)
            int r15 = r14.getVisibility()
            if (r15 != r10) goto L_0x0030
            goto L_0x00d6
        L_0x0030:
            android.view.ViewGroup$LayoutParams r10 = r14.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r10 = (androidx.constraintlayout.widget.ConstraintLayout.a) r10
            androidx.constraintlayout.solver.widgets.ConstraintWidget r15 = r10.la
            boolean r6 = r10.Y
            if (r6 != 0) goto L_0x00d6
            boolean r6 = r10.Z
            if (r6 == 0) goto L_0x0042
            goto L_0x00d6
        L_0x0042:
            int r6 = r14.getVisibility()
            r15.j(r6)
            int r6 = r10.width
            int r13 = r10.height
            if (r6 == 0) goto L_0x00c6
            if (r13 != 0) goto L_0x0053
            goto L_0x00c6
        L_0x0053:
            if (r6 != r12) goto L_0x0058
            r16 = 1
            goto L_0x005a
        L_0x0058:
            r16 = 0
        L_0x005a:
            int r11 = android.view.ViewGroup.getChildMeasureSpec(r1, r4, r6)
            if (r13 != r12) goto L_0x0063
            r17 = 1
            goto L_0x0065
        L_0x0063:
            r17 = 0
        L_0x0065:
            int r12 = android.view.ViewGroup.getChildMeasureSpec(r2, r3, r13)
            r14.measure(r11, r12)
            b.g.a.f r11 = r0.t
            if (r11 == 0) goto L_0x0077
            r12 = r3
            long r2 = r11.f2455a
            long r2 = r2 + r8
            r11.f2455a = r2
            goto L_0x0078
        L_0x0077:
            r12 = r3
        L_0x0078:
            r2 = -2
            if (r6 != r2) goto L_0x007d
            r3 = 1
            goto L_0x007e
        L_0x007d:
            r3 = 0
        L_0x007e:
            r15.b((boolean) r3)
            if (r13 != r2) goto L_0x0085
            r2 = 1
            goto L_0x0086
        L_0x0085:
            r2 = 0
        L_0x0086:
            r15.a((boolean) r2)
            int r2 = r14.getMeasuredWidth()
            int r3 = r14.getMeasuredHeight()
            r15.k(r2)
            r15.c((int) r3)
            if (r16 == 0) goto L_0x009c
            r15.m(r2)
        L_0x009c:
            if (r17 == 0) goto L_0x00a1
            r15.l(r3)
        L_0x00a1:
            boolean r6 = r10.X
            if (r6 == 0) goto L_0x00af
            int r6 = r14.getBaseline()
            r8 = -1
            if (r6 == r8) goto L_0x00af
            r15.b((int) r6)
        L_0x00af:
            boolean r6 = r10.V
            if (r6 == 0) goto L_0x00d7
            boolean r6 = r10.W
            if (r6 == 0) goto L_0x00d7
            b.g.a.a.m r6 = r15.o()
            r6.a(r2)
            b.g.a.a.m r2 = r15.n()
            r2.a(r3)
            goto L_0x00d7
        L_0x00c6:
            r12 = r3
            b.g.a.a.m r2 = r15.o()
            r2.b()
            b.g.a.a.m r2 = r15.n()
            r2.b()
            goto L_0x00d7
        L_0x00d6:
            r12 = r3
        L_0x00d7:
            int r7 = r7 + 1
            r2 = r25
            r3 = r12
            goto L_0x001d
        L_0x00de:
            r12 = r3
            b.g.a.a.f r2 = r0.f531d
            r2.U()
            r2 = 0
        L_0x00e5:
            if (r2 >= r5) goto L_0x02e2
            android.view.View r3 = r0.getChildAt(r2)
            int r6 = r3.getVisibility()
            if (r6 != r10) goto L_0x00f3
            goto L_0x02ce
        L_0x00f3:
            android.view.ViewGroup$LayoutParams r6 = r3.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r6 = (androidx.constraintlayout.widget.ConstraintLayout.a) r6
            androidx.constraintlayout.solver.widgets.ConstraintWidget r7 = r6.la
            boolean r11 = r6.Y
            if (r11 != 0) goto L_0x02ce
            boolean r11 = r6.Z
            if (r11 == 0) goto L_0x0105
            goto L_0x02ce
        L_0x0105:
            int r11 = r3.getVisibility()
            r7.j(r11)
            int r11 = r6.width
            int r13 = r6.height
            if (r11 == 0) goto L_0x0116
            if (r13 == 0) goto L_0x0116
            goto L_0x02ce
        L_0x0116:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r14 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r14 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r14)
            b.g.a.a.l r14 = r14.d()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r15 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r15 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r15)
            b.g.a.a.l r15 = r15.d()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r10 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r10)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r10 = r10.g()
            if (r10 == 0) goto L_0x0144
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r10 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r10)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r10 = r10.g()
            if (r10 == 0) goto L_0x0144
            r10 = 1
            goto L_0x0145
        L_0x0144:
            r10 = 0
        L_0x0145:
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r8 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r8 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r8)
            b.g.a.a.l r8 = r8.d()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r9 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r9 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r9)
            b.g.a.a.l r9 = r9.d()
            r17 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r5 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r5)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.g()
            if (r5 == 0) goto L_0x0175
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r5 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r7.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r5)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r5 = r5.g()
            if (r5 == 0) goto L_0x0175
            r5 = 1
            goto L_0x0176
        L_0x0175:
            r5 = 0
        L_0x0176:
            if (r11 != 0) goto L_0x0188
            if (r13 != 0) goto L_0x0188
            if (r10 == 0) goto L_0x0188
            if (r5 == 0) goto L_0x0188
            r5 = r25
            r20 = r2
            r3 = -1
            r10 = -2
            r18 = 1
            goto L_0x02d8
        L_0x0188:
            r20 = r2
            b.g.a.a.f r2 = r0.f531d
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r2 = r2.l()
            r21 = r6
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r2 == r6) goto L_0x0198
            r6 = 1
            goto L_0x0199
        L_0x0198:
            r6 = 0
        L_0x0199:
            b.g.a.a.f r2 = r0.f531d
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r2 = r2.s()
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r0 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT
            if (r2 == r0) goto L_0x01a5
            r0 = 1
            goto L_0x01a6
        L_0x01a5:
            r0 = 0
        L_0x01a6:
            if (r6 != 0) goto L_0x01af
            b.g.a.a.m r2 = r7.o()
            r2.b()
        L_0x01af:
            if (r0 != 0) goto L_0x01b8
            b.g.a.a.m r2 = r7.n()
            r2.b()
        L_0x01b8:
            if (r11 != 0) goto L_0x01f0
            if (r6 == 0) goto L_0x01e7
            boolean r2 = r7.B()
            if (r2 == 0) goto L_0x01e7
            if (r10 == 0) goto L_0x01e7
            boolean r2 = r14.c()
            if (r2 == 0) goto L_0x01e7
            boolean r2 = r15.c()
            if (r2 == 0) goto L_0x01e7
            float r2 = r15.f()
            float r10 = r14.f()
            float r2 = r2 - r10
            int r11 = (int) r2
            b.g.a.a.m r2 = r7.o()
            r2.a(r11)
            int r2 = android.view.ViewGroup.getChildMeasureSpec(r1, r4, r11)
            r14 = r2
            goto L_0x01f8
        L_0x01e7:
            r2 = -2
            int r6 = android.view.ViewGroup.getChildMeasureSpec(r1, r4, r2)
            r14 = r6
            r2 = 1
            r6 = 0
            goto L_0x0204
        L_0x01f0:
            r2 = -2
            r10 = -1
            if (r11 != r10) goto L_0x01fa
            int r14 = android.view.ViewGroup.getChildMeasureSpec(r1, r4, r10)
        L_0x01f8:
            r2 = 0
            goto L_0x0204
        L_0x01fa:
            if (r11 != r2) goto L_0x01fe
            r2 = 1
            goto L_0x01ff
        L_0x01fe:
            r2 = 0
        L_0x01ff:
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r1, r4, r11)
            r14 = r10
        L_0x0204:
            if (r13 != 0) goto L_0x0240
            if (r0 == 0) goto L_0x0236
            boolean r10 = r7.A()
            if (r10 == 0) goto L_0x0236
            if (r5 == 0) goto L_0x0236
            boolean r5 = r8.c()
            if (r5 == 0) goto L_0x0236
            boolean r5 = r9.c()
            if (r5 == 0) goto L_0x0236
            float r5 = r9.f()
            float r8 = r8.f()
            float r5 = r5 - r8
            int r13 = (int) r5
            b.g.a.a.m r5 = r7.n()
            r5.a(r13)
            r5 = r25
            int r8 = android.view.ViewGroup.getChildMeasureSpec(r5, r12, r13)
            r9 = r0
            r0 = r8
            goto L_0x024c
        L_0x0236:
            r5 = r25
            r8 = -2
            int r0 = android.view.ViewGroup.getChildMeasureSpec(r5, r12, r8)
            r8 = 1
            r9 = 0
            goto L_0x025c
        L_0x0240:
            r5 = r25
            r8 = -2
            r9 = -1
            if (r13 != r9) goto L_0x024e
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r5, r12, r9)
            r9 = r0
            r0 = r10
        L_0x024c:
            r8 = 0
            goto L_0x025c
        L_0x024e:
            if (r13 != r8) goto L_0x0252
            r8 = 1
            goto L_0x0253
        L_0x0252:
            r8 = 0
        L_0x0253:
            int r9 = android.view.ViewGroup.getChildMeasureSpec(r5, r12, r13)
            r22 = r9
            r9 = r0
            r0 = r22
        L_0x025c:
            r3.measure(r14, r0)
            r0 = r23
            b.g.a.f r10 = r0.t
            if (r10 == 0) goto L_0x026e
            long r14 = r10.f2455a
            r18 = 1
            long r14 = r14 + r18
            r10.f2455a = r14
            goto L_0x0270
        L_0x026e:
            r18 = 1
        L_0x0270:
            r10 = -2
            if (r11 != r10) goto L_0x0275
            r11 = 1
            goto L_0x0276
        L_0x0275:
            r11 = 0
        L_0x0276:
            r7.b((boolean) r11)
            if (r13 != r10) goto L_0x027d
            r11 = 1
            goto L_0x027e
        L_0x027d:
            r11 = 0
        L_0x027e:
            r7.a((boolean) r11)
            int r11 = r3.getMeasuredWidth()
            int r13 = r3.getMeasuredHeight()
            r7.k(r11)
            r7.c((int) r13)
            if (r2 == 0) goto L_0x0294
            r7.m(r11)
        L_0x0294:
            if (r8 == 0) goto L_0x0299
            r7.l(r13)
        L_0x0299:
            if (r6 == 0) goto L_0x02a3
            b.g.a.a.m r2 = r7.o()
            r2.a(r11)
            goto L_0x02aa
        L_0x02a3:
            b.g.a.a.m r2 = r7.o()
            r2.f()
        L_0x02aa:
            if (r9 == 0) goto L_0x02b4
            b.g.a.a.m r2 = r7.n()
            r2.a(r13)
            goto L_0x02bb
        L_0x02b4:
            b.g.a.a.m r2 = r7.n()
            r2.f()
        L_0x02bb:
            r6 = r21
            boolean r2 = r6.X
            if (r2 == 0) goto L_0x02cc
            int r2 = r3.getBaseline()
            r3 = -1
            if (r2 == r3) goto L_0x02d8
            r7.b((int) r2)
            goto L_0x02d8
        L_0x02cc:
            r3 = -1
            goto L_0x02d8
        L_0x02ce:
            r20 = r2
            r17 = r5
            r18 = r8
            r3 = -1
            r10 = -2
            r5 = r25
        L_0x02d8:
            int r2 = r20 + 1
            r5 = r17
            r8 = r18
            r10 = 8
            goto L_0x00e5
        L_0x02e2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b(int, int):void");
    }

    public final void c(int i2, int i3) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode != 1073741824) {
                dimensionBehaviour = dimensionBehaviour2;
            } else {
                i4 = Math.min(this.f534g, size) - paddingLeft;
                dimensionBehaviour = dimensionBehaviour2;
            }
            i4 = 0;
        } else {
            i4 = size;
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = Math.min(this.f535h, size2) - paddingTop;
            }
            size2 = 0;
        } else {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        this.f531d.h(0);
        this.f531d.g(0);
        this.f531d.a(dimensionBehaviour);
        this.f531d.k(i4);
        this.f531d.b(dimensionBehaviour2);
        this.f531d.c(size2);
        this.f531d.h((this.f532e - getPaddingLeft()) - getPaddingRight());
        this.f531d.g((this.f533f - getPaddingTop()) - getPaddingBottom());
    }

    public Object a(int i2, Object obj) {
        if (i2 == 0 && (obj instanceof String)) {
            String str = (String) obj;
            HashMap<String, Integer> hashMap = this.m;
            if (hashMap != null && hashMap.containsKey(str)) {
                return this.m.get(str);
            }
        }
        return null;
    }

    public final void a(AttributeSet attributeSet) {
        this.f531d.a((Object) this);
        this.f528a.put(getId(), this);
        this.f538k = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == b.ConstraintLayout_Layout_android_minWidth) {
                    this.f532e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f532e);
                } else if (index == b.ConstraintLayout_Layout_android_minHeight) {
                    this.f533f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f533f);
                } else if (index == b.ConstraintLayout_Layout_android_maxWidth) {
                    this.f534g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f534g);
                } else if (index == b.ConstraintLayout_Layout_android_maxHeight) {
                    this.f535h = obtainStyledAttributes.getDimensionPixelOffset(index, this.f535h);
                } else if (index == b.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f537j = obtainStyledAttributes.getInt(index, this.f537j);
                } else if (index == b.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        this.f538k = new c();
                        this.f538k.a(getContext(), resourceId);
                    } catch (Resources.NotFoundException unused) {
                        this.f538k = null;
                    }
                    this.f539l = resourceId;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f531d.q(this.f537j);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:118:0x01d6, code lost:
        if (r11 != -1) goto L_0x01da;
     */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x01e3  */
    /* JADX WARNING: Removed duplicated region for block: B:126:0x01e7  */
    /* JADX WARNING: Removed duplicated region for block: B:134:0x0205  */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x0214  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0346  */
    /* JADX WARNING: Removed duplicated region for block: B:205:0x036e  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x037c  */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x03a5  */
    /* JADX WARNING: Removed duplicated region for block: B:215:0x03b4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r26 = this;
            r0 = r26
            boolean r1 = r26.isInEditMode()
            int r2 = r26.getChildCount()
            r3 = 0
            r4 = -1
            if (r1 == 0) goto L_0x0048
            r5 = 0
        L_0x000f:
            if (r5 >= r2) goto L_0x0048
            android.view.View r6 = r0.getChildAt(r5)
            android.content.res.Resources r7 = r26.getResources()     // Catch:{ NotFoundException -> 0x0045 }
            int r8 = r6.getId()     // Catch:{ NotFoundException -> 0x0045 }
            java.lang.String r7 = r7.getResourceName(r8)     // Catch:{ NotFoundException -> 0x0045 }
            int r8 = r6.getId()     // Catch:{ NotFoundException -> 0x0045 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ NotFoundException -> 0x0045 }
            r0.a(r3, r7, r8)     // Catch:{ NotFoundException -> 0x0045 }
            r8 = 47
            int r8 = r7.indexOf(r8)     // Catch:{ NotFoundException -> 0x0045 }
            if (r8 == r4) goto L_0x003a
            int r8 = r8 + 1
            java.lang.String r7 = r7.substring(r8)     // Catch:{ NotFoundException -> 0x0045 }
        L_0x003a:
            int r6 = r6.getId()     // Catch:{ NotFoundException -> 0x0045 }
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r0.a((int) r6)     // Catch:{ NotFoundException -> 0x0045 }
            r6.a((java.lang.String) r7)     // Catch:{ NotFoundException -> 0x0045 }
        L_0x0045:
            int r5 = r5 + 1
            goto L_0x000f
        L_0x0048:
            r5 = 0
        L_0x0049:
            if (r5 >= r2) goto L_0x005c
            android.view.View r6 = r0.getChildAt(r5)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r0.a((android.view.View) r6)
            if (r6 != 0) goto L_0x0056
            goto L_0x0059
        L_0x0056:
            r6.C()
        L_0x0059:
            int r5 = r5 + 1
            goto L_0x0049
        L_0x005c:
            int r5 = r0.f539l
            if (r5 == r4) goto L_0x007e
            r5 = 0
        L_0x0061:
            if (r5 >= r2) goto L_0x007e
            android.view.View r6 = r0.getChildAt(r5)
            int r7 = r6.getId()
            int r8 = r0.f539l
            if (r7 != r8) goto L_0x007b
            boolean r7 = r6 instanceof b.g.b.d
            if (r7 == 0) goto L_0x007b
            b.g.b.d r6 = (b.g.b.d) r6
            b.g.b.c r6 = r6.getConstraintSet()
            r0.f538k = r6
        L_0x007b:
            int r5 = r5 + 1
            goto L_0x0061
        L_0x007e:
            b.g.b.c r5 = r0.f538k
            if (r5 == 0) goto L_0x0085
            r5.a((androidx.constraintlayout.widget.ConstraintLayout) r0)
        L_0x0085:
            b.g.a.a.f r5 = r0.f531d
            r5.K()
            java.util.ArrayList<b.g.b.a> r5 = r0.f529b
            int r5 = r5.size()
            if (r5 <= 0) goto L_0x00a3
            r6 = 0
        L_0x0093:
            if (r6 >= r5) goto L_0x00a3
            java.util.ArrayList<b.g.b.a> r7 = r0.f529b
            java.lang.Object r7 = r7.get(r6)
            b.g.b.a r7 = (b.g.b.a) r7
            r7.c(r0)
            int r6 = r6 + 1
            goto L_0x0093
        L_0x00a3:
            r5 = 0
        L_0x00a4:
            if (r5 >= r2) goto L_0x00b6
            android.view.View r6 = r0.getChildAt(r5)
            boolean r7 = r6 instanceof b.g.b.e
            if (r7 == 0) goto L_0x00b3
            b.g.b.e r6 = (b.g.b.e) r6
            r6.b(r0)
        L_0x00b3:
            int r5 = r5 + 1
            goto L_0x00a4
        L_0x00b6:
            r5 = 0
        L_0x00b7:
            if (r5 >= r2) goto L_0x03e5
            android.view.View r6 = r0.getChildAt(r5)
            androidx.constraintlayout.solver.widgets.ConstraintWidget r13 = r0.a((android.view.View) r6)
            if (r13 != 0) goto L_0x00c5
            goto L_0x03e1
        L_0x00c5:
            android.view.ViewGroup$LayoutParams r7 = r6.getLayoutParams()
            r14 = r7
            androidx.constraintlayout.widget.ConstraintLayout$a r14 = (androidx.constraintlayout.widget.ConstraintLayout.a) r14
            r14.a()
            boolean r7 = r14.ma
            if (r7 == 0) goto L_0x00d6
            r14.ma = r3
            goto L_0x0108
        L_0x00d6:
            if (r1 == 0) goto L_0x0108
            android.content.res.Resources r7 = r26.getResources()     // Catch:{ NotFoundException -> 0x0107 }
            int r8 = r6.getId()     // Catch:{ NotFoundException -> 0x0107 }
            java.lang.String r7 = r7.getResourceName(r8)     // Catch:{ NotFoundException -> 0x0107 }
            int r8 = r6.getId()     // Catch:{ NotFoundException -> 0x0107 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ NotFoundException -> 0x0107 }
            r0.a(r3, r7, r8)     // Catch:{ NotFoundException -> 0x0107 }
            java.lang.String r8 = "id/"
            int r8 = r7.indexOf(r8)     // Catch:{ NotFoundException -> 0x0107 }
            int r8 = r8 + 3
            java.lang.String r7 = r7.substring(r8)     // Catch:{ NotFoundException -> 0x0107 }
            int r8 = r6.getId()     // Catch:{ NotFoundException -> 0x0107 }
            androidx.constraintlayout.solver.widgets.ConstraintWidget r8 = r0.a((int) r8)     // Catch:{ NotFoundException -> 0x0107 }
            r8.a((java.lang.String) r7)     // Catch:{ NotFoundException -> 0x0107 }
            goto L_0x0108
        L_0x0107:
        L_0x0108:
            int r7 = r6.getVisibility()
            r13.j(r7)
            boolean r7 = r14.aa
            if (r7 == 0) goto L_0x0118
            r7 = 8
            r13.j(r7)
        L_0x0118:
            r13.a((java.lang.Object) r6)
            b.g.a.a.f r6 = r0.f531d
            r6.b(r13)
            boolean r6 = r14.W
            if (r6 == 0) goto L_0x0128
            boolean r6 = r14.V
            if (r6 != 0) goto L_0x012d
        L_0x0128:
            java.util.ArrayList<androidx.constraintlayout.solver.widgets.ConstraintWidget> r6 = r0.f530c
            r6.add(r13)
        L_0x012d:
            boolean r6 = r14.Y
            r7 = 17
            if (r6 == 0) goto L_0x015e
            b.g.a.a.h r13 = (b.g.a.a.h) r13
            int r6 = r14.ia
            int r8 = r14.ja
            float r9 = r14.ka
            int r10 = android.os.Build.VERSION.SDK_INT
            if (r10 >= r7) goto L_0x0145
            int r6 = r14.f540a
            int r8 = r14.f541b
            float r9 = r14.f542c
        L_0x0145:
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r7 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r7 == 0) goto L_0x0150
            r13.e(r9)
            goto L_0x03e1
        L_0x0150:
            if (r6 == r4) goto L_0x0157
            r13.p(r6)
            goto L_0x03e1
        L_0x0157:
            if (r8 == r4) goto L_0x03e1
            r13.q(r8)
            goto L_0x03e1
        L_0x015e:
            int r6 = r14.f543d
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f544e
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f545f
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f546g
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.q
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.p
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.r
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.s
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f547h
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f548i
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f549j
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f550k
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.f551l
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.Q
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.R
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.m
            if (r6 != r4) goto L_0x01a6
            int r6 = r14.width
            if (r6 == r4) goto L_0x01a6
            int r6 = r14.height
            if (r6 != r4) goto L_0x03e1
        L_0x01a6:
            int r6 = r14.ba
            int r8 = r14.ca
            int r9 = r14.da
            int r10 = r14.ea
            int r11 = r14.fa
            int r12 = r14.ga
            float r15 = r14.ha
            int r3 = android.os.Build.VERSION.SDK_INT
            if (r3 >= r7) goto L_0x01f7
            int r3 = r14.f543d
            int r6 = r14.f544e
            int r9 = r14.f545f
            int r10 = r14.f546g
            int r7 = r14.t
            int r8 = r14.v
            float r15 = r14.z
            if (r3 != r4) goto L_0x01d9
            if (r6 != r4) goto L_0x01d9
            int r11 = r14.q
            if (r11 == r4) goto L_0x01d4
            r25 = r11
            r11 = r6
            r6 = r25
            goto L_0x01db
        L_0x01d4:
            int r11 = r14.p
            if (r11 == r4) goto L_0x01d9
            goto L_0x01da
        L_0x01d9:
            r11 = r6
        L_0x01da:
            r6 = r3
        L_0x01db:
            if (r9 != r4) goto L_0x01f2
            if (r10 != r4) goto L_0x01f2
            int r3 = r14.r
            if (r3 == r4) goto L_0x01e7
            r12 = r7
            r16 = r8
            goto L_0x01fc
        L_0x01e7:
            int r3 = r14.s
            if (r3 == r4) goto L_0x01f2
            r12 = r7
            r16 = r8
            r10 = r15
            r15 = r3
            r3 = r9
            goto L_0x0201
        L_0x01f2:
            r12 = r7
            r16 = r8
            r3 = r9
            goto L_0x01fc
        L_0x01f7:
            r3 = r9
            r16 = r12
            r12 = r11
            r11 = r8
        L_0x01fc:
            r25 = r15
            r15 = r10
            r10 = r25
        L_0x0201:
            int r7 = r14.m
            if (r7 == r4) goto L_0x0214
            androidx.constraintlayout.solver.widgets.ConstraintWidget r3 = r0.a((int) r7)
            if (r3 == 0) goto L_0x0331
            float r6 = r14.o
            int r7 = r14.n
            r13.a(r3, r6, r7)
            goto L_0x0331
        L_0x0214:
            if (r6 == r4) goto L_0x022c
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r6)
            if (r9 == 0) goto L_0x0229
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r6 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            int r11 = r14.leftMargin
            r7 = r13
            r8 = r6
            r17 = r10
            r10 = r6
            r7.a(r8, r9, r10, r11, r12)
            goto L_0x0240
        L_0x0229:
            r17 = r10
            goto L_0x0240
        L_0x022c:
            r17 = r10
            if (r11 == r4) goto L_0x0240
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r11)
            if (r9 == 0) goto L_0x0240
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r8 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            int r11 = r14.leftMargin
            r7 = r13
            r7.a(r8, r9, r10, r11, r12)
        L_0x0240:
            if (r3 == r4) goto L_0x0255
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r3)
            if (r9 == 0) goto L_0x0268
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r8 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            int r11 = r14.rightMargin
            r7 = r13
            r12 = r16
            r7.a(r8, r9, r10, r11, r12)
            goto L_0x0268
        L_0x0255:
            if (r15 == r4) goto L_0x0268
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r15)
            if (r9 == 0) goto L_0x0268
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            int r11 = r14.rightMargin
            r7 = r13
            r8 = r10
            r12 = r16
            r7.a(r8, r9, r10, r11, r12)
        L_0x0268:
            int r3 = r14.f547h
            if (r3 == r4) goto L_0x027e
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r3)
            if (r9 == 0) goto L_0x0294
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            int r11 = r14.topMargin
            int r12 = r14.u
            r7 = r13
            r8 = r10
            r7.a(r8, r9, r10, r11, r12)
            goto L_0x0294
        L_0x027e:
            int r3 = r14.f548i
            if (r3 == r4) goto L_0x0294
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r3)
            if (r9 == 0) goto L_0x0294
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r8 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            int r11 = r14.topMargin
            int r12 = r14.u
            r7 = r13
            r7.a(r8, r9, r10, r11, r12)
        L_0x0294:
            int r3 = r14.f549j
            if (r3 == r4) goto L_0x02ab
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r3)
            if (r9 == 0) goto L_0x02c0
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r8 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            int r11 = r14.bottomMargin
            int r12 = r14.w
            r7 = r13
            r7.a(r8, r9, r10, r11, r12)
            goto L_0x02c0
        L_0x02ab:
            int r3 = r14.f550k
            if (r3 == r4) goto L_0x02c0
            androidx.constraintlayout.solver.widgets.ConstraintWidget r9 = r0.a((int) r3)
            if (r9 == 0) goto L_0x02c0
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r10 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            int r11 = r14.bottomMargin
            int r12 = r14.w
            r7 = r13
            r8 = r10
            r7.a(r8, r9, r10, r11, r12)
        L_0x02c0:
            int r3 = r14.f551l
            if (r3 == r4) goto L_0x0314
            android.util.SparseArray<android.view.View> r6 = r0.f528a
            java.lang.Object r3 = r6.get(r3)
            android.view.View r3 = (android.view.View) r3
            int r6 = r14.f551l
            androidx.constraintlayout.solver.widgets.ConstraintWidget r6 = r0.a((int) r6)
            if (r6 == 0) goto L_0x0314
            if (r3 == 0) goto L_0x0314
            android.view.ViewGroup$LayoutParams r7 = r3.getLayoutParams()
            boolean r7 = r7 instanceof androidx.constraintlayout.widget.ConstraintLayout.a
            if (r7 == 0) goto L_0x0314
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r3 = (androidx.constraintlayout.widget.ConstraintLayout.a) r3
            r7 = 1
            r14.X = r7
            r3.X = r7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BASELINE
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r18 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BASELINE
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r19 = r6.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            r20 = 0
            r21 = -1
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Strength r22 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Strength.STRONG
            r23 = 0
            r24 = 1
            r18.a(r19, r20, r21, r22, r23, r24)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            r3.j()
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            r3.j()
        L_0x0314:
            r3 = 1056964608(0x3f000000, float:0.5)
            r6 = 0
            r15 = r17
            int r7 = (r15 > r6 ? 1 : (r15 == r6 ? 0 : -1))
            if (r7 < 0) goto L_0x0324
            int r7 = (r15 > r3 ? 1 : (r15 == r3 ? 0 : -1))
            if (r7 == 0) goto L_0x0324
            r13.a((float) r15)
        L_0x0324:
            float r7 = r14.A
            int r6 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1))
            if (r6 < 0) goto L_0x0331
            int r3 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r3 == 0) goto L_0x0331
            r13.c((float) r7)
        L_0x0331:
            if (r1 == 0) goto L_0x0342
            int r3 = r14.Q
            if (r3 != r4) goto L_0x033b
            int r3 = r14.R
            if (r3 == r4) goto L_0x0342
        L_0x033b:
            int r3 = r14.Q
            int r6 = r14.R
            r13.c(r3, r6)
        L_0x0342:
            boolean r3 = r14.V
            if (r3 != 0) goto L_0x036e
            int r3 = r14.width
            if (r3 != r4) goto L_0x0364
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_PARENT
            r13.a((androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour) r3)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.LEFT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            int r6 = r14.leftMargin
            r3.f503e = r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            int r6 = r14.rightMargin
            r3.f503e = r6
            goto L_0x0378
        L_0x0364:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            r13.a((androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour) r3)
            r3 = 0
            r13.k(r3)
            goto L_0x0378
        L_0x036e:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            r13.a((androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour) r3)
            int r3 = r14.width
            r13.k(r3)
        L_0x0378:
            boolean r3 = r14.W
            if (r3 != 0) goto L_0x03a5
            int r3 = r14.height
            if (r3 != r4) goto L_0x039b
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_PARENT
            r13.b((androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour) r3)
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.TOP
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            int r6 = r14.topMargin
            r3.f503e = r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r3 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r3 = r13.a((androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type) r3)
            int r6 = r14.bottomMargin
            r3.f503e = r6
            r3 = 0
            goto L_0x03b0
        L_0x039b:
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r3 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            r13.b((androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour) r3)
            r3 = 0
            r13.c((int) r3)
            goto L_0x03b0
        L_0x03a5:
            r3 = 0
            androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour r6 = androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED
            r13.b((androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour) r6)
            int r6 = r14.height
            r13.c((int) r6)
        L_0x03b0:
            java.lang.String r6 = r14.B
            if (r6 == 0) goto L_0x03b7
            r13.b((java.lang.String) r6)
        L_0x03b7:
            float r6 = r14.E
            r13.b((float) r6)
            float r6 = r14.F
            r13.d((float) r6)
            int r6 = r14.G
            r13.d((int) r6)
            int r6 = r14.H
            r13.i(r6)
            int r6 = r14.I
            int r7 = r14.K
            int r8 = r14.M
            float r9 = r14.O
            r13.a((int) r6, (int) r7, (int) r8, (float) r9)
            int r6 = r14.J
            int r7 = r14.L
            int r8 = r14.N
            float r9 = r14.P
            r13.b(r6, r7, r8, r9)
        L_0x03e1:
            int r5 = r5 + 1
            goto L_0x00b7
        L_0x03e5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a():void");
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(attributeSet);
    }

    public View b(int i2) {
        return this.f528a.get(i2);
    }

    public final ConstraintWidget a(int i2) {
        ConstraintWidget constraintWidget;
        if (i2 == 0) {
            return this.f531d;
        }
        View view = this.f528a.get(i2);
        if (view == this) {
            return this.f531d;
        }
        if (view == null) {
            constraintWidget = null;
        } else {
            constraintWidget = ((a) view.getLayoutParams()).la;
        }
        return constraintWidget;
    }

    public final ConstraintWidget a(View view) {
        ConstraintWidget constraintWidget;
        if (view == this) {
            return this.f531d;
        }
        if (view == null) {
            constraintWidget = null;
        } else {
            constraintWidget = ((a) view.getLayoutParams()).la;
        }
        return constraintWidget;
    }

    public final void a(int i2, int i3) {
        boolean z;
        boolean z2;
        int i4;
        int i5;
        int i6 = i2;
        int i7 = i3;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                ConstraintWidget constraintWidget = aVar.la;
                if (!aVar.Y && !aVar.Z) {
                    constraintWidget.j(childAt.getVisibility());
                    int i9 = aVar.width;
                    int i10 = aVar.height;
                    boolean z3 = aVar.V;
                    if (z3 || aVar.W || (!z3 && aVar.I == 1) || aVar.width == -1 || (!aVar.W && (aVar.J == 1 || aVar.height == -1))) {
                        if (i9 == 0) {
                            i4 = ViewGroup.getChildMeasureSpec(i6, paddingLeft, -2);
                            z2 = true;
                        } else if (i9 == -1) {
                            i4 = ViewGroup.getChildMeasureSpec(i6, paddingLeft, -1);
                            z2 = false;
                        } else {
                            z2 = i9 == -2;
                            i4 = ViewGroup.getChildMeasureSpec(i6, paddingLeft, i9);
                        }
                        if (i10 == 0) {
                            i5 = ViewGroup.getChildMeasureSpec(i7, paddingTop, -2);
                            z = true;
                        } else if (i10 == -1) {
                            i5 = ViewGroup.getChildMeasureSpec(i7, paddingTop, -1);
                            z = false;
                        } else {
                            z = i10 == -2;
                            i5 = ViewGroup.getChildMeasureSpec(i7, paddingTop, i10);
                        }
                        childAt.measure(i4, i5);
                        C0250f fVar = this.t;
                        if (fVar != null) {
                            fVar.f2455a++;
                        }
                        constraintWidget.b(i9 == -2);
                        constraintWidget.a(i10 == -2);
                        i9 = childAt.getMeasuredWidth();
                        i10 = childAt.getMeasuredHeight();
                    } else {
                        z2 = false;
                        z = false;
                    }
                    constraintWidget.k(i9);
                    constraintWidget.c(i10);
                    if (z2) {
                        constraintWidget.m(i9);
                    }
                    if (z) {
                        constraintWidget.l(i10);
                    }
                    if (aVar.X) {
                        int baseline = childAt.getBaseline();
                        if (baseline != -1) {
                            constraintWidget.b(baseline);
                        }
                    }
                }
            }
        }
    }

    public void a(String str) {
        this.f531d.J();
        C0250f fVar = this.t;
        if (fVar != null) {
            fVar.f2457c++;
        }
    }
}
