package c.c.a.e.d.m.a;

import com.crashlytics.android.core.MetaDataStore;
import h.f.b.j;

/* compiled from: LocalPurchase.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f5232a;

    /* renamed from: b  reason: collision with root package name */
    public final int f5233b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5234c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5235d;

    /* renamed from: e  reason: collision with root package name */
    public final String f5236e;

    /* renamed from: f  reason: collision with root package name */
    public final String f5237f;

    /* renamed from: g  reason: collision with root package name */
    public final String f5238g;

    /* renamed from: h  reason: collision with root package name */
    public final String f5239h;

    /* renamed from: i  reason: collision with root package name */
    public final String f5240i;

    public a(String str, int i2, String str2, long j2, String str3, String str4, String str5, String str6, String str7) {
        j.b(str, "purchaseToken");
        j.b(str2, MetaDataStore.KEY_USER_ID);
        j.b(str3, "packageName");
        j.b(str4, "productId");
        j.b(str5, "productType");
        j.b(str6, "jsonPurchaseInfo");
        j.b(str7, "signature");
        this.f5232a = str;
        this.f5233b = i2;
        this.f5234c = str2;
        this.f5235d = j2;
        this.f5236e = str3;
        this.f5237f = str4;
        this.f5238g = str5;
        this.f5239h = str6;
        this.f5240i = str7;
    }

    public final String a() {
        return this.f5239h;
    }

    public final String b() {
        return this.f5236e;
    }

    public final String c() {
        return this.f5237f;
    }

    public final String d() {
        return this.f5238g;
    }

    public final long e() {
        return this.f5235d;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (j.a((Object) this.f5232a, (Object) aVar.f5232a)) {
                    if ((this.f5233b == aVar.f5233b) && j.a((Object) this.f5234c, (Object) aVar.f5234c)) {
                        if (!(this.f5235d == aVar.f5235d) || !j.a((Object) this.f5236e, (Object) aVar.f5236e) || !j.a((Object) this.f5237f, (Object) aVar.f5237f) || !j.a((Object) this.f5238g, (Object) aVar.f5238g) || !j.a((Object) this.f5239h, (Object) aVar.f5239h) || !j.a((Object) this.f5240i, (Object) aVar.f5240i)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String f() {
        return this.f5232a;
    }

    public final String g() {
        return this.f5240i;
    }

    public final int h() {
        return this.f5233b;
    }

    public int hashCode() {
        String str = this.f5232a;
        int i2 = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.f5233b) * 31;
        String str2 = this.f5234c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j2 = this.f5235d;
        int i3 = (((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str3 = this.f5236e;
        int hashCode3 = (i3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f5237f;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f5238g;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f5239h;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.f5240i;
        if (str7 != null) {
            i2 = str7.hashCode();
        }
        return hashCode6 + i2;
    }

    public final String i() {
        return this.f5234c;
    }

    public final boolean j() {
        return c.f5244c.b().contains(this.f5236e);
    }

    public final e k() {
        return new e(this.f5234c, this.f5236e, this.f5237f);
    }

    public String toString() {
        return "LocalPurchase(purchaseToken=" + this.f5232a + ", state=" + this.f5233b + ", userId=" + this.f5234c + ", purchaseTime=" + this.f5235d + ", packageName=" + this.f5236e + ", productId=" + this.f5237f + ", productType=" + this.f5238g + ", jsonPurchaseInfo=" + this.f5239h + ", signature=" + this.f5240i + ")";
    }
}
