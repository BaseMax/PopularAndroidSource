package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Build;
import java.util.List;

public class ir {
    public List<iq> a(Context context, List<iq> list) {
        List<iq> a2 = a(context).a();
        if (nb.a(a2, list)) {
            return null;
        }
        return a2;
    }

    /* access modifiers changed from: package-private */
    public ip a(Context context) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new is(context);
        }
        return new it(context);
    }
}
