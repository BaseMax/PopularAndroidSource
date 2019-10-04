package com.google.android.gms.internal.measurement;

public final class zzdu extends zzdz {
    public final int zzacd;
    public final int zzace;

    public zzdu(byte[] bArr, int i2, int i3) {
        super(bArr);
        zzdp.b(i2, i2 + i3, bArr.length);
        this.zzacd = i2;
        this.zzace = i3;
    }

    public final byte a(int i2) {
        int size = size();
        if (((size - (i2 + 1)) | i2) >= 0) {
            return this.zzacg[this.zzacd + i2];
        }
        if (i2 < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i2);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    public final int d() {
        return this.zzacd;
    }

    public final byte e(int i2) {
        return this.zzacg[this.zzacd + i2];
    }

    public final int size() {
        return this.zzace;
    }
}
