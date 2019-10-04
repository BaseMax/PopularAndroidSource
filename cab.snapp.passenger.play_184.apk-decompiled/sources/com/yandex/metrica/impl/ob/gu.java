package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.av;
import com.yandex.metrica.impl.ob.kg;
import com.yandex.metrica.impl.ob.ki;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class gu implements gr<ki.a, kg.a> {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, av.a> f6068a = Collections.unmodifiableMap(new HashMap<Integer, av.a>() {
        {
            put(1, av.a.WIFI);
            put(2, av.a.CELL);
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private static final Map<av.a, Integer> f6069b = Collections.unmodifiableMap(new HashMap<av.a, Integer>() {
        {
            put(av.a.WIFI, 1);
            put(av.a.CELL, 2);
        }
    });

    public kg.a a(ki.a aVar) {
        kg.a aVar2 = new kg.a();
        Set<String> a2 = aVar.a();
        aVar2.c = (String[]) a2.toArray(new String[a2.size()]);
        List<ki.a.C0120a> b2 = aVar.b();
        kg.a.C0116a[] aVarArr = new kg.a.C0116a[b2.size()];
        for (int i = 0; i < b2.size(); i++) {
            ki.a.C0120a aVar3 = b2.get(i);
            kg.a.C0116a aVar4 = new kg.a.C0116a();
            aVar4.f6216b = aVar3.f6235a;
            aVar4.c = aVar3.f6236b;
            kg.a.C0116a.C0117a[] aVarArr2 = new kg.a.C0116a.C0117a[aVar3.d.a()];
            int i2 = 0;
            for (Map.Entry entry : aVar3.d.b()) {
                for (String str : (Collection) entry.getValue()) {
                    kg.a.C0116a.C0117a aVar5 = new kg.a.C0116a.C0117a();
                    aVar5.f6217b = (String) entry.getKey();
                    aVar5.c = str;
                    aVarArr2[i2] = aVar5;
                    i2++;
                }
            }
            aVar4.e = aVarArr2;
            aVar4.d = aVar3.c;
            aVar4.f = aVar3.e;
            List<av.a> list = aVar3.f;
            int[] iArr = new int[list.size()];
            for (int i3 = 0; i3 < list.size(); i3++) {
                iArr[i3] = f6069b.get(list.get(i3)).intValue();
            }
            aVar4.g = iArr;
            aVarArr[i] = aVar4;
        }
        aVar2.f6215b = aVarArr;
        return aVar2;
    }

    public ki.a a(kg.a aVar) {
        return new ki.a(b(aVar), Arrays.asList(aVar.c));
    }

    private static List<ki.a.C0120a> b(kg.a aVar) {
        ArrayList arrayList = new ArrayList();
        for (kg.a.C0116a aVar2 : aVar.f6215b) {
            ki.a.C0120a aVar3 = new ki.a.C0120a(aVar2.f6216b, aVar2.c, aVar2.d, a(aVar2.e), aVar2.f, a(aVar2.g));
            arrayList.add(aVar3);
        }
        return arrayList;
    }

    private static nu<String, String> a(kg.a.C0116a.C0117a[] aVarArr) {
        nu<String, String> nuVar = new nu<>();
        for (kg.a.C0116a.C0117a aVar : aVarArr) {
            nuVar.a(aVar.f6217b, aVar.c);
        }
        return nuVar;
    }

    private static List<av.a> a(int[] iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int valueOf : iArr) {
            arrayList.add(f6068a.get(Integer.valueOf(valueOf)));
        }
        return arrayList;
    }
}
