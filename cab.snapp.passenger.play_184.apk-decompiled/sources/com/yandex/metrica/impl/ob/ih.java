package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;

class ih extends ho {

    /* renamed from: a  reason: collision with root package name */
    private ft f6159a;

    /* renamed from: b  reason: collision with root package name */
    private hp f6160b;
    private np c;

    public ih(Context context, hn hnVar) {
        this(hnVar, fq.a(context).g(), new hp(context), new np());
    }

    public void a(Location location, hq hqVar) {
        if (hqVar != null && location != null) {
            String a2 = this.f6160b.a(new ic(hqVar.a(), this.c.a(), location));
            if (!TextUtils.isEmpty(a2)) {
                this.f6159a.a(location.getTime(), a2);
            }
        }
    }

    ih(hn hnVar, ft ftVar, hp hpVar, np npVar) {
        super(hnVar);
        this.f6159a = ftVar;
        this.f6160b = hpVar;
        this.c = npVar;
    }
}
