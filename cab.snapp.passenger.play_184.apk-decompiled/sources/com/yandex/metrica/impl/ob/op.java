package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;

public class op extends oi<String> {

    /* renamed from: a  reason: collision with root package name */
    private final nk f6486a;

    public /* bridge */ /* synthetic */ int a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ String b() {
        return super.b();
    }

    public op(int i, String str) {
        this(i, str, null);
    }

    public op(int i, String str, nk nkVar) {
        super(i, str);
        this.f6486a = nkVar;
    }

    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (bytes.length <= a()) {
                return str;
            }
            String str2 = new String(bytes, 0, a(), "UTF-8");
            try {
                if (this.f6486a != null && this.f6486a.b()) {
                    nk.f().b("\"%s\" %s exceeded limit of %d bytes", b(), str, Integer.valueOf(a()));
                }
            } catch (UnsupportedEncodingException unused) {
            }
            return str2;
        } catch (UnsupportedEncodingException unused2) {
            return str;
        }
    }
}
