package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.a.C0744q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;

public final class DrmInitData implements Comparator<SchemeData>, Parcelable {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new j();

    /* renamed from: a  reason: collision with root package name */
    public final SchemeData[] f12562a;

    /* renamed from: b  reason: collision with root package name */
    public int f12563b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12564c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12565d;

    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new k();

        /* renamed from: a  reason: collision with root package name */
        public int f12566a;

        /* renamed from: b  reason: collision with root package name */
        public final UUID f12567b;

        /* renamed from: c  reason: collision with root package name */
        public final String f12568c;

        /* renamed from: d  reason: collision with root package name */
        public final String f12569d;

        /* renamed from: e  reason: collision with root package name */
        public final byte[] f12570e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f12571f;

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, false);
        }

        public boolean b(SchemeData schemeData) {
            return a() && !schemeData.a() && a(schemeData.f12567b);
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            boolean z = true;
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            if (!I.a((Object) this.f12568c, (Object) schemeData.f12568c) || !I.a((Object) this.f12569d, (Object) schemeData.f12569d) || !I.a((Object) this.f12567b, (Object) schemeData.f12567b) || !Arrays.equals(this.f12570e, schemeData.f12570e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            if (this.f12566a == 0) {
                int hashCode = this.f12567b.hashCode() * 31;
                String str = this.f12568c;
                this.f12566a = ((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.f12569d.hashCode()) * 31) + Arrays.hashCode(this.f12570e);
            }
            return this.f12566a;
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.f12567b.getMostSignificantBits());
            parcel.writeLong(this.f12567b.getLeastSignificantBits());
            parcel.writeString(this.f12568c);
            parcel.writeString(this.f12569d);
            parcel.writeByteArray(this.f12570e);
            parcel.writeByte(this.f12571f ? (byte) 1 : 0);
        }

        public SchemeData(UUID uuid, String str, byte[] bArr, boolean z) {
            this(uuid, null, str, bArr, z);
        }

        public boolean a(UUID uuid) {
            return C0744q.f9728a.equals(this.f12567b) || uuid.equals(this.f12567b);
        }

        public SchemeData(UUID uuid, String str, String str2, byte[] bArr, boolean z) {
            C0737e.a(uuid);
            this.f12567b = uuid;
            this.f12568c = str;
            C0737e.a(str2);
            this.f12569d = str2;
            this.f12570e = bArr;
            this.f12571f = z;
        }

        public boolean a() {
            return this.f12570e != null;
        }

        public SchemeData a(byte[] bArr) {
            SchemeData schemeData = new SchemeData(this.f12567b, this.f12568c, this.f12569d, bArr, this.f12571f);
            return schemeData;
        }

        public SchemeData(Parcel parcel) {
            this.f12567b = new UUID(parcel.readLong(), parcel.readLong());
            this.f12568c = parcel.readString();
            String readString = parcel.readString();
            I.a(readString);
            this.f12569d = readString;
            this.f12570e = parcel.createByteArray();
            this.f12571f = parcel.readByte() != 0;
        }
    }

    public DrmInitData(List<SchemeData> list) {
        this(null, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public static DrmInitData a(DrmInitData drmInitData, DrmInitData drmInitData2) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (drmInitData != null) {
            str = drmInitData.f12564c;
            for (SchemeData schemeData : drmInitData.f12562a) {
                if (schemeData.a()) {
                    arrayList.add(schemeData);
                }
            }
        } else {
            str = null;
        }
        if (drmInitData2 != null) {
            if (str == null) {
                str = drmInitData2.f12564c;
            }
            int size = arrayList.size();
            for (SchemeData schemeData2 : drmInitData2.f12562a) {
                if (schemeData2.a() && !a(arrayList, size, schemeData2.f12567b)) {
                    arrayList.add(schemeData2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new DrmInitData(str, (List<SchemeData>) arrayList);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DrmInitData.class != obj.getClass()) {
            return false;
        }
        DrmInitData drmInitData = (DrmInitData) obj;
        if (!I.a((Object) this.f12564c, (Object) drmInitData.f12564c) || !Arrays.equals(this.f12562a, drmInitData.f12562a)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.f12563b == 0) {
            String str = this.f12564c;
            this.f12563b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f12562a);
        }
        return this.f12563b;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f12564c);
        parcel.writeTypedArray(this.f12562a, 0);
    }

    public DrmInitData(String str, List<SchemeData> list) {
        this(str, false, (SchemeData[]) list.toArray(new SchemeData[0]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this((String) null, schemeDataArr);
    }

    public DrmInitData(String str, SchemeData... schemeDataArr) {
        this(str, true, schemeDataArr);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: com.google.android.exoplayer2.drm.DrmInitData$SchemeData[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public DrmInitData(java.lang.String r1, boolean r2, com.google.android.exoplayer2.drm.DrmInitData.SchemeData... r3) {
        /*
            r0 = this;
            r0.<init>()
            r0.f12564c = r1
            if (r2 == 0) goto L_0x000e
            java.lang.Object r1 = r3.clone()
            r3 = r1
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r3 = (com.google.android.exoplayer2.drm.DrmInitData.SchemeData[]) r3
        L_0x000e:
            r0.f12562a = r3
            int r1 = r3.length
            r0.f12565d = r1
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r1 = r0.f12562a
            java.util.Arrays.sort(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DrmInitData.<init>(java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData$SchemeData[]):void");
    }

    public DrmInitData(Parcel parcel) {
        this.f12564c = parcel.readString();
        Object[] createTypedArray = parcel.createTypedArray(SchemeData.CREATOR);
        I.a(createTypedArray);
        this.f12562a = (SchemeData[]) createTypedArray;
        this.f12565d = this.f12562a.length;
    }

    public SchemeData a(int i2) {
        return this.f12562a[i2];
    }

    public DrmInitData a(String str) {
        if (I.a((Object) this.f12564c, (Object) str)) {
            return this;
        }
        return new DrmInitData(str, false, this.f12562a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x001a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.exoplayer2.drm.DrmInitData a(com.google.android.exoplayer2.drm.DrmInitData r3) {
        /*
            r2 = this;
            java.lang.String r0 = r2.f12564c
            if (r0 == 0) goto L_0x0011
            java.lang.String r1 = r3.f12564c
            if (r1 == 0) goto L_0x0011
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x000f
            goto L_0x0011
        L_0x000f:
            r0 = 0
            goto L_0x0012
        L_0x0011:
            r0 = 1
        L_0x0012:
            c.e.a.a.o.C0737e.b(r0)
            java.lang.String r0 = r2.f12564c
            if (r0 == 0) goto L_0x001a
            goto L_0x001c
        L_0x001a:
            java.lang.String r0 = r3.f12564c
        L_0x001c:
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r1 = r2.f12562a
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r3 = r3.f12562a
            java.lang.Object[] r3 = c.e.a.a.o.I.a((T[]) r1, (T[]) r3)
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r3 = (com.google.android.exoplayer2.drm.DrmInitData.SchemeData[]) r3
            com.google.android.exoplayer2.drm.DrmInitData r1 = new com.google.android.exoplayer2.drm.DrmInitData
            r1.<init>((java.lang.String) r0, (com.google.android.exoplayer2.drm.DrmInitData.SchemeData[]) r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DrmInitData.a(com.google.android.exoplayer2.drm.DrmInitData):com.google.android.exoplayer2.drm.DrmInitData");
    }

    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        if (C0744q.f9728a.equals(schemeData.f12567b)) {
            return C0744q.f9728a.equals(schemeData2.f12567b) ? 0 : 1;
        }
        return schemeData.f12567b.compareTo(schemeData2.f12567b);
    }

    public static boolean a(ArrayList<SchemeData> arrayList, int i2, UUID uuid) {
        for (int i3 = 0; i3 < i2; i3++) {
            if (arrayList.get(i3).f12567b.equals(uuid)) {
                return true;
            }
        }
        return false;
    }
}
