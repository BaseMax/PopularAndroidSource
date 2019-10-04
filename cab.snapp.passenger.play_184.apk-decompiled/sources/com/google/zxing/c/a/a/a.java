package com.google.zxing.c.a.a;

import java.util.List;

final class a {
    private a() {
    }

    static com.google.zxing.common.a a(List<b> list) {
        int size = (list.size() << 1) - 1;
        if (list.get(list.size() - 1).f4266b == null) {
            size--;
        }
        com.google.zxing.common.a aVar = new com.google.zxing.common.a(size * 12);
        int value = list.get(0).f4266b.getValue();
        int i = 0;
        for (int i2 = 11; i2 >= 0; i2--) {
            if (((1 << i2) & value) != 0) {
                aVar.set(i);
            }
            i++;
        }
        for (int i3 = 1; i3 < list.size(); i3++) {
            b bVar = list.get(i3);
            int value2 = bVar.f4265a.getValue();
            int i4 = i;
            for (int i5 = 11; i5 >= 0; i5--) {
                if (((1 << i5) & value2) != 0) {
                    aVar.set(i4);
                }
                i4++;
            }
            if (bVar.f4266b != null) {
                int value3 = bVar.f4266b.getValue();
                for (int i6 = 11; i6 >= 0; i6--) {
                    if (((1 << i6) & value3) != 0) {
                        aVar.set(i4);
                    }
                    i4++;
                }
            }
            i = i4;
        }
        return aVar;
    }
}
