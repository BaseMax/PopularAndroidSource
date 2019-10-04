package b.i.k;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import b.i.k.a.d;
import b.i.k.a.e;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* renamed from: b.i.k.a  reason: case insensitive filesystem */
/* compiled from: AccessibilityDelegateCompat */
public class C0258a {

    /* renamed from: a  reason: collision with root package name */
    public static final View.AccessibilityDelegate f2779a = new View.AccessibilityDelegate();

    /* renamed from: b  reason: collision with root package name */
    public final View.AccessibilityDelegate f2780b;

    /* renamed from: c  reason: collision with root package name */
    public final View.AccessibilityDelegate f2781c;

    /* renamed from: b.i.k.a$a  reason: collision with other inner class name */
    /* compiled from: AccessibilityDelegateCompat */
    static final class C0033a extends View.AccessibilityDelegate {

        /* renamed from: a  reason: collision with root package name */
        public final C0258a f2782a;

        public C0033a(C0258a aVar) {
            this.f2782a = aVar;
        }

        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            return this.f2782a.a(view, accessibilityEvent);
        }

        public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
            e a2 = this.f2782a.a(view);
            if (a2 != null) {
                return (AccessibilityNodeProvider) a2.a();
            }
            return null;
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f2782a.b(view, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            d a2 = d.a(accessibilityNodeInfo);
            a2.j(z.E(view));
            a2.i(z.z(view));
            a2.f(z.d(view));
            this.f2782a.a(view, a2);
            a2.a(accessibilityNodeInfo.getText(), view);
            List<d.a> b2 = C0258a.b(view);
            for (int i2 = 0; i2 < b2.size(); i2++) {
                a2.a(b2.get(i2));
            }
        }

        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            this.f2782a.c(view, accessibilityEvent);
        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            return this.f2782a.a(viewGroup, view, accessibilityEvent);
        }

        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            return this.f2782a.a(view, i2, bundle);
        }

        public void sendAccessibilityEvent(View view, int i2) {
            this.f2782a.a(view, i2);
        }

        public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
            this.f2782a.d(view, accessibilityEvent);
        }
    }

    public C0258a() {
        this(f2779a);
    }

    public View.AccessibilityDelegate a() {
        return this.f2781c;
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        this.f2780b.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void c(View view, AccessibilityEvent accessibilityEvent) {
        this.f2780b.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.f2780b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0258a(View.AccessibilityDelegate accessibilityDelegate) {
        this.f2780b = accessibilityDelegate;
        this.f2781c = new C0033a(this);
    }

    public static List<d.a> b(View view) {
        List<d.a> list = (List) view.getTag(b.i.d.tag_accessibility_actions);
        return list == null ? Collections.emptyList() : list;
    }

    public void a(View view, int i2) {
        this.f2780b.sendAccessibilityEvent(view, i2);
    }

    public boolean a(View view, AccessibilityEvent accessibilityEvent) {
        return this.f2780b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void a(View view, d dVar) {
        this.f2780b.onInitializeAccessibilityNodeInfo(view, dVar.x());
    }

    public boolean a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f2780b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public e a(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            AccessibilityNodeProvider accessibilityNodeProvider = this.f2780b.getAccessibilityNodeProvider(view);
            if (accessibilityNodeProvider != null) {
                return new e(accessibilityNodeProvider);
            }
        }
        return null;
    }

    public boolean a(View view, int i2, Bundle bundle) {
        List<d.a> b2 = b(view);
        boolean z = false;
        int i3 = 0;
        while (true) {
            if (i3 >= b2.size()) {
                break;
            }
            d.a aVar = b2.get(i3);
            if (aVar.a() == i2) {
                z = aVar.a(view, bundle);
                break;
            }
            i3++;
        }
        if (!z && Build.VERSION.SDK_INT >= 16) {
            z = this.f2780b.performAccessibilityAction(view, i2, bundle);
        }
        return (z || i2 != b.i.d.accessibility_action_clickable_span) ? z : a(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
    }

    public final boolean a(int i2, View view) {
        SparseArray sparseArray = (SparseArray) view.getTag(b.i.d.tag_accessibility_clickable_spans);
        if (sparseArray != null) {
            WeakReference weakReference = (WeakReference) sparseArray.get(i2);
            if (weakReference != null) {
                ClickableSpan clickableSpan = (ClickableSpan) weakReference.get();
                if (a(clickableSpan, view)) {
                    clickableSpan.onClick(view);
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean a(ClickableSpan clickableSpan, View view) {
        if (clickableSpan != null) {
            ClickableSpan[] a2 = d.a(view.createAccessibilityNodeInfo().getText());
            int i2 = 0;
            while (a2 != null && i2 < a2.length) {
                if (clickableSpan.equals(a2[i2])) {
                    return true;
                }
                i2++;
            }
        }
        return false;
    }
}
