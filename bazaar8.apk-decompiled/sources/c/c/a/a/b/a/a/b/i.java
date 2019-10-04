package c.c.a.a.b.a.a.b;

import c.c.a.a.b.a.a.a.a;
import c.c.a.e.j.b;
import com.google.gson.JsonSyntaxException;
import h.f.b.f;
import h.f.b.j;

/* compiled from: LocalActionLog.kt */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public long f4526a;

    /* renamed from: b  reason: collision with root package name */
    public long f4527b;

    /* renamed from: c  reason: collision with root package name */
    public String f4528c;

    public i(long j2, long j3, String str) {
        j.b(str, "json");
        this.f4526a = j2;
        this.f4527b = j3;
        this.f4528c = str;
    }

    public final long a() {
        return this.f4526a;
    }

    public final String b() {
        return this.f4528c;
    }

    public final long c() {
        return this.f4527b;
    }

    public final a d() {
        try {
            Object a2 = b.f5549b.a().a(this.f4528c, a.class);
            j.a(a2, "GSON().fromJson(this.jso…ionLogEntity::class.java)");
            return (a) a2;
        } catch (JsonSyntaxException e2) {
            c.c.a.c.c.a.f4699b.a((Throwable) e2);
            return a.f4498b.a();
        }
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof i) {
                i iVar = (i) obj;
                if (this.f4526a == iVar.f4526a) {
                    if (!(this.f4527b == iVar.f4527b) || !j.a((Object) this.f4528c, (Object) iVar.f4528c)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j2 = this.f4526a;
        long j3 = this.f4527b;
        int i2 = ((((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        String str = this.f4528c;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "LocalActionLog(id=" + this.f4526a + ", when=" + this.f4527b + ", json=" + this.f4528c + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(long j2, long j3, String str, int i2, f fVar) {
        this((i2 & 1) != 0 ? 0 : j2, j3, str);
    }
}
