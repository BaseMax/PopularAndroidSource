package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

class it implements ip {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6168a;

    public it(Context context) {
        this.f6168a = context;
    }

    public List<iq> a() {
        ArrayList arrayList = new ArrayList();
        try {
            for (String iqVar : this.f6168a.getPackageManager().getPackageInfo(this.f6168a.getPackageName(), 4096).requestedPermissions) {
                arrayList.add(new iq(iqVar, true));
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
