package f.a.a.g.a;

import java.util.HashMap;
import java.util.Map;

/* compiled from: Address */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public int f14339a;

    /* renamed from: b  reason: collision with root package name */
    public String f14340b;

    /* renamed from: c  reason: collision with root package name */
    public String f14341c;

    public a() {
        this.f14339a = -1;
        this.f14340b = "";
        this.f14341c = "";
    }

    public void a(String str) {
        this.f14341c = str;
    }

    public void b(String str) {
        this.f14340b = str;
    }

    public int c() {
        return this.f14339a;
    }

    public String d() {
        return this.f14341c;
    }

    public String e() {
        return this.f14340b;
    }

    public Map<String, Object> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("title", this.f14340b);
        hashMap.put("address", this.f14341c);
        hashMap.put("location", new HashMap());
        return hashMap;
    }

    public String b() {
        return this.f14341c;
    }

    public a(int i2, String str, String str2) {
        this.f14339a = i2;
        this.f14340b = str;
        this.f14341c = str2;
    }
}
