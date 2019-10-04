package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class LifecycleCallback {

    /* renamed from: a  reason: collision with root package name */
    protected final bd f2748a;

    protected LifecycleCallback(bd bdVar) {
        this.f2748a = bdVar;
    }

    protected static bd a(bc bcVar) {
        if (bcVar.zzajj()) {
            return zzdb.zza(bcVar.zzajm());
        }
        if (bcVar.zzajk()) {
            return be.zzo(bcVar.zzajl());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    private static bd getChimeraLifecycleFragmentImpl(bc bcVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public static bd zzn(Activity activity) {
        return a(new bc(activity));
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final Activity getActivity() {
        return this.f2748a.zzajn();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onDestroy() {
    }

    public void onResume() {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
    }

    public void onStop() {
    }
}
