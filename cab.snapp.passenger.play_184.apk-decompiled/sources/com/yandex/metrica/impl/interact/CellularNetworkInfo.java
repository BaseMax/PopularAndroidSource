package com.yandex.metrica.impl.interact;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.mn;
import com.yandex.metrica.impl.ob.mw;
import com.yandex.metrica.impl.ob.my;
import com.yandex.metrica.impl.ob.mz;
import java.util.HashMap;
import java.util.Map;

public class CellularNetworkInfo {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public String f5831a = "";

    public CellularNetworkInfo(Context context) {
        mw.a(context).a((mz) new mz() {
            public void a(my myVar) {
                mn b2 = myVar.b();
                if (b2 != null) {
                    String g = b2.g();
                    String f = b2.f();
                    Integer c = b2.c();
                    Integer b3 = b2.b();
                    Integer e = b2.e();
                    Integer d = b2.d();
                    Integer a2 = b2.a();
                    HashMap hashMap = new HashMap();
                    hashMap.put("network_type", g);
                    hashMap.put("operator_name", f);
                    String str = null;
                    hashMap.put("country_code", b3 != null ? String.valueOf(b3) : null);
                    hashMap.put("operator_id", c != null ? String.valueOf(c) : null);
                    hashMap.put("cell_id", e != null ? String.valueOf(e) : null);
                    hashMap.put("lac", d != null ? String.valueOf(d) : null);
                    if (a2 != null) {
                        str = String.valueOf(a2);
                    }
                    hashMap.put("signal_strength", str);
                    StringBuilder sb = new StringBuilder();
                    String str2 = "";
                    for (Map.Entry entry : hashMap.entrySet()) {
                        String str3 = (String) entry.getValue();
                        if (!TextUtils.isEmpty(str3)) {
                            sb.append(str2);
                            sb.append((String) entry.getKey());
                            sb.append("=");
                            sb.append(str3);
                            str2 = "&";
                        }
                    }
                    String unused = CellularNetworkInfo.this.f5831a = sb.toString();
                }
            }
        });
    }

    public String getCelluralInfo() {
        return this.f5831a;
    }
}
