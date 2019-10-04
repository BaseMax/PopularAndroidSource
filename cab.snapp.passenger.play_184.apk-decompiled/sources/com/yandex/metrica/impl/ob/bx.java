package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.s;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

public class bx extends bz<cm> {

    /* renamed from: a  reason: collision with root package name */
    private final Cdo f5908a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<s.a, dh<cm>> f5909b;
    private df<cm> c = new de(this.f5908a);
    private df<cm> d;

    public bx(ac acVar) {
        this.f5908a = new Cdo(acVar);
        HashMap hashMap = new HashMap();
        hashMap.put(s.a.EVENT_TYPE_ACTIVATION, new dd(this.f5908a));
        hashMap.put(s.a.EVENT_TYPE_START, new dr(this.f5908a));
        hashMap.put(s.a.EVENT_TYPE_REGULAR, new dl(this.f5908a));
        dj djVar = new dj(this.f5908a);
        hashMap.put(s.a.EVENT_TYPE_EXCEPTION_USER, djVar);
        hashMap.put(s.a.EVENT_TYPE_SEND_REFERRER, djVar);
        hashMap.put(s.a.EVENT_TYPE_STATBOX, djVar);
        hashMap.put(s.a.EVENT_TYPE_CUSTOM_EVENT, djVar);
        hashMap.put(s.a.EVENT_TYPE_APP_OPEN, new dn(this.f5908a));
        hashMap.put(s.a.EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS, new dt(this.f5908a));
        hashMap.put(s.a.EVENT_TYPE_PURGE_BUFFER, new dk(this.f5908a));
        s.a aVar = s.a.EVENT_TYPE_NATIVE_CRASH;
        Cdo doVar = this.f5908a;
        hashMap.put(aVar, new dq(doVar, doVar.n()));
        hashMap.put(s.a.EVENT_TYPE_EXCEPTION_UNHANDLED, new ds(this.f5908a));
        hashMap.put(s.a.EVENT_TYPE_IDENTITY, new di(this.f5908a));
        hashMap.put(s.a.EVENT_TYPE_SET_USER_INFO, new dp(this.f5908a));
        s.a aVar2 = s.a.EVENT_TYPE_REPORT_USER_INFO;
        Cdo doVar2 = this.f5908a;
        hashMap.put(aVar2, new dq(doVar2, doVar2.i()));
        s.a aVar3 = s.a.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        Cdo doVar3 = this.f5908a;
        hashMap.put(aVar3, new dq(doVar3, doVar3.k()));
        s.a aVar4 = s.a.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        Cdo doVar4 = this.f5908a;
        hashMap.put(aVar4, new dq(doVar4, doVar4.l()));
        hashMap.put(s.a.EVENT_TYPE_SEND_USER_PROFILE, djVar);
        s.a aVar5 = s.a.EVENT_TYPE_SET_USER_PROFILE_ID;
        Cdo doVar5 = this.f5908a;
        hashMap.put(aVar5, new dq(doVar5, doVar5.q()));
        hashMap.put(s.a.EVENT_TYPE_SEND_REVENUE_EVENT, djVar);
        this.f5909b = hashMap;
    }

    public void a(s.a aVar, dh<cm> dhVar) {
        this.f5909b.put(aVar, dhVar);
    }

    public Cdo a() {
        return this.f5908a;
    }

    public bw<cm> a(int i) {
        LinkedList linkedList = new LinkedList();
        s.a a2 = s.a.a(i);
        df<cm> dfVar = this.c;
        if (dfVar != null) {
            dfVar.a(a2, linkedList);
        }
        dh dhVar = this.f5909b.get(a2);
        if (dhVar != null) {
            dhVar.a(linkedList);
        }
        df<cm> dfVar2 = this.d;
        if (dfVar2 != null) {
            dfVar2.a(a2, linkedList);
        }
        return new bv(linkedList);
    }
}
