package com.yandex.metrica.impl;

import android.util.Pair;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.impl.ob.e;
import com.yandex.metrica.impl.ob.kd;
import com.yandex.metrica.impl.ob.nt;
import com.yandex.metrica.impl.ob.om;
import com.yandex.metrica.impl.ob.op;
import com.yandex.metrica.impl.ob.oq;
import com.yandex.metrica.impl.ob.or;
import com.yandex.metrica.impl.ob.os;

class bk {

    /* renamed from: a  reason: collision with root package name */
    private final Revenue f5769a;

    /* renamed from: b  reason: collision with root package name */
    private final os<String> f5770b = new op(30720, "revenue payload");
    private final os<String> c = new or(new op(184320, "receipt data"), "<truncated data was not sent, see METRIKALIB-4568>");
    private final os<String> d = new or(new oq(1000, "receipt signature"), "<truncated data was not sent, see METRIKALIB-4568>");

    bk(Revenue revenue) {
        this.f5769a = revenue;
    }

    /* access modifiers changed from: package-private */
    public Pair<byte[], Integer> a() {
        kd kdVar = new kd();
        kdVar.d = this.f5769a.currency.getCurrencyCode().getBytes();
        kdVar.c = this.f5769a.price;
        kdVar.e = bt.d(new oq(200, "revenue productID").a(this.f5769a.productID));
        boolean z = true;
        kdVar.f6208b = nt.a(this.f5769a.quantity, 1);
        kdVar.f = bt.d(this.f5770b.a(this.f5769a.payload));
        int i = 0;
        if (this.f5769a.receipt == null) {
            z = false;
        }
        if (z) {
            kd.a aVar = new kd.a();
            String a2 = this.c.a(this.f5769a.receipt.data);
            if (om.a(this.f5769a.receipt.data, a2)) {
                i = this.f5769a.receipt.data.length() + 0;
            }
            aVar.f6209b = bt.d(a2);
            aVar.c = bt.d(this.d.a(this.f5769a.receipt.signature));
            kdVar.g = aVar;
        }
        return new Pair<>(e.a((e) kdVar), Integer.valueOf(i));
    }
}
