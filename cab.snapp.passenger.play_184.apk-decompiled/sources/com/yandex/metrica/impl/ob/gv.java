package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.impl.bq;
import com.yandex.metrica.impl.ob.kh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class gv implements gr<bq.a, kh.a.d> {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, bq.a.C0107a> f6070a = Collections.unmodifiableMap(new HashMap<Integer, bq.a.C0107a>() {
        {
            put(1, bq.a.C0107a.WIFI);
            put(2, bq.a.C0107a.CELL);
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private static final Map<bq.a.C0107a, Integer> f6071b = Collections.unmodifiableMap(new HashMap<bq.a.C0107a, Integer>() {
        {
            put(bq.a.C0107a.WIFI, 1);
            put(bq.a.C0107a.CELL, 2);
        }
    });

    public kh.a.d a(bq.a aVar) {
        kh.a.d dVar = new kh.a.d();
        dVar.f6222b = aVar.f5785a;
        dVar.c = aVar.f5786b;
        dVar.d = aVar.c;
        List<Pair<String, String>> list = aVar.d;
        kh.a.d.C0119a[] aVarArr = new kh.a.d.C0119a[list.size()];
        int i = 0;
        for (Pair next : list) {
            kh.a.d.C0119a aVar2 = new kh.a.d.C0119a();
            aVar2.f6223b = (String) next.first;
            aVar2.c = (String) next.second;
            aVarArr[i] = aVar2;
            i++;
        }
        dVar.e = aVarArr;
        dVar.f = aVar.e == null ? 0 : aVar.e.longValue();
        List<bq.a.C0107a> list2 = aVar.f;
        int[] iArr = new int[list2.size()];
        for (int i2 = 0; i2 < list2.size(); i2++) {
            iArr[i2] = f6071b.get(list2.get(i2)).intValue();
        }
        dVar.g = iArr;
        return dVar;
    }

    public bq.a a(kh.a.d dVar) {
        bq.a aVar = new bq.a(dVar.f6222b, dVar.c, dVar.d, a(dVar.e), Long.valueOf(dVar.f), a(dVar.g));
        return aVar;
    }

    private static List<Pair<String, String>> a(kh.a.d.C0119a[] aVarArr) {
        ArrayList arrayList = new ArrayList(aVarArr.length);
        for (kh.a.d.C0119a aVar : aVarArr) {
            arrayList.add(new Pair(aVar.f6223b, aVar.c));
        }
        return arrayList;
    }

    private static List<bq.a.C0107a> a(int[] iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int valueOf : iArr) {
            arrayList.add(f6070a.get(Integer.valueOf(valueOf)));
        }
        return arrayList;
    }
}
