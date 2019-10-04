package com.yandex.metrica.impl.ob;

public class az {

    /* renamed from: a  reason: collision with root package name */
    private final String f5876a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5877b;
    private final Integer c;
    private final String d;
    private final bc e;

    public az(String str, String str2, Integer num, String str3, bc bcVar) {
        this.f5876a = str;
        this.f5877b = str2;
        this.c = num;
        this.d = str3;
        this.e = bcVar;
    }

    public bc a() {
        return this.e;
    }

    public String b() {
        return this.f5876a;
    }

    public String c() {
        return this.f5877b;
    }

    public Integer d() {
        return this.c;
    }

    public String e() {
        return this.d;
    }

    public static az a(t tVar) {
        bc bkVar;
        String h = tVar.a().h();
        String f = tVar.b().f();
        int intValue = tVar.a().e().intValue();
        String f2 = tVar.a().f();
        if (tVar.b().r()) {
            bkVar = new bi();
        } else if (tVar.b().q()) {
            bkVar = new bg();
        } else if ("20799a27-fa80-4b36-b2db-0f8141f24180".equals(f)) {
            bkVar = new bl();
        } else {
            bkVar = new bk();
        }
        az azVar = new az(f, h, Integer.valueOf(intValue), f2, bkVar);
        return azVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            az azVar = (az) obj;
            String str = this.f5876a;
            if (str == null ? azVar.f5876a != null : !str.equals(azVar.f5876a)) {
                return false;
            }
            if (!this.f5877b.equals(azVar.f5877b)) {
                return false;
            }
            Integer num = this.c;
            if (num == null ? azVar.c != null : !num.equals(azVar.c)) {
                return false;
            }
            String str2 = this.d;
            if (str2 != null) {
                return str2.equals(azVar.d);
            }
            if (azVar.d == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f5876a;
        int i = 0;
        int hashCode = (((str != null ? str.hashCode() : 0) * 31) + this.f5877b.hashCode()) * 31;
        Integer num = this.c;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode2 + i;
    }

    public String toString() {
        return "ClientDescription{mApiKey='" + this.f5876a + '\'' + ", mPackageName='" + this.f5877b + '\'' + ", mProcessID=" + this.c + ", mProcessSessionID='" + this.d + '\'' + '}';
    }
}
