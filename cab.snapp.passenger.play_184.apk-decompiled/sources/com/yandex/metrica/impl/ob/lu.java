package com.yandex.metrica.impl.ob;

import android.os.Bundle;

public enum lu {
    UNKNOWN(0),
    NETWORK(1),
    PARSE(2);
    
    private int d;

    private lu(int i) {
        this.d = i;
    }

    public final int a() {
        return this.d;
    }

    public final Bundle a(Bundle bundle) {
        bundle.putInt("startup_error_key_code", a());
        return bundle;
    }

    public static lu b(Bundle bundle) {
        int i = bundle.getInt("startup_error_key_code");
        lu luVar = UNKNOWN;
        if (i == 1) {
            return NETWORK;
        }
        if (i != 2) {
            return luVar;
        }
        return PARSE;
    }
}
