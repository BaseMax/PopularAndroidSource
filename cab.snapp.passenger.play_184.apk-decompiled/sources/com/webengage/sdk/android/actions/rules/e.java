package com.webengage.sdk.android.actions.rules;

import com.webengage.sdk.android.actions.rules.a.d;
import com.webengage.sdk.android.utils.WebEngageConstant;

public class e {

    /* renamed from: a  reason: collision with root package name */
    private d f5456a = null;

    /* renamed from: b  reason: collision with root package name */
    private d f5457b = null;
    private d c = null;

    public e(String str, String str2, String str3) {
        this.f5456a = new d(str);
        this.f5457b = new d(str2);
        this.c = new d(str3);
    }

    public d a() {
        return this.f5456a;
    }

    public d b() {
        return this.f5457b;
    }

    public d c() {
        return this.c;
    }

    public WebEngageConstant.c d() {
        return c().toString().equalsIgnoreCase("true") ? WebEngageConstant.c.PAGE_RULE : WebEngageConstant.c.EVENT_RULE;
    }

    public boolean equals(Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (eVar.f5456a.equals(this.f5456a) && eVar.f5457b.equals(this.f5457b) && eVar.c.equals(this.c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f5456a.toString() + this.f5457b.toString() + this.c.toString()).hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String property = System.getProperty("line.separator");
        sb.append(getClass().getName() + " Object { " + property);
        StringBuilder sb2 = new StringBuilder(" Session Rule : ");
        sb2.append(a());
        sb2.append(property);
        sb.append(sb2.toString());
        sb.append(" Page Rule : " + b() + property);
        sb.append(" Event Rule : " + c() + property);
        sb.append("}");
        return sb.toString();
    }
}
