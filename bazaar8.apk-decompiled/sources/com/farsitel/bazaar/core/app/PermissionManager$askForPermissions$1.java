package com.farsitel.bazaar.core.app;

import androidx.fragment.app.Fragment;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: PermissionManager.kt */
final class PermissionManager$askForPermissions$1 extends Lambda implements b<List<? extends Permission>, h> {
    public final /* synthetic */ Fragment $fragment;
    public final /* synthetic */ int $requestCode;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PermissionManager$askForPermissions$1(Fragment fragment, int i2) {
        super(1);
        this.$fragment = fragment;
        this.$requestCode = i2;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((List<? extends Permission>) (List) obj);
        return h.f14579a;
    }

    public final void a(List<? extends Permission> list) {
        j.b(list, "neededPermissions");
        Fragment fragment = this.$fragment;
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (Permission f2 : list) {
            arrayList.add(f2.f());
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            fragment.a((String[]) array, this.$requestCode);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
