package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.F;
import c.e.a.a.o.v;

public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new f();

    /* renamed from: a  reason: collision with root package name */
    public final long f12679a;

    /* renamed from: b  reason: collision with root package name */
    public final long f12680b;

    public /* synthetic */ TimeSignalCommand(long j2, long j3, f fVar) {
        this(j2, j3);
    }

    public static TimeSignalCommand a(v vVar, long j2, F f2) {
        long a2 = a(vVar, j2);
        return new TimeSignalCommand(a2, f2.b(a2));
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f12679a);
        parcel.writeLong(this.f12680b);
    }

    public TimeSignalCommand(long j2, long j3) {
        this.f12679a = j2;
        this.f12680b = j3;
    }

    public static long a(v vVar, long j2) {
        long u = (long) vVar.u();
        if ((128 & u) != 0) {
            return 8589934591L & ((((u & 1) << 32) | vVar.w()) + j2);
        }
        return -9223372036854775807L;
    }
}
