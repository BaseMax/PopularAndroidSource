package com.yandex.metrica.impl;

import com.yandex.metrica.impl.bq;
import com.yandex.metrica.impl.ob.lf;
import com.yandex.metrica.impl.ob.mb;
import com.yandex.metrica.impl.ob.nd;
import com.yandex.metrica.impl.ob.nw;
import io.fabric.sdk.android.services.network.c;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class bp implements ap {

    /* renamed from: a  reason: collision with root package name */
    private final mb f5782a;

    /* renamed from: b  reason: collision with root package name */
    private final lf f5783b;
    private final a c;
    private final bq d;
    private final nd e;

    static class a {
        a() {
        }

        /* access modifiers changed from: package-private */
        public nw a(byte[] bArr, byte[] bArr2) {
            return new nw("AES/CBC/PKCS5Padding", bArr, bArr2);
        }
    }

    public bp(mb mbVar, lf lfVar) {
        this(mbVar, lfVar, new a(), new bq(), new nd());
    }

    public boolean a(int i, byte[] bArr, Map<String, List<String>> map) {
        if (200 != i) {
            return false;
        }
        List list = map.get(c.HEADER_CONTENT_ENCODING);
        if (!bv.a((Collection) list) && "encrypted".equals(list.get(0))) {
            bArr = a(bArr);
        }
        if (bArr == null) {
            return false;
        }
        bq.b a2 = this.d.a(bArr);
        if (bq.b.a.OK != a2.l()) {
            return false;
        }
        this.f5782a.a(a2, this.f5783b, map);
        return true;
    }

    private byte[] a(byte[] bArr) {
        try {
            return this.e.b(this.c.a("hBnBQbZrmjPXEWVJ".getBytes(), Arrays.copyOfRange(bArr, 0, 16)).a(bArr, 16, bArr.length - 16));
        } catch (Exception unused) {
            return null;
        }
    }

    bp(mb mbVar, lf lfVar, a aVar, bq bqVar, nd ndVar) {
        this.f5782a = mbVar;
        this.f5783b = lfVar;
        this.c = aVar;
        this.d = bqVar;
        this.e = ndVar;
    }
}
