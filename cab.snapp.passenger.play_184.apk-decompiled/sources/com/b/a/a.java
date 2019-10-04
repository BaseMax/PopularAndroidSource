package com.b.a;

import android.content.Context;
import android.util.Base64;
import com.facebook.a.a.a.d;
import com.facebook.crypto.CryptoConfig;
import com.facebook.crypto.c;
import com.facebook.crypto.f;

final class a implements e {

    /* renamed from: a  reason: collision with root package name */
    private final c f1958a;

    public a(Context context) {
        this.f1958a = com.facebook.a.a.a.a.get().createDefaultCrypto(new d(context, CryptoConfig.KEY_256));
    }

    public final boolean init() {
        return this.f1958a.isAvailable();
    }

    public final String encrypt(String str, String str2) throws Exception {
        return Base64.encodeToString(this.f1958a.encrypt(str2.getBytes(), f.create(str)), 2);
    }

    public final String decrypt(String str, String str2) throws Exception {
        f create = f.create(str);
        return new String(this.f1958a.decrypt(Base64.decode(str2, 2), create));
    }
}
