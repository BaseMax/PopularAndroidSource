package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class MlltFrame extends Id3Frame {
    public static final Parcelable.Creator<MlltFrame> CREATOR = new j();

    /* renamed from: b  reason: collision with root package name */
    public final int f12636b;

    /* renamed from: c  reason: collision with root package name */
    public final int f12637c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12638d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f12639e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f12640f;

    public MlltFrame(int i2, int i3, int i4, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f12636b = i2;
        this.f12637c = i3;
        this.f12638d = i4;
        this.f12639e = iArr;
        this.f12640f = iArr2;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || MlltFrame.class != obj.getClass()) {
            return false;
        }
        MlltFrame mlltFrame = (MlltFrame) obj;
        if (!(this.f12636b == mlltFrame.f12636b && this.f12637c == mlltFrame.f12637c && this.f12638d == mlltFrame.f12638d && Arrays.equals(this.f12639e, mlltFrame.f12639e) && Arrays.equals(this.f12640f, mlltFrame.f12640f))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((527 + this.f12636b) * 31) + this.f12637c) * 31) + this.f12638d) * 31) + Arrays.hashCode(this.f12639e)) * 31) + Arrays.hashCode(this.f12640f);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f12636b);
        parcel.writeInt(this.f12637c);
        parcel.writeInt(this.f12638d);
        parcel.writeIntArray(this.f12639e);
        parcel.writeIntArray(this.f12640f);
    }

    public MlltFrame(Parcel parcel) {
        super("MLLT");
        this.f12636b = parcel.readInt();
        this.f12637c = parcel.readInt();
        this.f12638d = parcel.readInt();
        int[] createIntArray = parcel.createIntArray();
        I.a(createIntArray);
        this.f12639e = createIntArray;
        int[] createIntArray2 = parcel.createIntArray();
        I.a(createIntArray2);
        this.f12640f = createIntArray2;
    }
}
