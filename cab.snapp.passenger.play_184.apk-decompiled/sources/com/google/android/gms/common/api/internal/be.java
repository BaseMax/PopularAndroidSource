package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

public final class be extends Fragment implements bd {

    /* renamed from: a  reason: collision with root package name */
    private static WeakHashMap<Activity, WeakReference<be>> f2787a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, LifecycleCallback> f2788b = new ArrayMap();
    /* access modifiers changed from: private */
    public int c = 0;
    /* access modifiers changed from: private */
    public Bundle d;

    public static be zzo(Activity activity) {
        WeakReference weakReference = f2787a.get(activity);
        if (weakReference != null) {
            be beVar = (be) weakReference.get();
            if (beVar != null) {
                return beVar;
            }
        }
        try {
            be beVar2 = (be) activity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
            if (beVar2 == null || beVar2.isRemoving()) {
                beVar2 = new be();
                activity.getFragmentManager().beginTransaction().add(beVar2, "LifecycleFragmentImpl").commitAllowingStateLoss();
            }
            f2787a.put(activity, new WeakReference(beVar2));
            return beVar2;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", e);
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback dump : this.f2788b.values()) {
            dump.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback onActivityResult : this.f2788b.values()) {
            onActivityResult.onActivityResult(i, i2, intent);
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = 1;
        this.d = bundle;
        for (Map.Entry next : this.f2788b.entrySet()) {
            ((LifecycleCallback) next.getValue()).onCreate(bundle != null ? bundle.getBundle((String) next.getKey()) : null);
        }
    }

    public final void onDestroy() {
        super.onDestroy();
        this.c = 5;
        for (LifecycleCallback onDestroy : this.f2788b.values()) {
            onDestroy.onDestroy();
        }
    }

    public final void onResume() {
        super.onResume();
        this.c = 3;
        for (LifecycleCallback onResume : this.f2788b.values()) {
            onResume.onResume();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry next : this.f2788b.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) next.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) next.getKey(), bundle2);
            }
        }
    }

    public final void onStart() {
        super.onStart();
        this.c = 2;
        for (LifecycleCallback onStart : this.f2788b.values()) {
            onStart.onStart();
        }
    }

    public final void onStop() {
        super.onStop();
        this.c = 4;
        for (LifecycleCallback onStop : this.f2788b.values()) {
            onStop.onStop();
        }
    }

    public final <T extends LifecycleCallback> T zza(String str, Class<T> cls) {
        return (LifecycleCallback) cls.cast(this.f2788b.get(str));
    }

    public final void zza(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f2788b.containsKey(str)) {
            this.f2788b.put(str, lifecycleCallback);
            if (this.c > 0) {
                new Handler(Looper.getMainLooper()).post(new bf(this, lifecycleCallback, str));
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

    public final Activity zzajn() {
        return getActivity();
    }
}
