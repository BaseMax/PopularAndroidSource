package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.internal.oc;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class bl {

    /* renamed from: a  reason: collision with root package name */
    private final Account f2949a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Scope> f2950b;
    private final Set<Scope> c;
    private final Map<a<?>, bn> d;
    private final int e;
    private final View f;
    private final String g;
    private final String h;
    private final oc i;
    private Integer j;

    public bl(Account account, Set<Scope> set, Map<a<?>, bn> map, int i2, View view, String str, String str2, oc ocVar) {
        this.f2949a = account;
        this.f2950b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.d = map == null ? Collections.EMPTY_MAP : map;
        this.f = view;
        this.e = i2;
        this.g = str;
        this.h = str2;
        this.i = ocVar;
        HashSet hashSet = new HashSet(this.f2950b);
        for (bn bnVar : this.d.values()) {
            hashSet.addAll(bnVar.zzehs);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }

    public static bl zzcl(Context context) {
        return new f.a(context).zzagu();
    }

    public final Account getAccount() {
        return this.f2949a;
    }

    @Deprecated
    public final String getAccountName() {
        Account account = this.f2949a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public final Account zzakt() {
        Account account = this.f2949a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    public final int zzaku() {
        return this.e;
    }

    public final Set<Scope> zzakv() {
        return this.f2950b;
    }

    public final Set<Scope> zzakw() {
        return this.c;
    }

    public final Map<a<?>, bn> zzakx() {
        return this.d;
    }

    public final String zzaky() {
        return this.g;
    }

    public final String zzakz() {
        return this.h;
    }

    public final View zzala() {
        return this.f;
    }

    public final oc zzalb() {
        return this.i;
    }

    public final Integer zzalc() {
        return this.j;
    }

    public final Set<Scope> zzc(a<?> aVar) {
        bn bnVar = this.d.get(aVar);
        if (bnVar == null || bnVar.zzehs.isEmpty()) {
            return this.f2950b;
        }
        HashSet hashSet = new HashSet(this.f2950b);
        hashSet.addAll(bnVar.zzehs);
        return hashSet;
    }

    public final void zzc(Integer num) {
        this.j = num;
    }
}
