package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import org.a.b;
import org.a.c;

public class ln {

    /* renamed from: a  reason: collision with root package name */
    private final c f6381a = new c();

    public void a(String str) {
        a("uuid", str);
    }

    public void b(String str) {
        a("device_id", str);
    }

    public void c(String str) {
        a("google_aid", str);
    }

    public void d(String str) {
        a("android_id", str);
    }

    private void a(String str, String str2) {
        if (!(TextUtils.isEmpty(str) || TextUtils.isEmpty(str2))) {
            try {
                this.f6381a.put(str, (Object) str2);
            } catch (b unused) {
            }
        }
    }

    public String a() throws b {
        return this.f6381a.toString();
    }
}
