package c.b.a.g.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import c.b.a.g.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
/* compiled from: ViewTarget */
public abstract class i<T extends View, Z> extends a<Z> {

    /* renamed from: b  reason: collision with root package name */
    public static boolean f4367b;

    /* renamed from: c  reason: collision with root package name */
    public static Integer f4368c;

    /* renamed from: d  reason: collision with root package name */
    public final T f4369d;

    /* renamed from: e  reason: collision with root package name */
    public final a f4370e;

    /* renamed from: f  reason: collision with root package name */
    public View.OnAttachStateChangeListener f4371f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4372g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4373h;

    /* compiled from: ViewTarget */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static Integer f4374a;

        /* renamed from: b  reason: collision with root package name */
        public final View f4375b;

        /* renamed from: c  reason: collision with root package name */
        public final List<g> f4376c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        public boolean f4377d;

        /* renamed from: e  reason: collision with root package name */
        public C0063a f4378e;

        /* renamed from: c.b.a.g.a.i$a$a  reason: collision with other inner class name */
        /* compiled from: ViewTarget */
        private static final class C0063a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            public final WeakReference<a> f4379a;

            public C0063a(a aVar) {
                this.f4379a = new WeakReference<>(aVar);
            }

            public boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                a aVar = (a) this.f4379a.get();
                if (aVar != null) {
                    aVar.a();
                }
                return true;
            }
        }

        public a(View view) {
            this.f4375b = view;
        }

        public static int a(Context context) {
            if (f4374a == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                c.b.a.i.i.a(windowManager);
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f4374a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f4374a.intValue();
        }

        public final boolean a(int i2) {
            return i2 > 0 || i2 == Integer.MIN_VALUE;
        }

        public final void b(int i2, int i3) {
            Iterator it = new ArrayList(this.f4376c).iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(i2, i3);
            }
        }

        public final int c() {
            int paddingTop = this.f4375b.getPaddingTop() + this.f4375b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f4375b.getLayoutParams();
            return a(this.f4375b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        public final int d() {
            int paddingLeft = this.f4375b.getPaddingLeft() + this.f4375b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f4375b.getLayoutParams();
            return a(this.f4375b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        public void b(g gVar) {
            this.f4376c.remove(gVar);
        }

        public void b() {
            ViewTreeObserver viewTreeObserver = this.f4375b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f4378e);
            }
            this.f4378e = null;
            this.f4376c.clear();
        }

        public void a() {
            if (!this.f4376c.isEmpty()) {
                int d2 = d();
                int c2 = c();
                if (a(d2, c2)) {
                    b(d2, c2);
                    b();
                }
            }
        }

        public void a(g gVar) {
            int d2 = d();
            int c2 = c();
            if (a(d2, c2)) {
                gVar.a(d2, c2);
                return;
            }
            if (!this.f4376c.contains(gVar)) {
                this.f4376c.add(gVar);
            }
            if (this.f4378e == null) {
                ViewTreeObserver viewTreeObserver = this.f4375b.getViewTreeObserver();
                this.f4378e = new C0063a(this);
                viewTreeObserver.addOnPreDrawListener(this.f4378e);
            }
        }

        public final boolean a(int i2, int i3) {
            return a(i2) && a(i3);
        }

        public final int a(int i2, int i3, int i4) {
            int i5 = i3 - i4;
            if (i5 > 0) {
                return i5;
            }
            if (this.f4377d && this.f4375b.isLayoutRequested()) {
                return 0;
            }
            int i6 = i2 - i4;
            if (i6 > 0) {
                return i6;
            }
            if (this.f4375b.isLayoutRequested() || i3 != -2) {
                return 0;
            }
            if (Log.isLoggable("ViewTarget", 4)) {
                Log.i("ViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
            }
            return a(this.f4375b.getContext());
        }
    }

    public i(T t) {
        c.b.a.i.i.a(t);
        this.f4369d = (View) t;
        this.f4370e = new a(t);
    }

    public void a(g gVar) {
        this.f4370e.b(gVar);
    }

    public void b(Drawable drawable) {
        super.b(drawable);
        d();
    }

    public void c(Drawable drawable) {
        super.c(drawable);
        this.f4370e.b();
        if (!this.f4372g) {
            e();
        }
    }

    public final void d() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f4371f;
        if (onAttachStateChangeListener != null && !this.f4373h) {
            this.f4369d.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f4373h = true;
        }
    }

    public final void e() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f4371f;
        if (onAttachStateChangeListener != null && this.f4373h) {
            this.f4369d.removeOnAttachStateChangeListener(onAttachStateChangeListener);
            this.f4373h = false;
        }
    }

    public c getRequest() {
        Object c2 = c();
        if (c2 == null) {
            return null;
        }
        if (c2 instanceof c) {
            return (c) c2;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    public String toString() {
        return "Target for: " + this.f4369d;
    }

    public void a(c cVar) {
        a((Object) cVar);
    }

    public final void a(Object obj) {
        Integer num = f4368c;
        if (num == null) {
            f4367b = true;
            this.f4369d.setTag(obj);
            return;
        }
        this.f4369d.setTag(num.intValue(), obj);
    }

    public void b(g gVar) {
        this.f4370e.a(gVar);
    }

    public final Object c() {
        Integer num = f4368c;
        if (num == null) {
            return this.f4369d.getTag();
        }
        return this.f4369d.getTag(num.intValue());
    }
}
