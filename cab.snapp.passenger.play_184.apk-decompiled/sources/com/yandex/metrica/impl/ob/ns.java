package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.d;
import java.util.Map;
import org.a.b;
import org.a.c;

public class ns {

    public enum a {
        LOGIN(FirebaseAnalytics.a.LOGIN),
        LOGOUT("logout"),
        SWITCH("switch"),
        d("update");
        
        private String e;

        private a(String str) {
            this.e = str;
        }

        public final String toString() {
            return this.e;
        }
    }

    public static d a(String str) {
        d dVar = new d();
        if (!TextUtils.isEmpty(str)) {
            try {
                c cVar = new c(str);
                dVar.a(cVar.optString("UserInfo.UserId", null));
                dVar.b(cVar.optString("UserInfo.Type", null));
                dVar.a((Map<String, String>) ne.a(cVar.optJSONObject("UserInfo.Options")));
            } catch (b unused) {
            }
        }
        return dVar;
    }

    public static String a(a aVar) {
        try {
            c cVar = new c();
            cVar.putOpt("action", aVar.toString());
            return cVar.toString();
        } catch (b unused) {
            return null;
        }
    }
}
