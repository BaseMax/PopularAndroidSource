package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.yandex.metrica.impl.i;
import org.a.c;

public class ck extends cm {
    public ck(ac acVar) {
        super(acVar);
    }

    public boolean a(i iVar) {
        String c = iVar.c();
        if (!TextUtils.isEmpty(c)) {
            try {
                c cVar = new c(c);
                if ("open".equals(cVar.optString("type")) && a(cVar.optString("link"))) {
                    a().s();
                    a().H().a();
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String queryParameter = Uri.parse(str).getQueryParameter(Constants.REFERRER);
                if (!TextUtils.isEmpty(queryParameter)) {
                    for (String str2 : queryParameter.split("&")) {
                        int indexOf = str2.indexOf("=");
                        if (indexOf >= 0 && "reattribution".equals(Uri.decode(str2.substring(0, indexOf))) && "1".equals(Uri.decode(str2.substring(indexOf + 1)))) {
                            return true;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
