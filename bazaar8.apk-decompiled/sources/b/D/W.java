package b.D;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import b.i.k.z;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* compiled from: ViewOverlayApi14 */
public class W implements Y {

    /* renamed from: a  reason: collision with root package name */
    public a f1123a;

    /* compiled from: ViewOverlayApi14 */
    static class a extends ViewGroup {

        /* renamed from: a  reason: collision with root package name */
        public static Method f1124a;

        /* renamed from: b  reason: collision with root package name */
        public ViewGroup f1125b;

        /* renamed from: c  reason: collision with root package name */
        public View f1126c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<Drawable> f1127d = null;

        /* renamed from: e  reason: collision with root package name */
        public W f1128e;

        static {
            Class<ViewGroup> cls = ViewGroup.class;
            try {
                f1124a = cls.getDeclaredMethod("invalidateChildInParentFast", new Class[]{Integer.TYPE, Integer.TYPE, Rect.class});
            } catch (NoSuchMethodException unused) {
            }
        }

        public a(Context context, ViewGroup viewGroup, View view, W w) {
            super(context);
            this.f1125b = viewGroup;
            this.f1126c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f1128e = w;
        }

        public void a(Drawable drawable) {
            if (this.f1127d == null) {
                this.f1127d = new ArrayList<>();
            }
            if (!this.f1127d.contains(drawable)) {
                this.f1127d.add(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(this);
            }
        }

        public void b(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f1127d;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
            }
        }

        public void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f1125b.getLocationOnScreen(iArr);
            this.f1126c.getLocationOnScreen(iArr2);
            canvas.translate((float) (iArr2[0] - iArr[0]), (float) (iArr2[1] - iArr[1]));
            canvas.clipRect(new Rect(0, 0, this.f1126c.getWidth(), this.f1126c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f1127d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f1127d.get(i2).draw(canvas);
            }
        }

        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f1125b != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f1125b instanceof ViewGroup) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    a(iArr2);
                    rect.offset(iArr2[0], iArr2[1]);
                    return super.invalidateChildInParent(iArr, rect);
                }
                invalidate(rect);
            }
            return null;
        }

        public void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        }

        public boolean verifyDrawable(Drawable drawable) {
            if (!super.verifyDrawable(drawable)) {
                ArrayList<Drawable> arrayList = this.f1127d;
                if (arrayList == null || !arrayList.contains(drawable)) {
                    return false;
                }
            }
            return true;
        }

        public void b(View view) {
            super.removeView(view);
            if (a()) {
                this.f1125b.removeView(this);
            }
        }

        public void a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (!(viewGroup == this.f1125b || viewGroup.getParent() == null || !z.A(viewGroup))) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f1125b.getLocationOnScreen(iArr2);
                    z.d(view, iArr[0] - iArr2[0]);
                    z.e(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        public boolean a() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f1127d;
                if (arrayList == null || arrayList.size() == 0) {
                    return true;
                }
            }
            return false;
        }

        public final void a(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f1125b.getLocationOnScreen(iArr2);
            this.f1126c.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }
    }

    public W(Context context, ViewGroup viewGroup, View view) {
        this.f1123a = new a(context, viewGroup, view, this);
    }

    public static W c(View view) {
        ViewGroup d2 = d(view);
        if (d2 == null) {
            return null;
        }
        int childCount = d2.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = d2.getChildAt(i2);
            if (childAt instanceof a) {
                return ((a) childAt).f1128e;
            }
        }
        return new O(d2.getContext(), d2, view);
    }

    public static ViewGroup d(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    public void a(Drawable drawable) {
        this.f1123a.a(drawable);
    }

    public void b(Drawable drawable) {
        this.f1123a.b(drawable);
    }
}
