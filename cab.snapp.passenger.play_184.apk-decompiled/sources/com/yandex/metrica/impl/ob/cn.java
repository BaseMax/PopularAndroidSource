package com.yandex.metrica.impl.ob;

import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.hj;
import com.yandex.metrica.impl.s;
import io.fabric.sdk.android.services.settings.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.a.a;
import org.a.b;
import org.a.c;

public class cn extends cm {
    public cn(ac acVar) {
        super(acVar);
    }

    public boolean a(i iVar) {
        ac a2 = a();
        if (a2.A().d() && a2.z()) {
            gd F = a2.F();
            HashSet<hk> b2 = b();
            try {
                ArrayList<hk> c = c();
                if (nb.a(b2, c)) {
                    a2.p();
                } else {
                    a aVar = new a();
                    Iterator<hk> it = c.iterator();
                    while (it.hasNext()) {
                        aVar.put((Object) it.next().a());
                    }
                    a2.g(new i(iVar).a(s.a.EVENT_TYPE_APP_FEATURES.a()).c(new c().put(t.FEATURES_KEY, (Object) aVar).toString()));
                    F.c(aVar.toString());
                }
            } catch (b unused) {
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public HashSet<hk> b() {
        String b2 = a().F().b();
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        try {
            HashSet<hk> hashSet = new HashSet<>();
            a aVar = new a(b2);
            for (int i = 0; i < aVar.length(); i++) {
                hashSet.add(new hk(aVar.getJSONObject(i)));
            }
            return hashSet;
        } catch (b unused) {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public ArrayList<hk> c() {
        hj hjVar;
        try {
            ac a2 = a();
            PackageInfo packageInfo = a2.c().getPackageManager().getPackageInfo(a2.c().getPackageName(), 16384);
            ArrayList<hk> arrayList = new ArrayList<>();
            if (bv.a(24)) {
                hjVar = new hj.a();
            } else {
                hjVar = new hj.b();
            }
            if (packageInfo.reqFeatures != null) {
                for (FeatureInfo b2 : packageInfo.reqFeatures) {
                    arrayList.add(hjVar.b(b2));
                }
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }
}
