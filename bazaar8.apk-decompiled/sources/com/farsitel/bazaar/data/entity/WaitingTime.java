package com.farsitel.bazaar.data.entity;

/* compiled from: WaitingTime.kt */
public final class WaitingTime {
    public final long value;

    public /* synthetic */ WaitingTime(long j2) {
        this.value = j2;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ WaitingTime m1boximpl(long j2) {
        return new WaitingTime(j2);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m2constructorimpl(long j2) {
        return j2;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3equalsimpl(long j2, Object obj) {
        if (obj instanceof WaitingTime) {
            if (j2 == ((WaitingTime) obj).m7unboximpl()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4equalsimpl0(long j2, long j3) {
        throw null;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m5hashCodeimpl(long j2) {
        return (int) (j2 ^ (j2 >>> 32));
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m6toStringimpl(long j2) {
        return "WaitingTime(value=" + j2 + ")";
    }

    public boolean equals(Object obj) {
        return m3equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m5hashCodeimpl(this.value);
    }

    public String toString() {
        return m6toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m7unboximpl() {
        return this.value;
    }
}
