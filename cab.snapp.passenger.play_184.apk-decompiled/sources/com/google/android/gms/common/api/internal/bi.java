package com.google.android.gms.common.api.internal;

public final class bi<L> {

    /* renamed from: a  reason: collision with root package name */
    private final L f2794a;

    /* renamed from: b  reason: collision with root package name */
    private final String f2795b;

    bi(L l, String str) {
        this.f2794a = l;
        this.f2795b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bi)) {
            return false;
        }
        bi biVar = (bi) obj;
        return this.f2794a == biVar.f2794a && this.f2795b.equals(biVar.f2795b);
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f2794a) * 31) + this.f2795b.hashCode();
    }
}
