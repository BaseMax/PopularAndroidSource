package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.ap;

public final class bc {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2786a;

    public bc(Activity activity) {
        ap.checkNotNull(activity, "Activity must not be null");
        this.f2786a = activity;
    }

    public final boolean zzajj() {
        return this.f2786a instanceof FragmentActivity;
    }

    public final boolean zzajk() {
        return this.f2786a instanceof Activity;
    }

    public final Activity zzajl() {
        return (Activity) this.f2786a;
    }

    public final FragmentActivity zzajm() {
        return (FragmentActivity) this.f2786a;
    }
}
