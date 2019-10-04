package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.internal.view.SupportMenu;
import java.util.List;

public final class el {
    private static int a(Parcel parcel, int i) {
        parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void a(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt(i | (i2 << 16));
    }

    private static <T extends Parcelable> void a(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    private static void b(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    public static void zza(Parcel parcel, int i, byte b2) {
        a(parcel, i, 4);
        parcel.writeInt(b2);
    }

    public static void zza(Parcel parcel, int i, double d) {
        a(parcel, i, 8);
        parcel.writeDouble(d);
    }

    public static void zza(Parcel parcel, int i, float f) {
        a(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void zza(Parcel parcel, int i, long j) {
        a(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void zza(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle != null) {
            int a2 = a(parcel, i);
            parcel.writeBundle(bundle);
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder != null) {
            int a2 = a(parcel, i);
            parcel.writeStrongBinder(iBinder);
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 != null) {
            int a2 = a(parcel, 2);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                a(parcel, i, 0);
            }
            return;
        }
        int a2 = a(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        b(parcel, a2);
    }

    public static void zza(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            a(parcel, 3, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
    }

    public static void zza(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            a(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        }
    }

    public static void zza(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            a(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        }
    }

    public static void zza(Parcel parcel, int i, Integer num, boolean z) {
        if (num != null) {
            a(parcel, i, 4);
            parcel.writeInt(num.intValue());
        }
    }

    public static void zza(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            a(parcel, i, 8);
            parcel.writeLong(l.longValue());
        }
    }

    public static void zza(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (z) {
                a(parcel, i, 0);
            }
            return;
        }
        int a2 = a(parcel, i);
        parcel.writeString(str);
        b(parcel, a2);
    }

    public static void zza(Parcel parcel, int i, List<Integer> list, boolean z) {
        if (list != null) {
            int a2 = a(parcel, i);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeInt(list.get(i2).intValue());
            }
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, short s) {
        a(parcel, 3, 4);
        parcel.writeInt(s);
    }

    public static void zza(Parcel parcel, int i, boolean z) {
        a(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void zza(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                a(parcel, i, 0);
            }
            return;
        }
        int a2 = a(parcel, i);
        parcel.writeByteArray(bArr);
        b(parcel, a2);
    }

    public static void zza(Parcel parcel, int i, float[] fArr, boolean z) {
        if (fArr != null) {
            int a2 = a(parcel, 7);
            parcel.writeFloatArray(fArr);
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr != null) {
            int a2 = a(parcel, i);
            parcel.writeIntArray(iArr);
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, long[] jArr, boolean z) {
        if (jArr != null) {
            int a2 = a(parcel, i);
            parcel.writeLongArray(jArr);
            b(parcel, a2);
        }
    }

    public static <T extends Parcelable> void zza(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr != null) {
            int a2 = a(parcel, i);
            parcel.writeInt(r7);
            for (T t : tArr) {
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    a(parcel, t, i2);
                }
            }
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr != null) {
            int a2 = a(parcel, i);
            parcel.writeStringArray(strArr);
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, boolean[] zArr, boolean z) {
        if (zArr != null) {
            int a2 = a(parcel, i);
            parcel.writeBooleanArray(zArr);
            b(parcel, a2);
        }
    }

    public static void zza(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr != null) {
            int a2 = a(parcel, i);
            parcel.writeInt(r5);
            for (byte[] writeByteArray : bArr) {
                parcel.writeByteArray(writeByteArray);
            }
            b(parcel, a2);
        }
    }

    public static void zzai(Parcel parcel, int i) {
        b(parcel, i);
    }

    public static void zzb(Parcel parcel, int i, List<String> list, boolean z) {
        if (list != null) {
            int a2 = a(parcel, i);
            parcel.writeStringList(list);
            b(parcel, a2);
        }
    }

    public static void zzc(Parcel parcel, int i, int i2) {
        a(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static <T extends Parcelable> void zzc(Parcel parcel, int i, List<T> list, boolean z) {
        if (list == null) {
            if (z) {
                a(parcel, i, 0);
            }
            return;
        }
        int a2 = a(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcelable parcelable = (Parcelable) list.get(i2);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                a(parcel, parcelable, 0);
            }
        }
        b(parcel, a2);
    }

    public static void zzd(Parcel parcel, int i, List list, boolean z) {
        if (list != null) {
            int a2 = a(parcel, i);
            parcel.writeList(list);
            b(parcel, a2);
        }
    }

    public static int zze(Parcel parcel) {
        return a(parcel, 20293);
    }
}
