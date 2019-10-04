package c.e.a.b.d.a.a;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import b.f.C0243b;
import c.e.a.b.g.d.d;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

public final class W extends Fragment implements C0758f {

    /* renamed from: a  reason: collision with root package name */
    public static WeakHashMap<Activity, WeakReference<W>> f9840a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public Map<String, LifecycleCallback> f9841b = new C0243b();

    /* renamed from: c  reason: collision with root package name */
    public int f9842c = 0;

    /* renamed from: d  reason: collision with root package name */
    public Bundle f9843d;

    public static W a(Activity activity) {
        WeakReference weakReference = f9840a.get(activity);
        if (weakReference != null) {
            W w = (W) weakReference.get();
            if (w != null) {
                return w;
            }
        }
        try {
            W w2 = (W) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (w2 == null || w2.isRemoving()) {
                w2 = new W();
                activity.getFragmentManager().beginTransaction().add(w2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            f9840a.put(activity, new WeakReference(w2));
            return w2;
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e2);
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback a2 : this.f9841b.values()) {
            a2.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final Activity l() {
        return getActivity();
    }

    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        for (LifecycleCallback a2 : this.f9841b.values()) {
            a2.a(i2, i3, intent);
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f9842c = 1;
        this.f9843d = bundle;
        for (Map.Entry next : this.f9841b.entrySet()) {
            ((LifecycleCallback) next.getValue()).a(bundle != null ? bundle.getBundle((String) next.getKey()) : null);
        }
    }

    public final void onDestroy() {
        super.onDestroy();
        this.f9842c = 5;
        for (LifecycleCallback b2 : this.f9841b.values()) {
            b2.b();
        }
    }

    public final void onResume() {
        super.onResume();
        this.f9842c = 3;
        for (LifecycleCallback c2 : this.f9841b.values()) {
            c2.c();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry next : this.f9841b.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) next.getValue()).b(bundle2);
                bundle.putBundle((String) next.getKey(), bundle2);
            }
        }
    }

    public final void onStart() {
        super.onStart();
        this.f9842c = 2;
        for (LifecycleCallback d2 : this.f9841b.values()) {
            d2.d();
        }
    }

    public final void onStop() {
        super.onStop();
        this.f9842c = 4;
        for (LifecycleCallback e2 : this.f9841b.values()) {
            e2.e();
        }
    }

    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return (LifecycleCallback) cls.cast(this.f9841b.get(str));
    }

    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f9841b.containsKey(str)) {
            this.f9841b.put(str, lifecycleCallback);
            if (this.f9842c > 0) {
                new d(Looper.getMainLooper()).post(new X(this, lifecycleCallback, str));
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
}
