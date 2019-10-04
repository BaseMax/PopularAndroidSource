package com.yandex.metrica.impl.ob;

import android.telephony.SubscriptionInfo;

public final class mu {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f6439a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f6440b;
    private final boolean c;
    private final String d;
    private final String e;

    public mu(Integer num, Integer num2, boolean z, String str, String str2) {
        this.f6439a = num;
        this.f6440b = num2;
        this.c = z;
        this.d = str;
        this.e = str2;
    }

    public mu(SubscriptionInfo subscriptionInfo) {
        this.f6439a = Integer.valueOf(subscriptionInfo.getMcc());
        this.f6440b = Integer.valueOf(subscriptionInfo.getMnc());
        this.c = subscriptionInfo.getDataRoaming() != 1 ? false : true;
        this.d = subscriptionInfo.getCarrierName().toString();
        this.e = subscriptionInfo.getIccId();
    }

    public final Integer a() {
        return this.f6439a;
    }

    public final Integer b() {
        return this.f6440b;
    }

    public final boolean c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final String e() {
        return this.e;
    }
}
