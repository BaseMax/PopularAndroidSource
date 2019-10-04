package b.i.k.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AccessibilityNodeProviderCompat */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final Object f2804a;

    /* compiled from: AccessibilityNodeProviderCompat */
    static class a extends AccessibilityNodeProvider {

        /* renamed from: a  reason: collision with root package name */
        public final e f2805a;

        public a(e eVar) {
            this.f2805a = eVar;
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i2) {
            d a2 = this.f2805a.a(i2);
            if (a2 == null) {
                return null;
            }
            return a2.x();
        }

        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i2) {
            List<d> a2 = this.f2805a.a(str, i2);
            if (a2 == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = a2.size();
            for (int i3 = 0; i3 < size; i3++) {
                arrayList.add(a2.get(i3).x());
            }
            return arrayList;
        }

        public boolean performAction(int i2, int i3, Bundle bundle) {
            return this.f2805a.a(i2, i3, bundle);
        }
    }

    /* compiled from: AccessibilityNodeProviderCompat */
    static class b extends a {
        public b(e eVar) {
            super(eVar);
        }

        public AccessibilityNodeInfo findFocus(int i2) {
            d b2 = this.f2805a.b(i2);
            if (b2 == null) {
                return null;
            }
            return b2.x();
        }
    }

    public e() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            this.f2804a = new b(this);
        } else if (i2 >= 16) {
            this.f2804a = new a(this);
        } else {
            this.f2804a = null;
        }
    }

    public d a(int i2) {
        return null;
    }

    public Object a() {
        return this.f2804a;
    }

    public List<d> a(String str, int i2) {
        return null;
    }

    public boolean a(int i2, int i3, Bundle bundle) {
        return false;
    }

    public d b(int i2) {
        return null;
    }

    public e(Object obj) {
        this.f2804a = obj;
    }
}
