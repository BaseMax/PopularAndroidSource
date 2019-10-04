package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.bn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

final class s extends w {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a.f> f2874a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ m f2875b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public s(m mVar, ArrayList<a.f> arrayList) {
        super(mVar, (byte) 0);
        this.f2875b = mVar;
        this.f2874a = arrayList;
    }

    public final void zzaib() {
        Set<Scope> set;
        z zVar = this.f2875b.f2864a.m;
        m mVar = this.f2875b;
        if (mVar.k == null) {
            set = Collections.emptySet();
        } else {
            HashSet hashSet = new HashSet(mVar.k.zzakv());
            Map<a<?>, bn> zzakx = mVar.k.zzakx();
            for (a next : zzakx.keySet()) {
                if (!mVar.f2864a.g.containsKey(next.zzagf())) {
                    hashSet.addAll(zzakx.get(next).zzehs);
                }
            }
            set = hashSet;
        }
        zVar.c = set;
        ArrayList arrayList = this.f2874a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((a.f) obj).zza(this.f2875b.h, this.f2875b.f2864a.m.c);
        }
    }
}
