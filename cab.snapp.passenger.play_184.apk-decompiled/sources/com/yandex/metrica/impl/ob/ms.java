package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.au;
import com.yandex.metrica.impl.bv;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class ms implements mx<List<String>> {

    /* renamed from: a  reason: collision with root package name */
    private final mq f6438a;

    ms(mq mqVar) {
        this.f6438a = mqVar;
    }

    /* renamed from: a */
    public List<String> d() {
        ArrayList arrayList = new ArrayList();
        if (this.f6438a.g()) {
            if (bv.a(23)) {
                arrayList.addAll(c());
            } else {
                arrayList.add(b());
            }
        }
        return arrayList;
    }

    private String b() {
        try {
            if (au.a(this.f6438a.d(), "android.permission.READ_PHONE_STATE")) {
                return this.f6438a.c().getDeviceId();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private List<String> c() {
        HashSet hashSet = new HashSet();
        try {
            if (au.a(this.f6438a.d(), "android.permission.READ_PHONE_STATE")) {
                for (int i = 0; i < 10; i++) {
                    String deviceId = this.f6438a.c().getDeviceId(i);
                    if (deviceId != null) {
                        hashSet.add(deviceId);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return new ArrayList(hashSet);
    }
}
