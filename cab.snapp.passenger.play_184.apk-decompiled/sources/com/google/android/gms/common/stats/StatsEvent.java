package com.google.android.gms.common.stats;

import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbfm;

public abstract class StatsEvent extends zzbfm implements ReflectedParcelable {
    public abstract int getEventType();

    public abstract long getTimeMillis();

    public String toString() {
        long timeMillis = getTimeMillis();
        int eventType = getEventType();
        long zzamd = zzamd();
        String zzame = zzame();
        StringBuilder sb = new StringBuilder("\t".length() + 51 + "\t".length() + String.valueOf(zzame).length());
        sb.append(timeMillis);
        sb.append("\t");
        sb.append(eventType);
        sb.append("\t");
        sb.append(zzamd);
        sb.append(zzame);
        return sb.toString();
    }

    public abstract long zzamd();

    public abstract String zzame();
}
