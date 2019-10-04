package com.yandex.metrica.impl.ob;

public class iq {

    /* renamed from: a  reason: collision with root package name */
    private final String f6165a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6166b;

    public iq(String str, boolean z) {
        this.f6165a = str;
        this.f6166b = z;
    }

    public boolean a() {
        return this.f6166b;
    }

    public String b() {
        return this.f6165a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        iq iqVar = (iq) obj;
        if (this.f6166b != iqVar.f6166b) {
            return false;
        }
        return this.f6165a.equals(iqVar.f6165a);
    }

    public int hashCode() {
        return (this.f6165a.hashCode() * 31) + (this.f6166b ? 1 : 0);
    }
}
