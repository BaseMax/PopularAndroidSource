package b.i.k.a;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import b.i.k.a.g;
import com.crashlytics.android.core.CodedOutputStream;
import com.crashlytics.android.core.LogFileManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AccessibilityNodeInfoCompat */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static int f2787a;

    /* renamed from: b  reason: collision with root package name */
    public final AccessibilityNodeInfo f2788b;

    /* renamed from: c  reason: collision with root package name */
    public int f2789c = -1;

    /* compiled from: AccessibilityNodeInfoCompat */
    public static class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;

        /* renamed from: a  reason: collision with root package name */
        public static final a f2790a = new a(1, null);

        /* renamed from: b  reason: collision with root package name */
        public static final a f2791b = new a(2, null);

        /* renamed from: c  reason: collision with root package name */
        public static final a f2792c = new a(4, null);

        /* renamed from: d  reason: collision with root package name */
        public static final a f2793d = new a(8, null);

        /* renamed from: e  reason: collision with root package name */
        public static final a f2794e = new a(16, null);

        /* renamed from: f  reason: collision with root package name */
        public static final a f2795f = new a(32, null);

        /* renamed from: g  reason: collision with root package name */
        public static final a f2796g = new a(64, null);

        /* renamed from: h  reason: collision with root package name */
        public static final a f2797h = new a(128, null);

        /* renamed from: i  reason: collision with root package name */
        public static final a f2798i = new a(256, null, g.b.class);

        /* renamed from: j  reason: collision with root package name */
        public static final a f2799j = new a(512, null, g.b.class);

        /* renamed from: k  reason: collision with root package name */
        public static final a f2800k = new a(1024, null, g.c.class);

        /* renamed from: l  reason: collision with root package name */
        public static final a f2801l = new a(2048, null, g.c.class);
        public static final a m = new a(CodedOutputStream.DEFAULT_BUFFER_SIZE, null);
        public static final a n = new a(8192, null);
        public static final a o = new a(16384, null);
        public static final a p = new a(32768, null);
        public static final a q = new a(LogFileManager.MAX_LOG_SIZE, null);
        public static final a r = new a(131072, null, g.C0034g.class);
        public static final a s = new a(262144, null);
        public static final a t = new a(524288, null);
        public static final a u = new a(1048576, null);
        public static final a v = new a(2097152, null, g.h.class);
        public static final a w;
        public static final a x;
        public static final a y;
        public static final a z;
        public final Object H;
        public final int I;
        public final CharSequence J;
        public final Class<? extends g.a> K;
        public final g L;

        static {
            AccessibilityNodeInfo.AccessibilityAction accessibilityAction = null;
            a aVar = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, 16908342, null, null, null);
            w = aVar;
            a aVar2 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, 16908343, null, null, g.e.class);
            x = aVar2;
            a aVar3 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, 16908344, null, null, null);
            y = aVar3;
            a aVar4 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, 16908345, null, null, null);
            z = aVar4;
            a aVar5 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, 16908346, null, null, null);
            A = aVar5;
            a aVar6 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, 16908347, null, null, null);
            B = aVar6;
            a aVar7 = new a(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, 16908348, null, null, null);
            C = aVar7;
            a aVar8 = new a(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, 16908349, null, null, g.f.class);
            D = aVar8;
            a aVar9 = new a(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, 16908354, null, null, g.d.class);
            E = aVar9;
            a aVar10 = new a(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, 16908356, null, null, null);
            F = aVar10;
            if (Build.VERSION.SDK_INT >= 28) {
                accessibilityAction = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            }
            a aVar11 = new a(accessibilityAction, 16908357, null, null, null);
            G = aVar11;
        }

        public a(int i2, CharSequence charSequence) {
            this(null, i2, charSequence, null, null);
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.H).getId();
            }
            return 0;
        }

        public a(int i2, CharSequence charSequence, Class<? extends g.a> cls) {
            this(null, i2, charSequence, null, cls);
        }

        public a(Object obj, int i2, CharSequence charSequence, g gVar, Class<? extends g.a> cls) {
            this.I = i2;
            this.J = charSequence;
            this.L = gVar;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.H = obj;
            } else {
                this.H = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
            }
            this.K = cls;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0025  */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0028  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(android.view.View r5, android.os.Bundle r6) {
            /*
                r4 = this;
                b.i.k.a.g r0 = r4.L
                r1 = 0
                if (r0 == 0) goto L_0x0049
                r0 = 0
                java.lang.Class<? extends b.i.k.a.g$a> r2 = r4.K
                if (r2 == 0) goto L_0x0042
                java.lang.Class[] r3 = new java.lang.Class[r1]     // Catch:{ Exception -> 0x0020 }
                java.lang.reflect.Constructor r2 = r2.getDeclaredConstructor(r3)     // Catch:{ Exception -> 0x0020 }
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ Exception -> 0x0020 }
                java.lang.Object r1 = r2.newInstance(r1)     // Catch:{ Exception -> 0x0020 }
                b.i.k.a.g$a r1 = (b.i.k.a.g.a) r1     // Catch:{ Exception -> 0x0020 }
                r1.a(r6)     // Catch:{ Exception -> 0x001d }
                r0 = r1
                goto L_0x0042
            L_0x001d:
                r6 = move-exception
                r0 = r1
                goto L_0x0021
            L_0x0020:
                r6 = move-exception
            L_0x0021:
                java.lang.Class<? extends b.i.k.a.g$a> r1 = r4.K
                if (r1 != 0) goto L_0x0028
                java.lang.String r1 = "null"
                goto L_0x002c
            L_0x0028:
                java.lang.String r1 = r1.getName()
            L_0x002c:
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "Failed to execute command with argument class ViewCommandArgument: "
                r2.append(r3)
                r2.append(r1)
                java.lang.String r1 = r2.toString()
                java.lang.String r2 = "A11yActionCompat"
                android.util.Log.e(r2, r1, r6)
            L_0x0042:
                b.i.k.a.g r6 = r4.L
                boolean r5 = r6.a(r5, r0)
                return r5
            L_0x0049:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: b.i.k.a.d.a.a(android.view.View, android.os.Bundle):boolean");
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Object f2802a;

        public b(Object obj) {
            this.f2802a = obj;
        }

        public static b a(int i2, int i3, boolean z, int i4) {
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 21) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i3, z, i4));
            }
            if (i5 >= 19) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i2, i3, z));
            }
            return new b(null);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public final Object f2803a;

        public c(Object obj) {
            this.f2803a = obj;
        }

        public static c a(int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 21) {
                return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, z, z2));
            }
            if (i6 >= 19) {
                return new c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, i3, i4, i5, z));
            }
            return new c(null);
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f2803a).getColumnSpan();
            }
            return 0;
        }

        public int c() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f2803a).getRowIndex();
            }
            return 0;
        }

        public int d() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f2803a).getRowSpan();
            }
            return 0;
        }

        public boolean e() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f2803a).isSelected();
            }
            return false;
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f2803a).getColumnIndex();
            }
            return 0;
        }
    }

    public d(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f2788b = accessibilityNodeInfo;
    }

    public static d a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new d(accessibilityNodeInfo);
    }

    public static String b(int i2) {
        if (i2 == 1) {
            return "ACTION_FOCUS";
        }
        if (i2 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i2) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case CodedOutputStream.DEFAULT_BUFFER_SIZE /*4096*/:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case LogFileManager.MAX_LOG_SIZE /*65536*/:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }

    public static d c(View view) {
        return a(AccessibilityNodeInfo.obtain(view));
    }

    public static d v() {
        return a(AccessibilityNodeInfo.obtain());
    }

    public int b() {
        return this.f2788b.getActions();
    }

    public void d(Rect rect) {
        this.f2788b.setBoundsInScreen(rect);
    }

    public void e(View view) {
        this.f2788b.setParent(view);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2788b;
        if (accessibilityNodeInfo == null) {
            if (dVar.f2788b != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(dVar.f2788b)) {
            return false;
        }
        return true;
    }

    public void f(boolean z) {
        this.f2788b.setEnabled(z);
    }

    public void g(boolean z) {
        this.f2788b.setFocusable(z);
    }

    public void h(boolean z) {
        this.f2788b.setFocused(z);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f2788b;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public CharSequence i() {
        if (!k()) {
            return this.f2788b.getText();
        }
        List<Integer> a2 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        List<Integer> a3 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        List<Integer> a4 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        List<Integer> a5 = a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.f2788b.getText(), 0, this.f2788b.getText().length()));
        for (int i2 = 0; i2 < a2.size(); i2++) {
            spannableString.setSpan(new a(a5.get(i2).intValue(), this, g().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), a2.get(i2).intValue(), a3.get(i2).intValue(), a4.get(i2).intValue());
        }
        return spannableString;
    }

    public String j() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f2788b.getViewIdResourceName();
        }
        return null;
    }

    public void k(boolean z) {
        this.f2788b.setScrollable(z);
    }

    public boolean l() {
        return this.f2788b.isCheckable();
    }

    public boolean m() {
        return this.f2788b.isChecked();
    }

    public boolean n() {
        return this.f2788b.isClickable();
    }

    public boolean o() {
        return this.f2788b.isEnabled();
    }

    public boolean p() {
        return this.f2788b.isFocusable();
    }

    public boolean q() {
        return this.f2788b.isFocused();
    }

    public boolean r() {
        return this.f2788b.isLongClickable();
    }

    public boolean s() {
        return this.f2788b.isPassword();
    }

    public boolean t() {
        return this.f2788b.isScrollable();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        b(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(h());
        sb.append("; className: ");
        sb.append(d());
        sb.append("; text: ");
        sb.append(i());
        sb.append("; contentDescription: ");
        sb.append(f());
        sb.append("; viewId: ");
        sb.append(j());
        sb.append("; checkable: ");
        sb.append(l());
        sb.append("; checked: ");
        sb.append(m());
        sb.append("; focusable: ");
        sb.append(p());
        sb.append("; focused: ");
        sb.append(q());
        sb.append("; selected: ");
        sb.append(u());
        sb.append("; clickable: ");
        sb.append(n());
        sb.append("; longClickable: ");
        sb.append(r());
        sb.append("; enabled: ");
        sb.append(o());
        sb.append("; password: ");
        sb.append(s());
        sb.append("; scrollable: " + t());
        sb.append("; [");
        int b2 = b();
        while (b2 != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(b2);
            b2 &= numberOfTrailingZeros ^ -1;
            sb.append(b(numberOfTrailingZeros));
            if (b2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public boolean u() {
        return this.f2788b.isSelected();
    }

    public void w() {
        this.f2788b.recycle();
    }

    public AccessibilityNodeInfo x() {
        return this.f2788b;
    }

    public static d a(d dVar) {
        return a(AccessibilityNodeInfo.obtain(dVar.f2788b));
    }

    public void b(View view, int i2) {
        this.f2789c = i2;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2788b.setParent(view, i2);
        }
    }

    public void c(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2788b.setSource(view, i2);
        }
    }

    public CharSequence d() {
        return this.f2788b.getClassName();
    }

    public void e(CharSequence charSequence) {
        this.f2788b.setPackageName(charSequence);
    }

    public CharSequence f() {
        return this.f2788b.getContentDescription();
    }

    public void g(CharSequence charSequence) {
        this.f2788b.setText(charSequence);
    }

    public CharSequence h() {
        return this.f2788b.getPackageName();
    }

    public final boolean k() {
        return !a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    public void l(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2788b.setShowingHintText(z);
        } else {
            a(4, z);
        }
    }

    public void m(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2788b.setVisibleToUser(z);
        }
    }

    public void a(View view, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2788b.addChild(view, i2);
        }
    }

    public final void d(View view) {
        SparseArray<WeakReference<ClickableSpan>> b2 = b(view);
        if (b2 != null) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < b2.size(); i2++) {
                if (b2.valueAt(i2).get() == null) {
                    arrayList.add(Integer.valueOf(i2));
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                b2.remove(((Integer) arrayList.get(i3)).intValue());
            }
        }
    }

    public c e() {
        if (Build.VERSION.SDK_INT >= 19) {
            AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = this.f2788b.getCollectionItemInfo();
            if (collectionItemInfo != null) {
                return new c(collectionItemInfo);
            }
        }
        return null;
    }

    public void f(CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            this.f2788b.setPaneTitle(charSequence);
        } else if (i2 >= 19) {
            this.f2788b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public Bundle g() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f2788b.getExtras();
        }
        return new Bundle();
    }

    public void j(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2788b.setScreenReaderFocusable(z);
        } else {
            a(1, z);
        }
    }

    public int c() {
        return this.f2788b.getChildCount();
    }

    public void a(int i2) {
        this.f2788b.addAction(i2);
    }

    public void b(Rect rect) {
        this.f2788b.getBoundsInScreen(rect);
    }

    public void c(Rect rect) {
        this.f2788b.setBoundsInParent(rect);
    }

    public final List<Integer> a(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f2788b.getExtras().getIntegerArrayList(str);
        if (integerArrayList == null) {
            integerArrayList = new ArrayList<>();
            this.f2788b.getExtras().putIntegerArrayList(str, integerArrayList);
        }
        return integerArrayList;
    }

    public void b(boolean z) {
        this.f2788b.setCheckable(z);
    }

    public void c(boolean z) {
        this.f2788b.setChecked(z);
    }

    public void e(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2788b.setDismissable(z);
        }
    }

    public void b(CharSequence charSequence) {
        this.f2788b.setClassName(charSequence);
    }

    public void c(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2788b.setError(charSequence);
        }
    }

    public final SparseArray<WeakReference<ClickableSpan>> b(View view) {
        return (SparseArray) view.getTag(b.i.d.tag_accessibility_clickable_spans);
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2788b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((c) obj).f2803a);
        }
    }

    public void d(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2788b.setContentInvalid(z);
        }
    }

    public void a(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2788b.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.H);
        }
    }

    public void d(CharSequence charSequence) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            this.f2788b.setHintText(charSequence);
        } else if (i2 >= 19) {
            this.f2788b.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public boolean a(int i2, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f2788b.performAction(i2, bundle);
        }
        return false;
    }

    public void i(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2788b.setHeading(z);
        } else {
            a(2, z);
        }
    }

    public void a(Rect rect) {
        this.f2788b.getBoundsInParent(rect);
    }

    public void a(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2788b.setAccessibilityFocused(z);
        }
    }

    public void a(CharSequence charSequence, View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19 && i2 < 26) {
            a();
            d(view);
            ClickableSpan[] a2 = a(charSequence);
            if (a2 != null && a2.length > 0) {
                g().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", b.i.d.accessibility_action_clickable_span);
                SparseArray<WeakReference<ClickableSpan>> a3 = a(view);
                int i3 = 0;
                while (a2 != null && i3 < a2.length) {
                    int a4 = a(a2[i3], a3);
                    a3.put(a4, new WeakReference(a2[i3]));
                    a(a2[i3], (Spanned) charSequence, a4);
                    i3++;
                }
            }
        }
    }

    public final SparseArray<WeakReference<ClickableSpan>> a(View view) {
        SparseArray<WeakReference<ClickableSpan>> b2 = b(view);
        if (b2 != null) {
            return b2;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(b.i.d.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    public static ClickableSpan[] a(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public final int a(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                if (clickableSpan.equals((ClickableSpan) sparseArray.valueAt(i2).get())) {
                    return sparseArray.keyAt(i2);
                }
            }
        }
        int i3 = f2787a;
        f2787a = i3 + 1;
        return i3;
    }

    public final void a() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2788b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f2788b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f2788b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f2788b.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    public final void a(ClickableSpan clickableSpan, Spanned spanned, int i2) {
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        a("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i2));
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2788b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f2802a);
        }
    }

    public final void a(int i2, boolean z) {
        Bundle g2 = g();
        if (g2 != null) {
            int i3 = g2.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i2 ^ -1);
            if (!z) {
                i2 = 0;
            }
            g2.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i2 | i3);
        }
    }
}
