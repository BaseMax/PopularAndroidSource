package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.LinkedList;
import java.util.List;

public class oz implements pa<List<oy>> {
    public oy a(List<oy> list) {
        LinkedList linkedList = new LinkedList();
        boolean z = true;
        for (oy next : list) {
            if (!next.a()) {
                linkedList.add(next.b());
                z = false;
            }
        }
        if (z) {
            return oy.a(this);
        }
        return oy.a(this, TextUtils.join(", ", linkedList));
    }
}
