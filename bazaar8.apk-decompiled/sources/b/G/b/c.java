package b.g.b;

import a.a.a.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import b.g.b.d;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ConstraintSet */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2475a = {0, 4, 8};

    /* renamed from: b  reason: collision with root package name */
    public static SparseIntArray f2476b = new SparseIntArray();

    /* renamed from: c  reason: collision with root package name */
    public HashMap<Integer, a> f2477c = new HashMap<>();

    /* compiled from: ConstraintSet */
    private static class a {
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public float Q;
        public float R;
        public int S;
        public int T;
        public float U;
        public boolean V;
        public float W;
        public float X;
        public float Y;
        public float Z;

        /* renamed from: a  reason: collision with root package name */
        public boolean f2478a;
        public float aa;

        /* renamed from: b  reason: collision with root package name */
        public int f2479b;
        public float ba;

        /* renamed from: c  reason: collision with root package name */
        public int f2480c;
        public float ca;

        /* renamed from: d  reason: collision with root package name */
        public int f2481d;
        public float da;

        /* renamed from: e  reason: collision with root package name */
        public int f2482e;
        public float ea;

        /* renamed from: f  reason: collision with root package name */
        public int f2483f;
        public float fa;

        /* renamed from: g  reason: collision with root package name */
        public float f2484g;
        public float ga;

        /* renamed from: h  reason: collision with root package name */
        public int f2485h;
        public boolean ha;

        /* renamed from: i  reason: collision with root package name */
        public int f2486i;
        public boolean ia;

        /* renamed from: j  reason: collision with root package name */
        public int f2487j;
        public int ja;

        /* renamed from: k  reason: collision with root package name */
        public int f2488k;
        public int ka;

        /* renamed from: l  reason: collision with root package name */
        public int f2489l;
        public int la;
        public int m;
        public int ma;
        public int n;
        public int na;
        public int o;
        public int oa;
        public int p;
        public float pa;
        public int q;
        public float qa;
        public int r;
        public int ra;
        public int s;
        public int sa;
        public int t;
        public int[] ta;
        public float u;
        public float v;
        public String w;
        public int x;
        public int y;
        public float z;

        public a() {
            this.f2478a = false;
            this.f2482e = -1;
            this.f2483f = -1;
            this.f2484g = -1.0f;
            this.f2485h = -1;
            this.f2486i = -1;
            this.f2487j = -1;
            this.f2488k = -1;
            this.f2489l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = 0.5f;
            this.v = 0.5f;
            this.w = null;
            this.x = -1;
            this.y = 0;
            this.z = 0.0f;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = -1;
            this.I = -1;
            this.J = 0;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = 0.0f;
            this.R = 0.0f;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = false;
            this.W = 0.0f;
            this.X = 0.0f;
            this.Y = 0.0f;
            this.Z = 0.0f;
            this.aa = 1.0f;
            this.ba = 1.0f;
            this.ca = Float.NaN;
            this.da = Float.NaN;
            this.ea = 0.0f;
            this.fa = 0.0f;
            this.ga = 0.0f;
            this.ha = false;
            this.ia = false;
            this.ja = 0;
            this.ka = 0;
            this.la = -1;
            this.ma = -1;
            this.na = -1;
            this.oa = -1;
            this.pa = 1.0f;
            this.qa = 1.0f;
            this.ra = -1;
            this.sa = -1;
        }

        public a clone() {
            a aVar = new a();
            aVar.f2478a = this.f2478a;
            aVar.f2479b = this.f2479b;
            aVar.f2480c = this.f2480c;
            aVar.f2482e = this.f2482e;
            aVar.f2483f = this.f2483f;
            aVar.f2484g = this.f2484g;
            aVar.f2485h = this.f2485h;
            aVar.f2486i = this.f2486i;
            aVar.f2487j = this.f2487j;
            aVar.f2488k = this.f2488k;
            aVar.f2489l = this.f2489l;
            aVar.m = this.m;
            aVar.n = this.n;
            aVar.o = this.o;
            aVar.p = this.p;
            aVar.q = this.q;
            aVar.r = this.r;
            aVar.s = this.s;
            aVar.t = this.t;
            aVar.u = this.u;
            aVar.v = this.v;
            aVar.w = this.w;
            aVar.A = this.A;
            aVar.B = this.B;
            aVar.u = this.u;
            aVar.u = this.u;
            aVar.u = this.u;
            aVar.u = this.u;
            aVar.u = this.u;
            aVar.C = this.C;
            aVar.D = this.D;
            aVar.E = this.E;
            aVar.F = this.F;
            aVar.G = this.G;
            aVar.H = this.H;
            aVar.I = this.I;
            aVar.J = this.J;
            aVar.K = this.K;
            aVar.L = this.L;
            aVar.M = this.M;
            aVar.N = this.N;
            aVar.O = this.O;
            aVar.P = this.P;
            aVar.Q = this.Q;
            aVar.R = this.R;
            aVar.S = this.S;
            aVar.T = this.T;
            aVar.U = this.U;
            aVar.V = this.V;
            aVar.W = this.W;
            aVar.X = this.X;
            aVar.Y = this.Y;
            aVar.Z = this.Z;
            aVar.aa = this.aa;
            aVar.ba = this.ba;
            aVar.ca = this.ca;
            aVar.da = this.da;
            aVar.ea = this.ea;
            aVar.fa = this.fa;
            aVar.ga = this.ga;
            aVar.ha = this.ha;
            aVar.ia = this.ia;
            aVar.ja = this.ja;
            aVar.ka = this.ka;
            aVar.la = this.la;
            aVar.ma = this.ma;
            aVar.na = this.na;
            aVar.oa = this.oa;
            aVar.pa = this.pa;
            aVar.qa = this.qa;
            aVar.ra = this.ra;
            aVar.sa = this.sa;
            int[] iArr = this.ta;
            if (iArr != null) {
                aVar.ta = Arrays.copyOf(iArr, iArr.length);
            }
            aVar.x = this.x;
            aVar.y = this.y;
            aVar.z = this.z;
            return aVar;
        }

        public final void a(a aVar, int i2, d.a aVar2) {
            a(i2, aVar2);
            if (aVar instanceof Barrier) {
                this.sa = 1;
                Barrier barrier = (Barrier) aVar;
                this.ra = barrier.getType();
                this.ta = barrier.getReferencedIds();
            }
        }

        public final void a(int i2, d.a aVar) {
            a(i2, (ConstraintLayout.a) aVar);
            this.U = aVar.na;
            this.X = aVar.qa;
            this.Y = aVar.ra;
            this.Z = aVar.sa;
            this.aa = aVar.ta;
            this.ba = aVar.ua;
            this.ca = aVar.va;
            this.da = aVar.wa;
            this.ea = aVar.xa;
            this.fa = aVar.ya;
            this.ga = aVar.za;
            this.W = aVar.pa;
            this.V = aVar.oa;
        }

        public final void a(int i2, ConstraintLayout.a aVar) {
            this.f2481d = i2;
            this.f2485h = aVar.f543d;
            this.f2486i = aVar.f544e;
            this.f2487j = aVar.f545f;
            this.f2488k = aVar.f546g;
            this.f2489l = aVar.f547h;
            this.m = aVar.f548i;
            this.n = aVar.f549j;
            this.o = aVar.f550k;
            this.p = aVar.f551l;
            this.q = aVar.p;
            this.r = aVar.q;
            this.s = aVar.r;
            this.t = aVar.s;
            this.u = aVar.z;
            this.v = aVar.A;
            this.w = aVar.B;
            this.x = aVar.m;
            this.y = aVar.n;
            this.z = aVar.o;
            this.A = aVar.Q;
            this.B = aVar.R;
            this.C = aVar.S;
            this.f2484g = aVar.f542c;
            this.f2482e = aVar.f540a;
            this.f2483f = aVar.f541b;
            this.f2479b = aVar.width;
            this.f2480c = aVar.height;
            this.D = aVar.leftMargin;
            this.E = aVar.rightMargin;
            this.F = aVar.topMargin;
            this.G = aVar.bottomMargin;
            this.Q = aVar.F;
            this.R = aVar.E;
            this.T = aVar.H;
            this.S = aVar.G;
            boolean z2 = aVar.T;
            this.ha = z2;
            this.ia = aVar.U;
            this.ja = aVar.I;
            this.ka = aVar.J;
            this.ha = z2;
            this.la = aVar.M;
            this.ma = aVar.N;
            this.na = aVar.K;
            this.oa = aVar.L;
            this.pa = aVar.O;
            this.qa = aVar.P;
            if (Build.VERSION.SDK_INT >= 17) {
                this.H = aVar.getMarginEnd();
                this.I = aVar.getMarginStart();
            }
        }

        public void a(ConstraintLayout.a aVar) {
            aVar.f543d = this.f2485h;
            aVar.f544e = this.f2486i;
            aVar.f545f = this.f2487j;
            aVar.f546g = this.f2488k;
            aVar.f547h = this.f2489l;
            aVar.f548i = this.m;
            aVar.f549j = this.n;
            aVar.f550k = this.o;
            aVar.f551l = this.p;
            aVar.p = this.q;
            aVar.q = this.r;
            aVar.r = this.s;
            aVar.s = this.t;
            aVar.leftMargin = this.D;
            aVar.rightMargin = this.E;
            aVar.topMargin = this.F;
            aVar.bottomMargin = this.G;
            aVar.x = this.P;
            aVar.y = this.O;
            aVar.z = this.u;
            aVar.A = this.v;
            aVar.m = this.x;
            aVar.n = this.y;
            aVar.o = this.z;
            aVar.B = this.w;
            aVar.Q = this.A;
            aVar.R = this.B;
            aVar.F = this.Q;
            aVar.E = this.R;
            aVar.H = this.T;
            aVar.G = this.S;
            aVar.T = this.ha;
            aVar.U = this.ia;
            aVar.I = this.ja;
            aVar.J = this.ka;
            aVar.M = this.la;
            aVar.N = this.ma;
            aVar.K = this.na;
            aVar.L = this.oa;
            aVar.O = this.pa;
            aVar.P = this.qa;
            aVar.S = this.C;
            aVar.f542c = this.f2484g;
            aVar.f540a = this.f2482e;
            aVar.f541b = this.f2483f;
            aVar.width = this.f2479b;
            aVar.height = this.f2480c;
            if (Build.VERSION.SDK_INT >= 17) {
                aVar.setMarginStart(this.I);
                aVar.setMarginEnd(this.H);
            }
            aVar.a();
        }
    }

    static {
        f2476b.append(b.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        f2476b.append(b.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        f2476b.append(b.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        f2476b.append(b.ConstraintSet_layout_constraintRight_toRightOf, 30);
        f2476b.append(b.ConstraintSet_layout_constraintTop_toTopOf, 36);
        f2476b.append(b.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        f2476b.append(b.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        f2476b.append(b.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        f2476b.append(b.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        f2476b.append(b.ConstraintSet_layout_editor_absoluteX, 6);
        f2476b.append(b.ConstraintSet_layout_editor_absoluteY, 7);
        f2476b.append(b.ConstraintSet_layout_constraintGuide_begin, 17);
        f2476b.append(b.ConstraintSet_layout_constraintGuide_end, 18);
        f2476b.append(b.ConstraintSet_layout_constraintGuide_percent, 19);
        f2476b.append(b.ConstraintSet_android_orientation, 27);
        f2476b.append(b.ConstraintSet_layout_constraintStart_toEndOf, 32);
        f2476b.append(b.ConstraintSet_layout_constraintStart_toStartOf, 33);
        f2476b.append(b.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        f2476b.append(b.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        f2476b.append(b.ConstraintSet_layout_goneMarginLeft, 13);
        f2476b.append(b.ConstraintSet_layout_goneMarginTop, 16);
        f2476b.append(b.ConstraintSet_layout_goneMarginRight, 14);
        f2476b.append(b.ConstraintSet_layout_goneMarginBottom, 11);
        f2476b.append(b.ConstraintSet_layout_goneMarginStart, 15);
        f2476b.append(b.ConstraintSet_layout_goneMarginEnd, 12);
        f2476b.append(b.ConstraintSet_layout_constraintVertical_weight, 40);
        f2476b.append(b.ConstraintSet_layout_constraintHorizontal_weight, 39);
        f2476b.append(b.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        f2476b.append(b.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        f2476b.append(b.ConstraintSet_layout_constraintHorizontal_bias, 20);
        f2476b.append(b.ConstraintSet_layout_constraintVertical_bias, 37);
        f2476b.append(b.ConstraintSet_layout_constraintDimensionRatio, 5);
        f2476b.append(b.ConstraintSet_layout_constraintLeft_creator, 64);
        f2476b.append(b.ConstraintSet_layout_constraintTop_creator, 64);
        f2476b.append(b.ConstraintSet_layout_constraintRight_creator, 64);
        f2476b.append(b.ConstraintSet_layout_constraintBottom_creator, 64);
        f2476b.append(b.ConstraintSet_layout_constraintBaseline_creator, 64);
        f2476b.append(b.ConstraintSet_android_layout_marginLeft, 24);
        f2476b.append(b.ConstraintSet_android_layout_marginRight, 28);
        f2476b.append(b.ConstraintSet_android_layout_marginStart, 31);
        f2476b.append(b.ConstraintSet_android_layout_marginEnd, 8);
        f2476b.append(b.ConstraintSet_android_layout_marginTop, 34);
        f2476b.append(b.ConstraintSet_android_layout_marginBottom, 2);
        f2476b.append(b.ConstraintSet_android_layout_width, 23);
        f2476b.append(b.ConstraintSet_android_layout_height, 21);
        f2476b.append(b.ConstraintSet_android_visibility, 22);
        f2476b.append(b.ConstraintSet_android_alpha, 43);
        f2476b.append(b.ConstraintSet_android_elevation, 44);
        f2476b.append(b.ConstraintSet_android_rotationX, 45);
        f2476b.append(b.ConstraintSet_android_rotationY, 46);
        f2476b.append(b.ConstraintSet_android_rotation, 60);
        f2476b.append(b.ConstraintSet_android_scaleX, 47);
        f2476b.append(b.ConstraintSet_android_scaleY, 48);
        f2476b.append(b.ConstraintSet_android_transformPivotX, 49);
        f2476b.append(b.ConstraintSet_android_transformPivotY, 50);
        f2476b.append(b.ConstraintSet_android_translationX, 51);
        f2476b.append(b.ConstraintSet_android_translationY, 52);
        f2476b.append(b.ConstraintSet_android_translationZ, 53);
        f2476b.append(b.ConstraintSet_layout_constraintWidth_default, 54);
        f2476b.append(b.ConstraintSet_layout_constraintHeight_default, 55);
        f2476b.append(b.ConstraintSet_layout_constraintWidth_max, 56);
        f2476b.append(b.ConstraintSet_layout_constraintHeight_max, 57);
        f2476b.append(b.ConstraintSet_layout_constraintWidth_min, 58);
        f2476b.append(b.ConstraintSet_layout_constraintHeight_min, 59);
        f2476b.append(b.ConstraintSet_layout_constraintCircle, 61);
        f2476b.append(b.ConstraintSet_layout_constraintCircleRadius, 62);
        f2476b.append(b.ConstraintSet_layout_constraintCircleAngle, 63);
        f2476b.append(b.ConstraintSet_android_id, 38);
    }

    public void a(d dVar) {
        int childCount = dVar.getChildCount();
        this.f2477c.clear();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = dVar.getChildAt(i2);
            d.a aVar = (d.a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id != -1) {
                if (!this.f2477c.containsKey(Integer.valueOf(id))) {
                    this.f2477c.put(Integer.valueOf(id), new a());
                }
                a aVar2 = this.f2477c.get(Integer.valueOf(id));
                if (childAt instanceof a) {
                    aVar2.a((a) childAt, id, aVar);
                }
                aVar2.a(id, aVar);
                i2++;
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    public void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f2477c.keySet());
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (id != -1) {
                if (this.f2477c.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    a aVar = this.f2477c.get(Integer.valueOf(id));
                    int i3 = aVar.sa;
                    if (i3 != -1 && i3 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setReferencedIds(aVar.ta);
                        barrier.setType(aVar.ra);
                        aVar.a(constraintLayout.generateDefaultLayoutParams());
                    }
                    ConstraintLayout.a aVar2 = (ConstraintLayout.a) childAt.getLayoutParams();
                    aVar.a(aVar2);
                    childAt.setLayoutParams(aVar2);
                    childAt.setVisibility(aVar.J);
                    if (Build.VERSION.SDK_INT >= 17) {
                        childAt.setAlpha(aVar.U);
                        childAt.setRotation(aVar.X);
                        childAt.setRotationX(aVar.Y);
                        childAt.setRotationY(aVar.Z);
                        childAt.setScaleX(aVar.aa);
                        childAt.setScaleY(aVar.ba);
                        if (!Float.isNaN(aVar.ca)) {
                            childAt.setPivotX(aVar.ca);
                        }
                        if (!Float.isNaN(aVar.da)) {
                            childAt.setPivotY(aVar.da);
                        }
                        childAt.setTranslationX(aVar.ea);
                        childAt.setTranslationY(aVar.fa);
                        if (Build.VERSION.SDK_INT >= 21) {
                            childAt.setTranslationZ(aVar.ga);
                            if (aVar.V) {
                                childAt.setElevation(aVar.W);
                            }
                        }
                    }
                }
                i2++;
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            a aVar3 = this.f2477c.get(num);
            int i4 = aVar3.sa;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                barrier2.setReferencedIds(aVar3.ta);
                barrier2.setType(aVar3.ra);
                ConstraintLayout.a generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                aVar3.a(generateDefaultLayoutParams);
                constraintLayout.addView(barrier2, generateDefaultLayoutParams);
            }
            if (aVar3.f2478a) {
                Guideline guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.a generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                aVar3.a(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    public void a(Context context, int i2) {
        XmlResourceParser xml = context.getResources().getXml(i2);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    a a2 = a(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        a2.f2478a = true;
                    }
                    this.f2477c.put(Integer.valueOf(a2.f2481d), a2);
                }
            }
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    public static int a(TypedArray typedArray, int i2, int i3) {
        int resourceId = typedArray.getResourceId(i2, i3);
        return resourceId == -1 ? typedArray.getInt(i2, -1) : resourceId;
    }

    public final a a(Context context, AttributeSet attributeSet) {
        a aVar = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.ConstraintSet);
        a(aVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return aVar;
    }

    public final void a(a aVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArray.getIndex(i2);
            int i3 = f2476b.get(index);
            switch (i3) {
                case 1:
                    aVar.p = a(typedArray, index, aVar.p);
                    break;
                case 2:
                    aVar.G = typedArray.getDimensionPixelSize(index, aVar.G);
                    break;
                case 3:
                    aVar.o = a(typedArray, index, aVar.o);
                    break;
                case 4:
                    aVar.n = a(typedArray, index, aVar.n);
                    break;
                case 5:
                    aVar.w = typedArray.getString(index);
                    break;
                case 6:
                    aVar.A = typedArray.getDimensionPixelOffset(index, aVar.A);
                    break;
                case 7:
                    aVar.B = typedArray.getDimensionPixelOffset(index, aVar.B);
                    break;
                case 8:
                    aVar.H = typedArray.getDimensionPixelSize(index, aVar.H);
                    break;
                case 9:
                    aVar.t = a(typedArray, index, aVar.t);
                    break;
                case 10:
                    aVar.s = a(typedArray, index, aVar.s);
                    break;
                case 11:
                    aVar.N = typedArray.getDimensionPixelSize(index, aVar.N);
                    break;
                case 12:
                    aVar.O = typedArray.getDimensionPixelSize(index, aVar.O);
                    break;
                case 13:
                    aVar.K = typedArray.getDimensionPixelSize(index, aVar.K);
                    break;
                case 14:
                    aVar.M = typedArray.getDimensionPixelSize(index, aVar.M);
                    break;
                case 15:
                    aVar.P = typedArray.getDimensionPixelSize(index, aVar.P);
                    break;
                case 16:
                    aVar.L = typedArray.getDimensionPixelSize(index, aVar.L);
                    break;
                case 17:
                    aVar.f2482e = typedArray.getDimensionPixelOffset(index, aVar.f2482e);
                    break;
                case 18:
                    aVar.f2483f = typedArray.getDimensionPixelOffset(index, aVar.f2483f);
                    break;
                case 19:
                    aVar.f2484g = typedArray.getFloat(index, aVar.f2484g);
                    break;
                case 20:
                    aVar.u = typedArray.getFloat(index, aVar.u);
                    break;
                case 21:
                    aVar.f2480c = typedArray.getLayoutDimension(index, aVar.f2480c);
                    break;
                case 22:
                    aVar.J = typedArray.getInt(index, aVar.J);
                    aVar.J = f2475a[aVar.J];
                    break;
                case 23:
                    aVar.f2479b = typedArray.getLayoutDimension(index, aVar.f2479b);
                    break;
                case 24:
                    aVar.D = typedArray.getDimensionPixelSize(index, aVar.D);
                    break;
                case 25:
                    aVar.f2485h = a(typedArray, index, aVar.f2485h);
                    break;
                case 26:
                    aVar.f2486i = a(typedArray, index, aVar.f2486i);
                    break;
                case 27:
                    aVar.C = typedArray.getInt(index, aVar.C);
                    break;
                case 28:
                    aVar.E = typedArray.getDimensionPixelSize(index, aVar.E);
                    break;
                case 29:
                    aVar.f2487j = a(typedArray, index, aVar.f2487j);
                    break;
                case 30:
                    aVar.f2488k = a(typedArray, index, aVar.f2488k);
                    break;
                case 31:
                    aVar.I = typedArray.getDimensionPixelSize(index, aVar.I);
                    break;
                case 32:
                    aVar.q = a(typedArray, index, aVar.q);
                    break;
                case 33:
                    aVar.r = a(typedArray, index, aVar.r);
                    break;
                case 34:
                    aVar.F = typedArray.getDimensionPixelSize(index, aVar.F);
                    break;
                case 35:
                    aVar.m = a(typedArray, index, aVar.m);
                    break;
                case 36:
                    aVar.f2489l = a(typedArray, index, aVar.f2489l);
                    break;
                case 37:
                    aVar.v = typedArray.getFloat(index, aVar.v);
                    break;
                case 38:
                    aVar.f2481d = typedArray.getResourceId(index, aVar.f2481d);
                    break;
                case 39:
                    aVar.R = typedArray.getFloat(index, aVar.R);
                    break;
                case 40:
                    aVar.Q = typedArray.getFloat(index, aVar.Q);
                    break;
                case 41:
                    aVar.S = typedArray.getInt(index, aVar.S);
                    break;
                case 42:
                    aVar.T = typedArray.getInt(index, aVar.T);
                    break;
                case 43:
                    aVar.U = typedArray.getFloat(index, aVar.U);
                    break;
                case 44:
                    aVar.V = true;
                    aVar.W = typedArray.getDimension(index, aVar.W);
                    break;
                case 45:
                    aVar.Y = typedArray.getFloat(index, aVar.Y);
                    break;
                case 46:
                    aVar.Z = typedArray.getFloat(index, aVar.Z);
                    break;
                case 47:
                    aVar.aa = typedArray.getFloat(index, aVar.aa);
                    break;
                case 48:
                    aVar.ba = typedArray.getFloat(index, aVar.ba);
                    break;
                case 49:
                    aVar.ca = typedArray.getFloat(index, aVar.ca);
                    break;
                case 50:
                    aVar.da = typedArray.getFloat(index, aVar.da);
                    break;
                case 51:
                    aVar.ea = typedArray.getDimension(index, aVar.ea);
                    break;
                case 52:
                    aVar.fa = typedArray.getDimension(index, aVar.fa);
                    break;
                case 53:
                    aVar.ga = typedArray.getDimension(index, aVar.ga);
                    break;
                default:
                    switch (i3) {
                        case 60:
                            aVar.X = typedArray.getFloat(index, aVar.X);
                            break;
                        case 61:
                            aVar.x = a(typedArray, index, aVar.x);
                            break;
                        case 62:
                            aVar.y = typedArray.getDimensionPixelSize(index, aVar.y);
                            break;
                        case 63:
                            aVar.z = typedArray.getFloat(index, aVar.z);
                            break;
                        case 64:
                            Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f2476b.get(index));
                            break;
                        default:
                            Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f2476b.get(index));
                            break;
                    }
            }
        }
    }
}
