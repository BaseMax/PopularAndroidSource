package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.yandex.metrica.impl.i;

public class nx implements oc {

    /* renamed from: a  reason: collision with root package name */
    private final nw f6466a;

    nx(Context context) {
        this(new nv(context));
    }

    nx(nv nvVar) {
        this(new nw("AES/CBC/PKCS5Padding", nvVar.a(), nvVar.b()));
    }

    nx(nw nwVar) {
        this.f6466a = nwVar;
    }

    public ob a(i iVar) {
        String c = iVar.c();
        String str = null;
        if (!TextUtils.isEmpty(c)) {
            try {
                byte[] a2 = this.f6466a.a(c.getBytes("UTF-8"));
                if (a2 != null) {
                    str = Base64.encodeToString(a2, 0);
                }
            } catch (Exception unused) {
            }
        }
        return new ob(iVar.c(str), a());
    }

    public byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (bArr == null || bArr.length <= 0) {
            return bArr2;
        }
        try {
            return this.f6466a.b(Base64.decode(bArr, 0));
        } catch (Exception unused) {
            return bArr2;
        }
    }

    public oe a() {
        return oe.AES_VALUE_ENCRYPTION;
    }
}
