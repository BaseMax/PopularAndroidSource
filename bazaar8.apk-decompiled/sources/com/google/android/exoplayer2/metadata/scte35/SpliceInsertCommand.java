package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.F;
import c.e.a.a.o.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpliceInsertCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new c();

    /* renamed from: a  reason: collision with root package name */
    public final long f12650a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f12651b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12652c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12653d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12654e;

    /* renamed from: f  reason: collision with root package name */
    public final long f12655f;

    /* renamed from: g  reason: collision with root package name */
    public final long f12656g;

    /* renamed from: h  reason: collision with root package name */
    public final List<a> f12657h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f12658i;

    /* renamed from: j  reason: collision with root package name */
    public final long f12659j;

    /* renamed from: k  reason: collision with root package name */
    public final int f12660k;

    /* renamed from: l  reason: collision with root package name */
    public final int f12661l;
    public final int m;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f12662a;

        /* renamed from: b  reason: collision with root package name */
        public final long f12663b;

        /* renamed from: c  reason: collision with root package name */
        public final long f12664c;

        public /* synthetic */ a(int i2, long j2, long j3, c cVar) {
            this(i2, j2, j3);
        }

        public static a a(Parcel parcel) {
            a aVar = new a(parcel.readInt(), parcel.readLong(), parcel.readLong());
            return aVar;
        }

        public void b(Parcel parcel) {
            parcel.writeInt(this.f12662a);
            parcel.writeLong(this.f12663b);
            parcel.writeLong(this.f12664c);
        }

        public a(int i2, long j2, long j3) {
            this.f12662a = i2;
            this.f12663b = j2;
            this.f12664c = j3;
        }
    }

    public /* synthetic */ SpliceInsertCommand(Parcel parcel, c cVar) {
        this(parcel);
    }

    public static SpliceInsertCommand a(v vVar, long j2, F f2) {
        boolean z;
        int i2;
        int i3;
        int i4;
        long j3;
        boolean z2;
        List list;
        long j4;
        boolean z3;
        boolean z4;
        List list2;
        boolean z5;
        long j5;
        F f3 = f2;
        long w = vVar.w();
        boolean z6 = (vVar.u() & 128) != 0;
        List emptyList = Collections.emptyList();
        if (!z6) {
            int u = vVar.u();
            boolean z7 = (u & 128) != 0;
            boolean z8 = (u & 64) != 0;
            boolean z9 = (u & 32) != 0;
            boolean z10 = (u & 16) != 0;
            long a2 = (!z8 || z10) ? -9223372036854775807L : TimeSignalCommand.a(vVar, j2);
            if (!z8) {
                int u2 = vVar.u();
                list2 = new ArrayList(u2);
                for (int i5 = 0; i5 < u2; i5++) {
                    int u3 = vVar.u();
                    long a3 = !z10 ? TimeSignalCommand.a(vVar, j2) : -9223372036854775807L;
                    a aVar = new a(u3, a3, f3.b(a3), null);
                    list2.add(aVar);
                }
            } else {
                list2 = emptyList;
            }
            if (z9) {
                long u4 = (long) vVar.u();
                z5 = (128 & u4) != 0;
                j5 = ((((u4 & 1) << 32) | vVar.w()) * 1000) / 90;
            } else {
                j5 = -9223372036854775807L;
                z5 = false;
            }
            int A = vVar.A();
            i3 = vVar.u();
            i2 = vVar.u();
            z4 = z7;
            z = z8;
            list = list2;
            boolean z11 = z5;
            i4 = A;
            long j6 = j5;
            z3 = z10;
            j4 = a2;
            z2 = z11;
            j3 = j6;
        } else {
            list = emptyList;
            z4 = false;
            z3 = false;
            j4 = -9223372036854775807L;
            z2 = false;
            j3 = -9223372036854775807L;
            i4 = 0;
            i3 = 0;
            i2 = 0;
            z = false;
        }
        SpliceInsertCommand spliceInsertCommand = new SpliceInsertCommand(w, z6, z4, z, z3, j4, f3.b(j4), list, z2, j3, i4, i3, i2);
        return spliceInsertCommand;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f12650a);
        parcel.writeByte(this.f12651b ? (byte) 1 : 0);
        parcel.writeByte(this.f12652c ? (byte) 1 : 0);
        parcel.writeByte(this.f12653d ? (byte) 1 : 0);
        parcel.writeByte(this.f12654e ? (byte) 1 : 0);
        parcel.writeLong(this.f12655f);
        parcel.writeLong(this.f12656g);
        int size = this.f12657h.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            this.f12657h.get(i3).b(parcel);
        }
        parcel.writeByte(this.f12658i ? (byte) 1 : 0);
        parcel.writeLong(this.f12659j);
        parcel.writeInt(this.f12660k);
        parcel.writeInt(this.f12661l);
        parcel.writeInt(this.m);
    }

    public SpliceInsertCommand(long j2, boolean z, boolean z2, boolean z3, boolean z4, long j3, long j4, List<a> list, boolean z5, long j5, int i2, int i3, int i4) {
        this.f12650a = j2;
        this.f12651b = z;
        this.f12652c = z2;
        this.f12653d = z3;
        this.f12654e = z4;
        this.f12655f = j3;
        this.f12656g = j4;
        this.f12657h = Collections.unmodifiableList(list);
        this.f12658i = z5;
        this.f12659j = j5;
        this.f12660k = i2;
        this.f12661l = i3;
        this.m = i4;
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.f12650a = parcel.readLong();
        boolean z = false;
        this.f12651b = parcel.readByte() == 1;
        this.f12652c = parcel.readByte() == 1;
        this.f12653d = parcel.readByte() == 1;
        this.f12654e = parcel.readByte() == 1;
        this.f12655f = parcel.readLong();
        this.f12656g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(a.a(parcel));
        }
        this.f12657h = Collections.unmodifiableList(arrayList);
        this.f12658i = parcel.readByte() == 1 ? true : z;
        this.f12659j = parcel.readLong();
        this.f12660k = parcel.readInt();
        this.f12661l = parcel.readInt();
        this.m = parcel.readInt();
    }
}
