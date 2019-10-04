package com.bumptech.glide.e.a;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.bumptech.glide.e.d;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
public abstract class j<T extends View, Z> extends a<Z> {
    private static boolean c;
    private static Integer d;

    /* renamed from: a  reason: collision with root package name */
    protected final T f2026a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2027b;
    private final a e;
    private View.OnAttachStateChangeListener f;
    private boolean g;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        static Integer f2029a;

        /* renamed from: b  reason: collision with root package name */
        final View f2030b;
        final List<h> c = new ArrayList();
        boolean d;
        C0035a e;

        /* renamed from: com.bumptech.glide.e.a.j$a$a  reason: collision with other inner class name */
        static final class C0035a implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: a  reason: collision with root package name */
            private final WeakReference<a> f2031a;

            C0035a(a aVar) {
                this.f2031a = new WeakReference<>(aVar);
            }

            public final boolean onPreDraw() {
                if (Log.isLoggable("ViewTarget", 2)) {
                    new StringBuilder("OnGlobalLayoutListener called attachStateListener=").append(this);
                }
                a aVar = (a) this.f2031a.get();
                if (aVar != null) {
                    aVar.a();
                }
                return true;
            }
        }

        private static boolean a(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        a(View view) {
            this.f2030b = view;
        }

        private static int a(Context context) {
            if (f2029a == null) {
                Display defaultDisplay = ((WindowManager) com.bumptech.glide.g.j.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f2029a = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f2029a.intValue();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            if (!this.c.isEmpty()) {
                int d2 = d();
                int c2 = c();
                if (a(d2, c2)) {
                    Iterator it = new ArrayList(this.c).iterator();
                    while (it.hasNext()) {
                        ((h) it.next()).onSizeReady(d2, c2);
                    }
                    b();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            ViewTreeObserver viewTreeObserver = this.f2030b.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.e);
            }
            this.e = null;
            this.c.clear();
        }

        static boolean a(int i, int i2) {
            return a(i) && a(i2);
        }

        /* access modifiers changed from: package-private */
        public final int c() {
            int paddingTop = this.f2030b.getPaddingTop() + this.f2030b.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f2030b.getLayoutParams();
            return a(this.f2030b.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        /* access modifiers changed from: package-private */
        public final int d() {
            int paddingLeft = this.f2030b.getPaddingLeft() + this.f2030b.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f2030b.getLayoutParams();
            return a(this.f2030b.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        private int a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.d && this.f2030b.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f2030b.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            return a(this.f2030b.getContext());
        }
    }

    public j(T t) {
        this.f2026a = (View) com.bumptech.glide.g.j.checkNotNull(t);
        this.e = new a(t);
    }

    @Deprecated
    public j(T t, boolean z) {
        this(t);
        if (z) {
            waitForLayout();
        }
    }

    public final j<T, Z> clearOnDetach() {
        if (this.f != null) {
            return this;
        }
        this.f = new View.OnAttachStateChangeListener() {
            public final void onViewAttachedToWindow(View view) {
                d request = j.this.getRequest();
                if (request != null && request.isCleared()) {
                    request.begin();
                }
            }

            public final void onViewDetachedFromWindow(View view) {
                j jVar = j.this;
                d request = jVar.getRequest();
                if (request != null) {
                    jVar.f2027b = true;
                    request.clear();
                    jVar.f2027b = false;
                }
            }
        };
        a();
        return this;
    }

    public final j<T, Z> waitForLayout() {
        this.e.d = true;
        return this;
    }

    public void onLoadStarted(Drawable drawable) {
        super.onLoadStarted(drawable);
        a();
    }

    private void a() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f;
        if (onAttachStateChangeListener != null && !this.g) {
            this.f2026a.addOnAttachStateChangeListener(onAttachStateChangeListener);
            this.g = true;
        }
    }

    public T getView() {
        return this.f2026a;
    }

    public void getSize(h hVar) {
        a aVar = this.e;
        int d2 = aVar.d();
        int c2 = aVar.c();
        if (a.a(d2, c2)) {
            hVar.onSizeReady(d2, c2);
            return;
        }
        if (!aVar.c.contains(hVar)) {
            aVar.c.add(hVar);
        }
        if (aVar.e == null) {
            ViewTreeObserver viewTreeObserver = aVar.f2030b.getViewTreeObserver();
            aVar.e = new a.C0035a(aVar);
            viewTreeObserver.addOnPreDrawListener(aVar.e);
        }
    }

    public void removeCallback(h hVar) {
        this.e.c.remove(hVar);
    }

    public void onLoadCleared(Drawable drawable) {
        super.onLoadCleared(drawable);
        this.e.b();
        if (!this.f2027b) {
            View.OnAttachStateChangeListener onAttachStateChangeListener = this.f;
            if (onAttachStateChangeListener != null && this.g) {
                this.f2026a.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                this.g = false;
            }
        }
    }

    public String toString() {
        return "Target for: " + this.f2026a;
    }

    public static void setTagId(int i) {
        if (d != null || c) {
            throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
        }
        d = Integer.valueOf(i);
    }

    public void setRequest(d dVar) {
        Integer num = d;
        if (num == null) {
            c = true;
            this.f2026a.setTag(dVar);
            return;
        }
        this.f2026a.setTag(num.intValue(), dVar);
    }

    public d getRequest() {
        Object obj;
        Integer num = d;
        if (num == null) {
            obj = this.f2026a.getTag();
        } else {
            obj = this.f2026a.getTag(num.intValue());
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof d) {
            return (d) obj;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }
}
