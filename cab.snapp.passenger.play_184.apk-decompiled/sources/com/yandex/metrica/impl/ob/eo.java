package com.yandex.metrica.impl.ob;

import android.os.Bundle;

class eo {
    eo() {
    }

    /* access modifiers changed from: package-private */
    public void a(Bundle bundle, String str, boolean z, ma maVar) {
        bundle.putString("package_name", str);
        bundle.putBoolean("clte", z);
        if (maVar.n != null) {
            bundle.putBundle("flcc", a(maVar.n));
        }
        if (maVar.o != null) {
            hl hlVar = maVar.o;
            Bundle a2 = a(hlVar);
            a2.putLong("cd", hlVar.f6111a);
            a2.putLong("ci", hlVar.f6112b);
            bundle.putBundle("blcc", a2);
        }
    }

    private static Bundle a(hq hqVar) {
        Bundle bundle = new Bundle();
        bundle.putLong("sputi", hqVar.c);
        bundle.putFloat("spudi", hqVar.d);
        bundle.putInt("sbs", hqVar.e);
        bundle.putInt("mbs", hqVar.f);
        bundle.putLong("maff", hqVar.g);
        bundle.putInt("mrtsl", hqVar.h);
        bundle.putBoolean("ce", hqVar.i);
        return bundle;
    }
}
