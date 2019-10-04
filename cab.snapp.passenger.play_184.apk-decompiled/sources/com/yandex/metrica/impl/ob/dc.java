package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.e;
import com.yandex.metrica.impl.i;

public class dc extends cm {
    public dc(ac acVar) {
        super(acVar);
    }

    public boolean a(i iVar) {
        String G = a().G();
        String t = iVar.t();
        a().b(t);
        if (!TextUtils.equals(G, t)) {
            a().a(e.a());
        }
        return false;
    }
}
