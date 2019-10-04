package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    public final List<b> f12665a;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f12666a;

        /* renamed from: b  reason: collision with root package name */
        public final long f12667b;

        public /* synthetic */ a(int i2, long j2, e eVar) {
            this(i2, j2);
        }

        public static a b(Parcel parcel) {
            return new a(parcel.readInt(), parcel.readLong());
        }

        public final void c(Parcel parcel) {
            parcel.writeInt(this.f12666a);
            parcel.writeLong(this.f12667b);
        }

        public a(int i2, long j2) {
            this.f12666a = i2;
            this.f12667b = j2;
        }
    }

    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final long f12668a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f12669b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f12670c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f12671d;

        /* renamed from: e  reason: collision with root package name */
        public final long f12672e;

        /* renamed from: f  reason: collision with root package name */
        public final List<a> f12673f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f12674g;

        /* renamed from: h  reason: collision with root package name */
        public final long f12675h;

        /* renamed from: i  reason: collision with root package name */
        public final int f12676i;

        /* renamed from: j  reason: collision with root package name */
        public final int f12677j;

        /* renamed from: k  reason: collision with root package name */
        public final int f12678k;

        public b(long j2, boolean z, boolean z2, boolean z3, List<a> list, long j3, boolean z4, long j4, int i2, int i3, int i4) {
            this.f12668a = j2;
            this.f12669b = z;
            this.f12670c = z2;
            this.f12671d = z3;
            this.f12673f = Collections.unmodifiableList(list);
            this.f12672e = j3;
            this.f12674g = z4;
            this.f12675h = j4;
            this.f12676i = i2;
            this.f12677j = i3;
            this.f12678k = i4;
        }

        public static b b(v vVar) {
            boolean z;
            int i2;
            int i3;
            int i4;
            long j2;
            boolean z2;
            long j3;
            ArrayList arrayList;
            boolean z3;
            long j4;
            boolean z4;
            long w = vVar.w();
            boolean z5 = (vVar.u() & 128) != 0;
            ArrayList arrayList2 = new ArrayList();
            if (!z5) {
                int u = vVar.u();
                boolean z6 = (u & 128) != 0;
                boolean z7 = (u & 64) != 0;
                boolean z8 = (u & 32) != 0;
                long w2 = z7 ? vVar.w() : -9223372036854775807L;
                if (!z7) {
                    int u2 = vVar.u();
                    ArrayList arrayList3 = new ArrayList(u2);
                    for (int i5 = 0; i5 < u2; i5++) {
                        arrayList3.add(new a(vVar.u(), vVar.w(), null));
                    }
                    arrayList2 = arrayList3;
                }
                if (z8) {
                    long u3 = (long) vVar.u();
                    z4 = (128 & u3) != 0;
                    j4 = ((((u3 & 1) << 32) | vVar.w()) * 1000) / 90;
                } else {
                    z4 = false;
                    j4 = -9223372036854775807L;
                }
                int A = vVar.A();
                int u4 = vVar.u();
                i2 = vVar.u();
                z = z7;
                j3 = w2;
                j2 = j4;
                arrayList = arrayList2;
                i4 = A;
                i3 = u4;
                z3 = z6;
                z2 = z4;
            } else {
                arrayList = arrayList2;
                z3 = false;
                j3 = -9223372036854775807L;
                z2 = false;
                j2 = -9223372036854775807L;
                i4 = 0;
                i3 = 0;
                i2 = 0;
                z = false;
            }
            b bVar = new b(w, z5, z3, z, arrayList, j3, z2, j2, i4, i3, i2);
            return bVar;
        }

        public final void c(Parcel parcel) {
            parcel.writeLong(this.f12668a);
            parcel.writeByte(this.f12669b ? (byte) 1 : 0);
            parcel.writeByte(this.f12670c ? (byte) 1 : 0);
            parcel.writeByte(this.f12671d ? (byte) 1 : 0);
            int size = this.f12673f.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                this.f12673f.get(i2).c(parcel);
            }
            parcel.writeLong(this.f12672e);
            parcel.writeByte(this.f12674g ? (byte) 1 : 0);
            parcel.writeLong(this.f12675h);
            parcel.writeInt(this.f12676i);
            parcel.writeInt(this.f12677j);
            parcel.writeInt(this.f12678k);
        }

        public b(Parcel parcel) {
            this.f12668a = parcel.readLong();
            boolean z = false;
            this.f12669b = parcel.readByte() == 1;
            this.f12670c = parcel.readByte() == 1;
            this.f12671d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                arrayList.add(a.b(parcel));
            }
            this.f12673f = Collections.unmodifiableList(arrayList);
            this.f12672e = parcel.readLong();
            this.f12674g = parcel.readByte() == 1 ? true : z;
            this.f12675h = parcel.readLong();
            this.f12676i = parcel.readInt();
            this.f12677j = parcel.readInt();
            this.f12678k = parcel.readInt();
        }

        public static b b(Parcel parcel) {
            return new b(parcel);
        }
    }

    public /* synthetic */ SpliceScheduleCommand(Parcel parcel, e eVar) {
        this(parcel);
    }

    public static SpliceScheduleCommand a(v vVar) {
        int u = vVar.u();
        ArrayList arrayList = new ArrayList(u);
        for (int i2 = 0; i2 < u; i2++) {
            arrayList.add(b.b(vVar));
        }
        return new SpliceScheduleCommand((List<b>) arrayList);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        int size = this.f12665a.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            this.f12665a.get(i3).c(parcel);
        }
    }

    public SpliceScheduleCommand(List<b> list) {
        this.f12665a = Collections.unmodifiableList(list);
    }

    public SpliceScheduleCommand(Parcel parcel) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(b.b(parcel));
        }
        this.f12665a = Collections.unmodifiableList(arrayList);
    }
}
