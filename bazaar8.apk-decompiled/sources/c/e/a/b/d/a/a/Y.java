package c.e.a.b.d.a.a;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import b.f.C0243b;
import b.o.a.C;
import b.o.a.C0285i;
import c.e.a.b.g.d.d;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

public final class Y extends Fragment implements C0758f {
    public static WeakHashMap<C0285i, WeakReference<Y>> Y = new WeakHashMap<>();
    public Map<String, LifecycleCallback> Z = new C0243b();
    public int aa = 0;
    public Bundle ba;

    public static Y a(C0285i iVar) {
        WeakReference weakReference = Y.get(iVar);
        if (weakReference != null) {
            Y y = (Y) weakReference.get();
            if (y != null) {
                return y;
            }
        }
        try {
            Y y2 = (Y) iVar.r().a("SupportLifecycleFragmentImpl");
            if (y2 == null || y2.ja()) {
                y2 = new Y();
                C a2 = iVar.r().a();
                a2.a((Fragment) y2, "SupportLifecycleFragmentImpl");
                a2.b();
            }
            Y.put(iVar, new WeakReference(y2));
            return y2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e2);
        }
    }

    public final void c(Bundle bundle) {
        super.c(bundle);
        this.aa = 1;
        this.ba = bundle;
        for (Map.Entry next : this.Z.entrySet()) {
            ((LifecycleCallback) next.getValue()).a(bundle != null ? bundle.getBundle((String) next.getKey()) : null);
        }
    }

    public final void e(Bundle bundle) {
        super.e(bundle);
        if (bundle != null) {
            for (Map.Entry next : this.Z.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) next.getValue()).b(bundle2);
                bundle.putBundle((String) next.getKey(), bundle2);
            }
        }
    }

    public final /* synthetic */ Activity l() {
        return x();
    }

    public final void oa() {
        super.oa();
        this.aa = 5;
        for (LifecycleCallback b2 : this.Z.values()) {
            b2.b();
        }
    }

    public final void ta() {
        super.ta();
        this.aa = 3;
        for (LifecycleCallback c2 : this.Z.values()) {
            c2.c();
        }
    }

    public final void ua() {
        super.ua();
        this.aa = 2;
        for (LifecycleCallback d2 : this.Z.values()) {
            d2.d();
        }
    }

    public final void va() {
        super.va();
        this.aa = 4;
        for (LifecycleCallback e2 : this.Z.values()) {
            e2.e();
        }
    }

    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return (LifecycleCallback) cls.cast(this.Z.get(str));
    }

    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.Z.containsKey(str)) {
            this.Z.put(str, lifecycleCallback);
            if (this.aa > 0) {
                new d(Looper.getMainLooper()).post(new Z(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    public final void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        for (LifecycleCallback a2 : this.Z.values()) {
            a2.a(i2, i3, intent);
        }
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.a(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback a2 : this.Z.values()) {
            a2.a(str, fileDescriptor, printWriter, strArr);
        }
    }
}
