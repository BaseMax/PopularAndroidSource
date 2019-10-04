package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.p;
import com.google.android.gms.common.internal.ap;
import java.util.HashMap;
import java.util.Map;

public final class b {
    public static final String ACTION_ADD = "add";
    public static final String ACTION_CHECKOUT = "checkout";
    public static final String ACTION_CHECKOUT_OPTION = "checkout_option";
    @Deprecated
    public static final String ACTION_CHECKOUT_OPTIONS = "checkout_options";
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_DETAIL = "detail";
    public static final String ACTION_PURCHASE = "purchase";
    public static final String ACTION_REFUND = "refund";
    public static final String ACTION_REMOVE = "remove";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f2569a = new HashMap();

    public b(String str) {
        a("&pa", str);
    }

    private final void a(String str, String str2) {
        ap.checkNotNull(str, "Name should be non-null");
        this.f2569a.put(str, str2);
    }

    public final Map<String, String> build() {
        return new HashMap(this.f2569a);
    }

    public final b setCheckoutOptions(String str) {
        a("&col", str);
        return this;
    }

    public final b setCheckoutStep(int i) {
        a("&cos", Integer.toString(i));
        return this;
    }

    public final b setProductActionList(String str) {
        a("&pal", str);
        return this;
    }

    public final b setProductListSource(String str) {
        a("&pls", str);
        return this;
    }

    public final b setTransactionAffiliation(String str) {
        a("&ta", str);
        return this;
    }

    public final b setTransactionCouponCode(String str) {
        a("&tcc", str);
        return this;
    }

    public final b setTransactionId(String str) {
        a("&ti", str);
        return this;
    }

    public final b setTransactionRevenue(double d) {
        a("&tr", Double.toString(d));
        return this;
    }

    public final b setTransactionShipping(double d) {
        a("&ts", Double.toString(d));
        return this;
    }

    public final b setTransactionTax(double d) {
        a("&tt", Double.toString(d));
        return this;
    }

    public final String toString() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.f2569a.entrySet()) {
            hashMap.put(((String) next.getKey()).startsWith("&") ? ((String) next.getKey()).substring(1) : (String) next.getKey(), (String) next.getValue());
        }
        return p.zzr(hashMap);
    }
}
