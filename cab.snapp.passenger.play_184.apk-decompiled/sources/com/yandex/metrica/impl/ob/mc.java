package com.yandex.metrica.impl.ob;

public class mc {

    /* renamed from: a  reason: collision with root package name */
    public final long f6422a;

    public mc(long j) {
        this.f6422a = j;
    }

    public String toString() {
        return "StatSending{disabledReportingInterval=" + this.f6422a + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f6422a == ((mc) obj).f6422a;
    }

    public int hashCode() {
        long j = this.f6422a;
        return (int) (j ^ (j >>> 32));
    }
}
