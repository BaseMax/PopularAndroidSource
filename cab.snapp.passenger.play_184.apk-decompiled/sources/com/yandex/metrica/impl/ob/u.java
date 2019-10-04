package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.yandex.metrica.e;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class u {

    /* renamed from: a  reason: collision with root package name */
    public static final String f6504a = UUID.randomUUID().toString();

    /* renamed from: b  reason: collision with root package name */
    private final ContentValues f6505b;

    public static u a(Bundle bundle) {
        if (bundle != null) {
            try {
                ContentValues contentValues = (ContentValues) bundle.getParcelable("CFG_KEY_PROCESS_ENVIRONMENT");
                if (contentValues == null) {
                    return null;
                }
                return new u(contentValues);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public u(Context context) {
        this.f6505b = new ContentValues();
        this.f6505b.put("PROCESS_CFG_PROCESS_ID", Integer.valueOf(Process.myPid()));
        this.f6505b.put("PROCESS_CFG_PROCESS_SESSION_ID", f6504a);
        this.f6505b.put("PROCESS_CFG_SDK_API_LEVEL", 70);
        this.f6505b.put("PROCESS_CFG_PACKAGE_NAME", context.getPackageName());
    }

    private u(ContentValues contentValues) {
        this.f6505b = contentValues == null ? new ContentValues() : contentValues;
    }

    public boolean a() {
        return this.f6505b.containsKey("PROCESS_CFG_CUSTOM_HOSTS");
    }

    public List<String> b() {
        String asString = this.f6505b.getAsString("PROCESS_CFG_CUSTOM_HOSTS");
        if (TextUtils.isEmpty(asString)) {
            return null;
        }
        return ne.b(asString);
    }

    public void a(List<String> list) {
        this.f6505b.put("PROCESS_CFG_CUSTOM_HOSTS", ne.a(list));
    }

    public Map<String, String> c() {
        return ne.a(this.f6505b.getAsString("PROCESS_CFG_CLIDS"));
    }

    public void a(Map<String, String> map) {
        this.f6505b.put("PROCESS_CFG_CLIDS", ne.a((Map) map));
    }

    public String d() {
        return this.f6505b.getAsString("PROCESS_CFG_DISTRIBUTION_REFERRER");
    }

    public void a(String str) {
        this.f6505b.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
    }

    public Integer e() {
        return this.f6505b.getAsInteger("PROCESS_CFG_PROCESS_ID");
    }

    public String f() {
        return this.f6505b.getAsString("PROCESS_CFG_PROCESS_SESSION_ID");
    }

    public int g() {
        return this.f6505b.getAsInteger("PROCESS_CFG_SDK_API_LEVEL").intValue();
    }

    public String h() {
        return this.f6505b.getAsString("PROCESS_CFG_PACKAGE_NAME");
    }

    public void b(Bundle bundle) {
        bundle.putParcelable("CFG_KEY_PROCESS_ENVIRONMENT", this.f6505b);
    }

    public String toString() {
        return "ProcessConfiguration{mParamsMapping=" + this.f6505b + '}';
    }

    public void a(e eVar) {
        if (eVar != null) {
            boolean z = true;
            if (eVar.d != null) {
                a(eVar.d);
            }
            if (eVar.f5649b != null) {
                a(no.c(eVar.f5649b));
            }
            if (eVar.c == null) {
                z = false;
            }
            if (z) {
                a(eVar.c);
            }
        }
    }
}
