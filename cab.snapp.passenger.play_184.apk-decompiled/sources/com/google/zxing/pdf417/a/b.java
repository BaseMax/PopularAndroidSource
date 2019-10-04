package com.google.zxing.pdf417.a;

import com.google.zxing.pdf417.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

final class b {

    /* renamed from: a  reason: collision with root package name */
    final Map<Integer, Integer> f4368a = new HashMap();

    b() {
    }

    /* access modifiers changed from: package-private */
    public final void a(int i) {
        Integer num = this.f4368a.get(Integer.valueOf(i));
        if (num == null) {
            num = 0;
        }
        this.f4368a.put(Integer.valueOf(i), Integer.valueOf(num.intValue() + 1));
    }

    /* access modifiers changed from: package-private */
    public final int[] a() {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        for (Map.Entry next : this.f4368a.entrySet()) {
            if (((Integer) next.getValue()).intValue() > i) {
                i = ((Integer) next.getValue()).intValue();
                arrayList.clear();
                arrayList.add(next.getKey());
            } else if (((Integer) next.getValue()).intValue() == i) {
                arrayList.add(next.getKey());
            }
        }
        return a.toIntArray(arrayList);
    }
}
