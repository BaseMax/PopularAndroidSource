package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {
    public abstract String A();

    public String toString() {
        long y = y();
        int x = x();
        long z = z();
        String A = A();
        StringBuilder sb = new StringBuilder(String.valueOf(A).length() + 53);
        sb.append(y);
        sb.append("\t");
        sb.append(x);
        sb.append("\t");
        sb.append(z);
        sb.append(A);
        return sb.toString();
    }

    public abstract int x();

    public abstract long y();

    public abstract long z();
}
