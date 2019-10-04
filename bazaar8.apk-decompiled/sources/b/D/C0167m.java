package b.D;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import b.D.E;
import b.i.k.z;
import java.util.Map;

/* renamed from: b.D.m  reason: case insensitive filesystem */
/* compiled from: ChangeBounds */
public class C0167m extends E {
    public static final String[] K = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property<Drawable, PointF> L = new C0158d(PointF.class, "boundsOrigin");
    public static final Property<a, PointF> M = new C0159e(PointF.class, "topLeft");
    public static final Property<a, PointF> N = new C0160f(PointF.class, "bottomRight");
    public static final Property<View, PointF> O = new C0161g(PointF.class, "bottomRight");
    public static final Property<View, PointF> P = new C0162h(PointF.class, "topLeft");
    public static final Property<View, PointF> Q = new C0163i(PointF.class, "position");
    public static C0179z R = new C0179z();
    public int[] S = new int[2];
    public boolean T = false;
    public boolean U = false;

    /* renamed from: b.D.m$a */
    /* compiled from: ChangeBounds */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f1181a;

        /* renamed from: b  reason: collision with root package name */
        public int f1182b;

        /* renamed from: c  reason: collision with root package name */
        public int f1183c;

        /* renamed from: d  reason: collision with root package name */
        public int f1184d;

        /* renamed from: e  reason: collision with root package name */
        public View f1185e;

        /* renamed from: f  reason: collision with root package name */
        public int f1186f;

        /* renamed from: g  reason: collision with root package name */
        public int f1187g;

        public a(View view) {
            this.f1185e = view;
        }

        public void a(PointF pointF) {
            this.f1183c = Math.round(pointF.x);
            this.f1184d = Math.round(pointF.y);
            this.f1187g++;
            if (this.f1186f == this.f1187g) {
                a();
            }
        }

        public void b(PointF pointF) {
            this.f1181a = Math.round(pointF.x);
            this.f1182b = Math.round(pointF.y);
            this.f1186f++;
            if (this.f1186f == this.f1187g) {
                a();
            }
        }

