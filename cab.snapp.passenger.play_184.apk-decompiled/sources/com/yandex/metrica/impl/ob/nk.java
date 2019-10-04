package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.i;
import com.yandex.metrica.impl.ob.ka;
import com.yandex.metrica.impl.s;
import java.util.Locale;

public class nk extends na {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f6455a = {3, 6, 4};

    /* renamed from: b  reason: collision with root package name */
    private static final nk f6456b = new nk();
    private static String c = "";

    public String d() {
        return "AppMetrica";
    }

    public nk() {
        super(false);
    }

    public static nk f() {
        return f6456b;
    }

    public static void a(Context context) {
        c = String.format("[%s] : ", new Object[]{context.getPackageName()});
    }

    /* access modifiers changed from: package-private */
    public String c(String str, Object[] objArr) {
        return String.format(Locale.US, str, objArr);
    }

    /* access modifiers changed from: package-private */
    public String e() {
        return bt.b(c, "");
    }

    public void a(i iVar, String str) {
        if (s.b(iVar.e())) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(": ");
            sb.append(iVar.b());
            if (s.c(iVar.e()) && !TextUtils.isEmpty(iVar.c())) {
                sb.append(" with value ");
                sb.append(iVar.c());
            }
            a(sb.toString());
        }
    }

    public void a(ka.c.e eVar, String str) {
        for (ka.c.e.a a2 : eVar.d) {
            a(a2, str);
        }
    }

    public void a(ka.c.e.a aVar, String str) {
        String str2;
        int[] iArr = f6455a;
        int length = iArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (aVar.d == iArr[i]) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(": ");
            if (aVar.d == 3 && TextUtils.isEmpty(aVar.e)) {
                str2 = s.a.EVENT_TYPE_NATIVE_CRASH.b();
            } else if (aVar.d == 4) {
                StringBuilder sb2 = new StringBuilder(aVar.e);
                if (aVar.f != null) {
                    String str3 = new String(aVar.f);
                    if (!TextUtils.isEmpty(str3)) {
                        sb2.append(" with value ");
                        sb2.append(str3);
                    }
                }
                str2 = sb2.toString();
            } else {
                str2 = aVar.e;
            }
            sb.append(str2);
            a(sb.toString());
        }
    }
}
