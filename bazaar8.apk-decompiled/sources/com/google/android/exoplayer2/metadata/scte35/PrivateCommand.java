package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.v;

public final class PrivateCommand extends SpliceCommand {
    public static final Parcelable.Creator<PrivateCommand> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final long f12647a;

    /* renamed from: b  reason: collision with root package name */
    public final long f12648b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f12649c;

    public /* synthetic */ PrivateCommand(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static PrivateCommand a(v vVar, int i2, long j2) {
        long w = vVar.w();
        byte[] bArr = new byte[(i2 - 4)];
        vVar.a(bArr, 0, bArr.length);
        PrivateCommand privateCommand = new PrivateCommand(w, bArr, j2);
        return privateCommand;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.f12647a);
        parcel.writeLong(this.f12648b);
        parcel.writeInt(this.f12649c.length);
        parcel.writeByteArray(this.f12649c);
    }

    public PrivateCommand(long j2, byte[] bArr, long j3) {
        this.f12647a = j3;
        this.f12648b = j2;
        this.f12649c = bArr;
    }

    public PrivateCommand(Parcel parcel) {
        this.f12647a = parcel.readLong();
        this.f12648b = parcel.readLong();
        this.f12649c = new byte[parcel.readInt()];
        parcel.readByteArray(this.f12649c);
    }
}
