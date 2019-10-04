package com.b.a;

import android.util.Base64;

public final class n implements e {
    public final boolean init() {
        return true;
    }

    public final String encrypt(String str, String str2) throws Exception {
        return Base64.encodeToString(str2.getBytes(), 0);
    }

    public final String decrypt(String str, String str2) throws Exception {
        return new String(Base64.decode(str2, 0));
    }
}
