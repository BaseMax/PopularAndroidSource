package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;

public class fd extends fb {

    /* renamed from: a  reason: collision with root package name */
    private final fg f6002a;

    /* renamed from: b  reason: collision with root package name */
    private final ey f6003b;

    public fd(Context context, ey eyVar) {
        this(fg.a(context), eyVar);
    }

    public fd(fg fgVar, ey eyVar) {
        this.f6002a = fgVar;
        this.f6003b = eyVar;
    }

    public void a(Bundle bundle, fa faVar) {
        if (bundle != null) {
            this.f6002a.a(new ff(bundle));
            this.f6003b.a();
        }
    }
}
