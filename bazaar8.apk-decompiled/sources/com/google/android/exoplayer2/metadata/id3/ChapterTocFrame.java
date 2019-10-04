package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.o.I;
import java.util.Arrays;

public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new e();

    /* renamed from: b  reason: collision with root package name */
    public final String f12620b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12621c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f12622d;

    /* renamed from: e  reason: collision with root package name */
    public final String[] f12623e;

    /* renamed from: f  reason: collision with root package name */
    public final Id3Frame[] f12624f;

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f12620b = str;
        this.f12621c = z;
        this.f12622d = z2;
        this.f12623e = strArr;
        this.f12624f = id3FrameArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterTocFrame.class != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        if (this.f12621c != chapterTocFrame.f12621c || this.f12622d != chapterTocFrame.f12622d || !I.a((Object) this.f12620b, (Object) chapterTocFrame.f12620b) || !Arrays.equals(this.f12623e, chapterTocFrame.f12623e) || !Arrays.equals(this.f12624f, chapterTocFrame.f12624f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i2 = (((true + (this.f12621c ? 1 : 0)) * 31) + (this.f12622d ? 1 : 0)) * 31;
        String str = this.f12620b;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12620b);
        parcel.writeByte(this.f12621c ? (byte) 1 : 0);
        parcel.writeByte(this.f12622d ? (byte) 1 : 0);
        parcel.writeStringArray(this.f12623e);
        parcel.writeInt(this.f12624f.length);
        for (Id3Frame writeParcelable : this.f12624f) {
            parcel.writeParcelable(writeParcelable, 0);
        }
    }

    public ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        I.a(readString);
        this.f12620b = readString;
        boolean z = true;
        this.f12621c = parcel.readByte() != 0;
        this.f12622d = parcel.readByte() == 0 ? false : z;
        String[] createStringArray = parcel.createStringArray();
        I.a(createStringArray);
        this.f12623e = createStringArray;
        int readInt = parcel.readInt();
        this.f12624f = new Id3Frame[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f12624f[i2] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }
}
