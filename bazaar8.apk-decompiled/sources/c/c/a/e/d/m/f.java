package c.c.a.e.d.m;

import c.c.a.e.d.m.a.a;
import c.c.a.e.d.m.a.c;
import c.c.a.e.d.m.a.e;
import com.crashlytics.android.core.MetaDataStore;
import h.f.b.j;

/* compiled from: PurchaseEntity.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f5285a;

    /* renamed from: b  reason: collision with root package name */
    public final String f5286b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5287c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5288d;

    /* renamed from: e  reason: collision with root package name */
    public final String f5289e;

    /* renamed from: f  reason: collision with root package name */
    public final String f5290f;

    /* renamed from: g  reason: collision with root package name */
    public final String f5291g;

    /* renamed from: h  reason: collision with root package name */
    public final String f5292h;

    /* renamed from: i  reason: collision with root package name */
    public final String f5293i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f5294j;

    public f(int i2, String str, String str2, long j2, String str3, String str4, String str5, String str6, String str7, boolean z) {
        j.b(str, MetaDataStore.KEY_USER_ID);
        j.b(str2, "purchaseToken");
        j.b(str3, "packageName");
        j.b(str4, "productId");
        j.b(str5, "productType");
        j.b(str6, "jsonPurchaseInfo");
        j.b(str7, "signature");
        this.f5285a = i2;
        this.f5286b = str;
        this.f5287c = str2;
        this.f5288d = j2;
        this.f5289e = str3;
        this.f5290f = str4;
        this.f5291g = str5;
        this.f5292h = str6;
        this.f5293i = str7;
        this.f5294j = z;
    }

    public final boolean a() {
        return c.f5244c.b().contains(this.f5289e) && !c();
    }

    public final boolean b() {
        return this.f5294j;
    }

    public final boolean c() {
        return this.f5294j;
    }

    public final a d() {
        a aVar = new a(this.f5287c, this.f5285a, this.f5286b, this.f5288d, this.f5289e, this.f5290f, this.f5291g, this.f5292h, this.f5293i);
        if (this.f5294j) {
            c.c.a.c.c.a.f4699b.a(new Throwable("we don't save consumed purchases locally"));
        }
        return aVar;
    }

    public final e e() {
        return new e(this.f5286b, this.f5289e, this.f5290f);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof f) {
                f fVar = (f) obj;
                if ((this.f5285a == fVar.f5285a) && j.a((Object) this.f5286b, (Object) fVar.f5286b) && j.a((Object) this.f5287c, (Object) fVar.f5287c)) {
                    if ((this.f5288d == fVar.f5288d) && j.a((Object) this.f5289e, (Object) fVar.f5289e) && j.a((Object) this.f5290f, (Object) fVar.f5290f) && j.a((Object) this.f5291g, (Object) fVar.f5291g) && j.a((Object) this.f5292h, (Object) fVar.f5292h) && j.a((Object) this.f5293i, (Object) fVar.f5293i)) {
                        if (this.f5294j == fVar.f5294j) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i2 = this.f5285a * 31;
        String str = this.f5286b;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f5287c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j2 = this.f5288d;
        int i4 = (((hashCode + hashCode2) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str3 = this.f5289e;
        int hashCode3 = (i4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f5290f;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f5291g;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f5292h;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.f5293i;
        if (str7 != null) {
            i3 = str7.hashCode();
        }
        int i5 = (hashCode6 + i3) * 31;
        boolean z = this.f5294j;
        if (z) {
            z = true;
        }
        return i5 + (z ? 1 : 0);
    }

    public String toString() {
        return "PurchaseEntity(state=" + this.f5285a + ", userId=" + this.f5286b + ", purchaseToken=" + this.f5287c + ", purchaseTime=" + this.f5288d + ", packageName=" + this.f5289e + ", productId=" + this.f5290f + ", productType=" + this.f5291g + ", jsonPurchaseInfo=" + this.f5292h + ", signature=" + this.f5293i + ", isConsumed=" + this.f5294j + ")";
    }
}
