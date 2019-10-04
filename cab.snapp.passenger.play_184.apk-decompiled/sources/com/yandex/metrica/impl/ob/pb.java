package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.UUID;

public class pb implements pa<String> {
    public oy a(String str) {
        if (TextUtils.isEmpty(str)) {
            return oy.a(this, "ApiKey is empty. Please, read official documentation how to obtain one: https://tech.yandex.com/metrica-mobile-sdk/doc/mobile-sdk-dg/concepts/android-initialize-docpage/");
        }
        try {
            UUID.fromString(str);
            return oy.a(this);
        } catch (Exception unused) {
            return oy.a(this, "Invalid ApiKey=" + str + ". Please, read official documentation how to obtain one: https://tech.yandex.com/metrica-mobile-sdk/doc/mobile-sdk-dg/concepts/android-initialize-docpage/");
        }
    }
}
