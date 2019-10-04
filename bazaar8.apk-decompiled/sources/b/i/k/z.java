package b.i.k;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import b.i.k.C0258a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ViewCompat */
public class z {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicInteger f2829a = new AtomicInteger(1);

    /* renamed from: b  reason: collision with root package name */
    public static Field f2830b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f2831c;

    /* renamed from: d  reason: collision with root package name */
    public static Field f2832d;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f2833e;

    /* renamed from: f  reason: collision with root package name */
    public static WeakHashMap<View, String> f2834f;

    /* renamed from: g  reason: collision with root package name */
    public static WeakHashMap<View, I> f2835g = null;

    /* renamed from: h  reason: collision with root package name */
    public static Field f2836h;

    /* renamed from: i  reason: collision with root package name */
    public static boolean f2837i = false;

    /* renamed from: j  reason: collision with root package name */
    public static ThreadLocal<Rect> f2838j;

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f2839k = {b.i.d.accessibility_custom_action_0, b.i.d.accessibility_custom_action_1, b.i.d.accessibility_custom_action_2, b.i.d.accessibility_custom_action_3, b.i.d.accessibility_custom_action_4, b.i.d.accessibility_custom_action_5, b.i.d.accessibility_custom_action_6, b.i.d.accessibility_custom_action_7, b.i.d.accessibility_custom_action_8, b.i.d.accessibility_custom_action_9, b.i.d.accessibility_custom_action_10, b.i.d.accessibility_custom_action_11, b.i.d.accessibility_custom_action_12, b.i.d.accessibility_custom_action_13, b.i.d.accessibility_custom_action_14, b.i.d.accessibility_custom_action_15, b.i.d.accessibility_custom_action_16, b.i.d.accessibility_custom_action_17, b.i.d.accessibility_custom_action_18, b.i.d.accessibility_custom_action_19, b.i.d.accessibility_custom_action_20, b.i.d.accessibility_custom_action_21, b.i.d.accessibility_custom_action_22, b.i.d.accessibility_custom_action_23, b.i.d.accessibility_custom_action_24, b.i.d.accessibility_custom_action_25, b.i.d.accessibility_custom_action_26, b.i.d.accessibility_custom_action_27, b.i.d.accessibility_custom_action_28, b.i.d.accessibility_custom_action_29, b.i.d.accessibility_custom_action_30, b.i.d.accessibility_custom_action_31};

    /* renamed from: l  reason: collision with root package name */
    public static a f2840l = new a();

    /* compiled from: ViewCompat */
    static class a implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        public WeakHashMap<View, Boolean> f2841a = new WeakHashMap<>();

