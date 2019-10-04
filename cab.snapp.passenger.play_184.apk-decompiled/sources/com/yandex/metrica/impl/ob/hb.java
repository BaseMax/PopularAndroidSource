package com.yandex.metrica.impl.ob;

public class hb {

    /* renamed from: a  reason: collision with root package name */
    public final String f6085a;

    /* renamed from: b  reason: collision with root package name */
    public final String f6086b;

    public hb(String str, String str2) {
        this.f6085a = str;
        this.f6086b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            hb hbVar = (hb) obj;
            String str = this.f6085a;
            if (str == null ? hbVar.f6085a != null : !str.equals(hbVar.f6085a)) {
                return false;
            }
            String str2 = this.f6086b;
            String str3 = hbVar.f6086b;
            if (str2 != null) {
                return str2.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f6085a;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6086b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }

    public String toString() {
        return "AppMetricaDeviceIdentifiers{deviceID='" + this.f6085a + '\'' + ", deviceIDHash='" + this.f6086b + '\'' + '}';
    }
}
