package com.webengage.sdk.android.actions.database;

import android.content.Context;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.a;
import com.webengage.sdk.android.actions.rules.c;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.WebEngageConstant;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import java.util.Map;

public class k extends a {

    /* renamed from: b  reason: collision with root package name */
    Context f5365b = null;
    String c = null;
    c d = null;

    k(Context context) {
        super(context);
        this.f5365b = context;
    }

    public Object a(Object obj) {
        String str;
        Map<String, Object> map;
        if (((Boolean) obj).booleanValue()) {
            try {
                str = (String) DataType.convert(DataHolder.get().B(), DataType.STRING, false);
            } catch (Exception e) {
                d(e);
                str = null;
            }
            g i = new f.a(WebEngageConstant.d.b(i(), h(), WebEngage.get().getWebEngageConfig().getWebEngageKey(), str), e.GET, this.f5365b).b(3).a().i();
            if (i != null && i.i()) {
                this.c = h().isEmpty() ? i() : h();
                try {
                    map = com.webengage.sdk.android.utils.f.a(i.e(), true);
                } catch (Exception e2) {
                    d(e2);
                    map = null;
                }
                if (map != null) {
                    DataHolder.get().a(f.JOURNEY.toString(), map.get("journey"));
                }
            } else if (i != null) {
                i.n();
            }
        }
        return null;
    }

    public Object a(Map<String, Object> map) {
        return Boolean.valueOf(DataHolder.get().B() != null);
    }

    public void b(Object obj) {
    }
}
