package com.farsitel.bazaar.core.app;

import androidx.fragment.app.Fragment;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: PermissionManager.kt */
final class PermissionManager$onRequestPermissionsResult$1 extends Lambda implements b<String, Boolean> {
    public final /* synthetic */ Fragment $fragment;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PermissionManager$onRequestPermissionsResult$1(Fragment fragment) {
        super(1);
        this.$fragment = fragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        return Boolean.valueOf(a((String) obj));
    }

    public final boolean a(String str) {
        j.b(str, "permission");
        return this.$fragment.b(str);
    }
}
