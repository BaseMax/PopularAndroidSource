package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.List;

class is implements ip {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6167a;

    public is(Context context) {
        this.f6167a = context;
    }

    public List<iq> a() {
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfo = this.f6167a.getPackageManager().getPackageInfo(this.f6167a.getPackageName(), 4096);
            for (int i = 0; i < packageInfo.requestedPermissions.length; i++) {
                String str = packageInfo.requestedPermissions[i];
                if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                    arrayList.add(new iq(str, true));
                } else {
                    arrayList.add(new iq(str, false));
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
