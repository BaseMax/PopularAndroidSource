package com.google.android.gms.common.internal;

import android.accounts.Account;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.oc;
import java.util.Collection;

public final class bm {

    /* renamed from: a  reason: collision with root package name */
    private Account f2951a;

    /* renamed from: b  reason: collision with root package name */
    private ArraySet<Scope> f2952b;
    private int c = 0;
    private String d;
    private String e;
    private oc f = oc.zzkbs;

    public final bl zzald() {
        bl blVar = new bl(this.f2951a, this.f2952b, null, 0, null, this.d, this.e, this.f);
        return blVar;
    }

    public final bm zze(Account account) {
        this.f2951a = account;
        return this;
    }

    public final bm zze(Collection<Scope> collection) {
        if (this.f2952b == null) {
            this.f2952b = new ArraySet<>();
        }
        this.f2952b.addAll(collection);
        return this;
    }

    public final bm zzgf(String str) {
        this.d = str;
        return this;
    }

    public final bm zzgg(String str) {
        this.e = str;
        return this;
    }
}