        public final void a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    z.c(view, 16);
                }
                this.f2841a.put(view, Boolean.valueOf(z2));
            }
        }

        public void onGlobalLayout() {
            for (Map.Entry next : this.f2841a.entrySet()) {
                a((View) next.getKey(), ((Boolean) next.getValue()).booleanValue());
            }
        }

        public void onViewAttachedToWindow(View view) {
            a(view);
        }

        public void onViewDetachedFromWindow(View view) {
        }

        public final void a(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    /* compiled from: ViewCompat */
    static abstract class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final int f2842a;

        /* renamed from: b  reason: collision with root package name */
        public final Class<T> f2843b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2844c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2845d;

        public b(int i2, Class<T> cls, int i3) {
            this(i2, cls, 0, i3);
        }

        public abstract T a(View view);

        public final boolean a() {
            return Build.VERSION.SDK_INT >= 19;
        }

        public T b(View view) {
            if (b()) {
                return a(view);
            }
            if (a()) {
                T tag = view.getTag(this.f2842a);
                if (this.f2843b.isInstance(tag)) {
                    return tag;
                }
            }
            return null;
        }

        public b(int i2, Class<T> cls, int i3, int i4) {
            this.f2842a = i2;
            this.f2843b = cls;
            this.f2845d = i3;
            this.f2844c = i4;
        }

        public final boolean b() {
            return Build.VERSION.SDK_INT >= this.f2844c;
        }
    }

    /* compiled from: ViewCompat */
    public interface c {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    /* compiled from: ViewCompat */
    static class d {

        /* renamed from: a  reason: collision with root package name */
        public static final ArrayList<WeakReference<View>> f2846a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        public WeakHashMap<View, Boolean> f2847b = null;

        /* renamed from: c  reason: collision with root package name */
        public SparseArray<WeakReference<View>> f2848c = null;

        /* renamed from: d  reason: collision with root package name */
        public WeakReference<KeyEvent> f2849d = null;

        public final SparseArray<WeakReference<View>> a() {
            if (this.f2848c == null) {
                this.f2848c = new SparseArray<>();
            }
            return this.f2848c;
        }

        public final View b(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f2847b;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View b2 = b(viewGroup.getChildAt(childCount), keyEvent);
                        if (b2 != null) {
                            return b2;
                        }
                    }
                }
                if (c(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        public final boolean c(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(b.i.d.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((c) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public static d a(View view) {
            d dVar = (d) view.getTag(b.i.d.tag_unhandled_key_event_manager);
            if (dVar != null) {
                return dVar;
            }
            d dVar2 = new d();
            view.setTag(b.i.d.tag_unhandled_key_event_manager, dVar2);
            return dVar2;
        }

        public boolean a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                b();
            }
            View b2 = b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (b2 != null && !KeyEvent.isModifierKey(keyCode)) {
                    a().put(keyCode, new WeakReference(b2));
                }
            }
            return b2 != null;
        }

        public final void b() {
            WeakHashMap<View, Boolean> weakHashMap = this.f2847b;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (!f2846a.isEmpty()) {
                synchronized (f2846a) {
                    if (this.f2847b == null) {
                        this.f2847b = new WeakHashMap<>();
                    }
                    for (int size = f2846a.size() - 1; size >= 0; size--) {
                        View view = (View) f2846a.get(size).get();
                        if (view == null) {
                            f2846a.remove(size);
                        } else {
                            this.f2847b.put(view, Boolean.TRUE);
                            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                                this.f2847b.put((View) parent, Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }

        public boolean a(KeyEvent keyEvent) {
            WeakReference<KeyEvent> weakReference = this.f2849d;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f2849d = new WeakReference<>(keyEvent);
            WeakReference weakReference2 = null;
            SparseArray<WeakReference<View>> a2 = a();
            if (keyEvent.getAction() == 1) {
                int indexOfKey = a2.indexOfKey(keyEvent.getKeyCode());
                if (indexOfKey >= 0) {
                    weakReference2 = a2.valueAt(indexOfKey);
                    a2.removeAt(indexOfKey);
                }
            }
            if (weakReference2 == null) {
                weakReference2 = a2.get(keyEvent.getKeyCode());
            }
            if (weakReference2 == null) {
                return false;
            }
            View view = (View) weakReference2.get();
            if (view != null && z.A(view)) {
                c(view, keyEvent);
            }
            return true;
        }
    }

    public static boolean A(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    public static boolean B(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    public static boolean C(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof C0268k) {
            return ((C0268k) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean D(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    public static boolean E(View view) {
        Boolean b2 = d().b(view);
        if (b2 == null) {
            return false;
        }
        return b2.booleanValue();
    }

    public static void F(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    public static void G(View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            view.requestApplyInsets();
        } else if (i2 >= 16) {
            view.requestFitSystemWindows();
        }
    }

    public static void H(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof C0268k) {
            ((C0268k) view).stopNestedScroll();
        }
    }

    public static void I(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static void a(View view, b.i.k.a.d dVar) {
        view.onInitializeAccessibilityNodeInfo(dVar.x());
    }

    public static Rect b() {
        if (f2838j == null) {
            f2838j = new ThreadLocal<>();
        }
        Rect rect = f2838j.get();
        if (rect == null) {
            rect = new Rect();
            f2838j.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static int c(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    public static void d(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetLeftAndRight(i2);
        } else if (i3 >= 21) {
            Rect b2 = b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            a(view, i2);
            if (z && b2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b2);
            }
        } else {
            a(view, i2);
        }
    }

    public static ColorStateList e(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        return view instanceof u ? ((u) view).getSupportBackgroundTintList() : null;
    }

    public static void f(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i2);
        }
    }

    public static void g(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 19) {
            view.setImportantForAccessibility(i2);
        } else if (i3 >= 16) {
            if (i2 == 4) {
                i2 = 2;
            }
            view.setImportantForAccessibility(i2);
        }
    }

    public static void h(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i2);
        }
    }

    public static float i(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    public static boolean j(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    public static int k(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    @SuppressLint({"InlinedApi"})
    public static int l(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int m(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static int n(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f2833e) {
            try {
                f2832d = View.class.getDeclaredField("mMinHeight");
                f2832d.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2833e = true;
        }
        Field field = f2832d;
        if (field != null) {
            try {
                return ((Integer) field.get(view)).intValue();
            } catch (Exception unused2) {
            }
        }
        return 0;
    }

    public static int o(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f2831c) {
            try {
                f2830b = View.class.getDeclaredField("mMinWidth");
                f2830b.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2831c = true;
        }
        Field field = f2830b;
        if (field != null) {
            try {
                return ((Integer) field.get(view)).intValue();
            } catch (Exception unused2) {
            }
        }
        return 0;
    }

    public static int p(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getPaddingEnd();
        }
        return view.getPaddingRight();
    }

    public static int q(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getPaddingStart();
        }
        return view.getPaddingLeft();
    }

    public static String r(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f2834f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    @Deprecated
    public static float s(View view) {
        return view.getTranslationY();
    }

    public static int t(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    public static float u(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    public static boolean v(View view) {
        return b(view) != null;
    }

    public static boolean w(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    public static boolean x(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    public static boolean y(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    public static boolean z(View view) {
        Boolean b2 = a().b(view);
        if (b2 == null) {
            return false;
        }
        return b2.booleanValue();
    }

    public static void a(View view, C0258a aVar) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (aVar == null && (b(view) instanceof C0258a.C0033a)) {
            aVar = new C0258a();
        }
        if (aVar == null) {
            accessibilityDelegate = null;
        } else {
            accessibilityDelegate = aVar.a();
        }
        view.setAccessibilityDelegate(accessibilityDelegate);
    }

    public static b<CharSequence> c() {
        return new x(b.i.d.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    public static PorterDuff.Mode f(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        return view instanceof u ? ((u) view).getSupportBackgroundTintMode() : null;
    }

    public static Display h(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (A(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static void i(View view, int i2) {
        if (view instanceof C0266i) {
            ((C0266i) view).a(i2);
        } else if (i2 == 0) {
            H(view);
        }
    }

    public static void c(View view, int i2) {
        if (((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            boolean z = d(view) != null;
            if (c(view) != 0 || (z && view.getVisibility() == 0)) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z ? 32 : 2048);
                obtain.setContentChangeTypes(i2);
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (view.getParent() != null) {
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i2);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e2);
                }
            }
        }
    }

    public static Rect g(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    public static void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    public static void e(View view, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            view.offsetTopAndBottom(i2);
        } else if (i3 >= 21) {
            Rect b2 = b();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                b2.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !b2.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            b(view, i2);
            if (z && b2.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(b2);
            }
        } else {
            b(view, i2);
        }
    }

    public static View.AccessibilityDelegate b(View view) {
        if (f2837i) {
            return null;
        }
        if (f2836h == null) {
            try {
                f2836h = View.class.getDeclaredField("mAccessibilityDelegate");
                f2836h.setAccessible(true);
            } catch (Throwable unused) {
                f2837i = true;
                return null;
            }
        }
        try {
            Object obj = f2836h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f2837i = true;
            return null;
        }
    }

    public static void a(View view, Runnable runnable, long j2) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j2);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j2);
        }
    }

    public static boolean a(View view, int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i2, bundle);
        }
        return false;
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i2, i3, i4, i5);
        } else {
            view.setPadding(i2, i3, i4, i5);
        }
    }

    public static I a(View view) {
        if (f2835g == null) {
            f2835g = new WeakHashMap<>();
        }
        I i2 = f2835g.get(view);
        if (i2 != null) {
            return i2;
        }
        I i3 = new I(view);
        f2835g.put(view, i3);
        return i3;
    }

    public static void b(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    public static b<Boolean> d() {
        return new w(b.i.d.tag_screen_reader_focusable, Boolean.class, 28);
    }

    public static CharSequence d(View view) {
        return c().b(view);
    }

    @Deprecated
    public static void b(View view, float f2) {
        view.setTranslationY(f2);
    }

    public static M b(View view, M m) {
        if (Build.VERSION.SDK_INT < 21) {
            return m;
        }
        WindowInsets windowInsets = (WindowInsets) M.a(m);
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (!onApplyWindowInsets.equals(windowInsets)) {
            windowInsets = new WindowInsets(onApplyWindowInsets);
        }
        return M.a((Object) windowInsets);
    }

    public static void a(View view, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static void a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f2834f == null) {
            f2834f = new WeakHashMap<>();
        }
        f2834f.put(view, str);
    }

    public static void b(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            I(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                I((View) parent);
            }
        }
    }

    @Deprecated
    public static void a(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    public static void a(View view, q qVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (qVar == null) {
                view.setOnApplyWindowInsetsListener(null);
                return;
            }
            view.setOnApplyWindowInsetsListener(new v(qVar));
        }
    }

    public static M a(View view, M m) {
        if (Build.VERSION.SDK_INT < 21) {
            return m;
        }
        WindowInsets windowInsets = (WindowInsets) M.a(m);
        WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (!dispatchApplyWindowInsets.equals(windowInsets)) {
            windowInsets = new WindowInsets(dispatchApplyWindowInsets);
        }
        return M.a((Object) windowInsets);
    }

    public static boolean b(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return d.a(view).a(keyEvent);
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        } else if (view instanceof u) {
            ((u) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    public static void a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setBackgroundTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable background = view.getBackground();
                boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
                if (background != null && z) {
                    if (background.isStateful()) {
                        background.setState(view.getDrawableState());
                    }
                    view.setBackground(background);
                }
            }
        } else if (view instanceof u) {
            ((u) view).setSupportBackgroundTintMode(mode);
        }
    }

    public static void a(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            I(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                I((View) parent);
            }
        }
    }

    public static void a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    public static void a(View view, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i2, i3);
        }
    }

    public static void a(View view, s sVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (sVar != null ? sVar.a() : null));
        }
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return d.a(view).a(view, keyEvent);
    }

    public static b<Boolean> a() {
        return new y(b.i.d.tag_accessibility_heading, Boolean.class, 28);
    }
}
