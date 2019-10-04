package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

public final class zzdb extends Fragment implements bd {

    /* renamed from: a  reason: collision with root package name */
    private static WeakHashMap<FragmentActivity, WeakReference<zzdb>> f2885a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, LifecycleCallback> f2886b = new ArrayMap();
    /* access modifiers changed from: private */
    public int c = 0;
    /* access modifiers changed from: private */
    public Bundle d;

    public static zzdb zza(FragmentActivity fragmentActivity) {
        WeakReference weakReference = f2885a.get(fragmentActivity);
        if (weakReference != null) {
            zzdb zzdb = (zzdb) weakReference.get();
            if (zzdb != null) {
                return zzdb;
            }
        }
        try {
            zzdb zzdb2 = (zzdb) fragmentActivity.getSupportFragmentManager().findFragmentByTag("SupportLifecycleFragmentImpl");
            if (zzdb2 == null || zzdb2.isRemoving()) {
                zzdb2 = new zzdb();
                fragmentActivity.getSupportFragmentManager().beginTransaction().add((Fragment) zzdb2, "SupportLifecycleFragmentImpl").commitAllowingStateLoss();
            }
            f2885a.put(fragmentActivity, new WeakReference(zzdb2));
            return zzdb2;
        } catch (ClassCastException e) {
            throw new IllegalStateException("Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl", e);
        }
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback dump : this.f2886b.values()) {
            dump.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback onActivityResult : this.f2886b.values()) {
            onActivityResult.onActivityResult(i, i2, intent);
        }
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = 1;
        this.d = bundle;
        for (Map.Entry next : this.f2886b.entrySet()) {
            ((LifecycleCallback) next.getValue()).onCreate(bundle != null ? bundle.getBundle((String) next.getKey()) : null);
        }
    }

    public final void onDestroy() {
        super.onDestroy();
        this.c = 5;
        for (LifecycleCallback onDestroy : this.f2886b.values()) {
            onDestroy.onDestroy();
        }
    }

    public final void onResume() {
        super.onResume();
        this.c = 3;
        for (LifecycleCallback onResume : this.f2886b.values()) {
            onResume.onResume();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry next : this.f2886b.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((LifecycleCallback) next.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) next.getKey(), bundle2);
            }
        }
    }

    public final void onStart() {
        super.onStart();
        this.c = 2;
        for (LifecycleCallback onStart : this.f2886b.values()) {
            onStart.onStart();
        }
    }

    public final void onStop() {
        super.onStop();
        this.c = 4;
        for (LifecycleCallback onStop : this.f2886b.values()) {
            onStop.onStop();
        }
    }

    public final <T extends LifecycleCallback> T zza(String str, Class<T> cls) {
        return (LifecycleCallback) cls.cast(this.f2886b.get(str));
    }

    public final void zza(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f2886b.containsKey(str)) {
            this.f2886b.put(str, lifecycleCallback);
            if (this.c > 0) {
                new Handler(Looper.getMainLooper()).post(new ca(this, lifecycleCallback, str));
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

    public final /* synthetic */ Activity zzajn() {
        return getActivity();
    }
}
