package com.yandex.metrica.impl.ob;

import android.location.Location;

abstract class ho implements hn {

    /* renamed from: a  reason: collision with root package name */
    private hn f6115a;

    public abstract void a(Location location, hq hqVar);

    public ho(hn hnVar) {
        this.f6115a = hnVar;
    }

    public void a(String str, Location location, hq hqVar) {
        a(location, hqVar);
        hn hnVar = this.f6115a;
        if (hnVar != null) {
            hnVar.a(str, location, hqVar);
        }
    }
}
