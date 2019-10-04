package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

final /* synthetic */ class f implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    static final Comparator f2658a = new f();

    private f() {
    }

    public final int compare(Object obj, Object obj2) {
        return ((Scope) obj).zzagw().compareTo(((Scope) obj2).zzagw());
    }
}