        public final void a() {
            ba.a(this.f1185e, this.f1181a, this.f1182b, this.f1183c, this.f1184d);
            this.f1186f = 0;
            this.f1187g = 0;
        }
    }

    public void a(M m) {
        d(m);
    }

    public void c(M m) {
        d(m);
    }

    public final void d(M m) {
        View view = m.f1109b;
        if (z.B(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            m.f1108a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            m.f1108a.put("android:changeBounds:parent", m.f1109b.getParent());
            if (this.U) {
                m.f1109b.getLocationInWindow(this.S);
                m.f1108a.put("android:changeBounds:windowX", Integer.valueOf(this.S[0]));
                m.f1108a.put("android:changeBounds:windowY", Integer.valueOf(this.S[1]));
            }
            if (this.T) {
                m.f1108a.put("android:changeBounds:clip", z.g(view));
            }
        }
    }

    public String[] r() {
        return K;
    }

    public final boolean a(View view, View view2) {
        if (!this.U) {
            return true;
        }
        M b2 = b(view, true);
        if (b2 == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == b2.f1109b) {
            return true;
        }
        return false;
    }

    public Animator a(ViewGroup viewGroup, M m, M m2) {
        int i2;
        View view;
        Animator animator;
        ObjectAnimator objectAnimator;
        int i3;
        Rect rect;
        ObjectAnimator objectAnimator2;
        M m3 = m;
        M m4 = m2;
        if (m3 == null || m4 == null) {
            return null;
        }
        Map<String, Object> map = m3.f1108a;
        Map<String, Object> map2 = m4.f1108a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view2 = m4.f1109b;
        if (a(viewGroup2, viewGroup3)) {
            Rect rect2 = (Rect) m3.f1108a.get("android:changeBounds:bounds");
            Rect rect3 = (Rect) m4.f1108a.get("android:changeBounds:bounds");
            int i4 = rect2.left;
            int i5 = rect3.left;
            int i6 = rect2.top;
            int i7 = rect3.top;
            int i8 = rect2.right;
            int i9 = rect3.right;
            int i10 = rect2.bottom;
            int i11 = rect3.bottom;
            int i12 = i8 - i4;
            int i13 = i10 - i6;
            int i14 = i9 - i5;
            int i15 = i11 - i7;
            View view3 = view2;
            Rect rect4 = (Rect) m3.f1108a.get("android:changeBounds:clip");
            Rect rect5 = (Rect) m4.f1108a.get("android:changeBounds:clip");
            if ((i12 == 0 || i13 == 0) && (i14 == 0 || i15 == 0)) {
                i2 = 0;
            } else {
                i2 = (i4 == i5 && i6 == i7) ? 0 : 1;
                if (!(i8 == i9 && i10 == i11)) {
                    i2++;
                }
            }
            if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                i2++;
            }
            if (i2 > 0) {
                Rect rect6 = rect5;
                Rect rect7 = rect4;
                if (!this.T) {
                    view = view3;
                    ba.a(view, i4, i6, i8, i10);
                    if (i2 == 2) {
                        if (i12 == i14 && i13 == i15) {
                            animator = C0174u.a(view, Q, f().a((float) i4, (float) i6, (float) i5, (float) i7));
                        } else {
                            a aVar = new a(view);
                            ObjectAnimator a2 = C0174u.a(aVar, M, f().a((float) i4, (float) i6, (float) i5, (float) i7));
                            ObjectAnimator a3 = C0174u.a(aVar, N, f().a((float) i8, (float) i10, (float) i9, (float) i11));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(new Animator[]{a2, a3});
                            animatorSet.addListener(new C0164j(this, aVar));
                            animator = animatorSet;
                        }
                    } else if (i4 == i5 && i6 == i7) {
                        animator = C0174u.a(view, O, f().a((float) i8, (float) i10, (float) i9, (float) i11));
                    } else {
                        animator = C0174u.a(view, P, f().a((float) i4, (float) i6, (float) i5, (float) i7));
                    }
                } else {
                    view = view3;
                    ba.a(view, i4, i6, Math.max(i12, i14) + i4, Math.max(i13, i15) + i6);
                    if (i4 == i5 && i6 == i7) {
                        objectAnimator = null;
                    } else {
                        objectAnimator = C0174u.a(view, Q, f().a((float) i4, (float) i6, (float) i5, (float) i7));
                    }
                    if (rect7 == null) {
                        i3 = 0;
                        rect = new Rect(0, 0, i12, i13);
                    } else {
                        i3 = 0;
                        rect = rect7;
                    }
                    Rect rect8 = rect6 == null ? new Rect(i3, i3, i14, i15) : rect6;
                    if (!rect.equals(rect8)) {
                        z.a(view, rect);
                        C0179z zVar = R;
                        Object[] objArr = new Object[2];
                        objArr[i3] = rect;
                        objArr[1] = rect8;
                        objectAnimator2 = ObjectAnimator.ofObject(view, "clipBounds", zVar, objArr);
                        C0165k kVar = new C0165k(this, view, rect6, i5, i7, i9, i11);
                        objectAnimator2.addListener(kVar);
                    } else {
                        objectAnimator2 = null;
                    }
                    animator = L.a(objectAnimator, objectAnimator2);
                }
                if (view.getParent() instanceof ViewGroup) {
                    ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                    S.a(viewGroup4, true);
                    a((E.c) new C0166l(this, viewGroup4));
                }
                return animator;
            }
        } else {
            int intValue = ((Integer) m3.f1108a.get("android:changeBounds:windowX")).intValue();
            int intValue2 = ((Integer) m3.f1108a.get("android:changeBounds:windowY")).intValue();
            int intValue3 = ((Integer) m4.f1108a.get("android:changeBounds:windowX")).intValue();
            int intValue4 = ((Integer) m4.f1108a.get("android:changeBounds:windowY")).intValue();
            if (!(intValue == intValue3 && intValue2 == intValue4)) {
                viewGroup.getLocationInWindow(this.S);
                Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
                view2.draw(new Canvas(createBitmap));
                BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
                float c2 = ba.c(view2);
                ba.a(view2, 0.0f);
                ba.b(viewGroup).a(bitmapDrawable);
                C0175v f2 = f();
                int[] iArr = this.S;
                ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, new PropertyValuesHolder[]{C0177x.a(L, f2.a((float) (intValue - iArr[0]), (float) (intValue2 - iArr[1]), (float) (intValue3 - iArr[0]), (float) (intValue4 - iArr[1])))});
                C0157c cVar = new C0157c(this, viewGroup, bitmapDrawable, view2, c2);
                ofPropertyValuesHolder.addListener(cVar);
                return ofPropertyValuesHolder;
            }
        }
        return null;
    }
}
