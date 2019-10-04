package com.farsitel.bazaar.core.app;

import android.app.Activity;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: PermissionManager.kt */
final class PermissionManager$onRequestPermissionsResult$2 extends Lambda implements b<String, Boolean> {
    public final /* synthetic */ Activity $activity;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PermissionManager$onRequestPermissionsResult$2(Activity activity) {
        super(1);
        this.$activity = activity;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((String) obj));
    }

    public final boolean a(String str) {
        j.b(str, "permission");
        return b.i.a.b.a(this.$activity, str);
    }
}
