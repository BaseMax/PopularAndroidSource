package com.yandex.metrica.impl.ob;

import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import com.yandex.metrica.impl.au;
import com.yandex.metrica.impl.bv;
import java.util.ArrayList;
import java.util.List;

public class mv implements mx<List<mu>> {

    /* renamed from: a  reason: collision with root package name */
    private final mq f6441a;

    mv(mq mqVar) {
        this.f6441a = mqVar;
    }

    /* renamed from: a */
    public List<mu> d() {
        ArrayList arrayList = new ArrayList();
        if (this.f6441a.h()) {
            if (bv.a(23)) {
                arrayList.addAll(g());
                if (arrayList.size() == 0) {
                    arrayList.add(b());
                }
            } else {
                arrayList.add(b());
            }
        }
        return arrayList;
    }

    private mu b() {
        mu muVar = new mu(c(), e(), h(), f(), null);
        return muVar;
    }

    private Integer c() {
        Integer num = null;
        try {
            String substring = this.f6441a.c().getSimOperator().substring(0, 3);
            if (TextUtils.isEmpty(substring)) {
                return null;
            }
            num = Integer.valueOf(Integer.parseInt(substring));
            return num;
        } catch (Exception unused) {
        }
    }

    private Integer e() {
        Integer num = null;
        try {
            String substring = this.f6441a.c().getSimOperator().substring(3);
            if (TextUtils.isEmpty(substring)) {
                return null;
            }
            num = Integer.valueOf(Integer.parseInt(substring));
            return num;
        } catch (Exception unused) {
        }
    }

    private String f() {
        try {
            return this.f6441a.c().getSimOperatorName();
        } catch (Exception unused) {
            return null;
        }
    }

    private List<mu> g() {
        ArrayList arrayList = new ArrayList();
        if (au.a(this.f6441a.d(), "android.permission.READ_PHONE_STATE")) {
            try {
                List<SubscriptionInfo> activeSubscriptionInfoList = SubscriptionManager.from(this.f6441a.d()).getActiveSubscriptionInfoList();
                if (activeSubscriptionInfoList != null) {
                    for (SubscriptionInfo muVar : activeSubscriptionInfoList) {
                        arrayList.add(new mu(muVar));
                    }
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    private boolean h() {
        if (au.a(this.f6441a.d(), "android.permission.READ_PHONE_STATE")) {
            try {
                return this.f6441a.c().isNetworkRoaming();
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
