package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f593b = versionedParcel.a(iconCompat.f593b, 1);
        iconCompat.f595d = versionedParcel.a(iconCompat.f595d, 2);
        iconCompat.f596e = versionedParcel.a(iconCompat.f596e, 3);
        iconCompat.f597f = versionedParcel.a(iconCompat.f597f, 4);
        iconCompat.f598g = versionedParcel.a(iconCompat.f598g, 5);
        iconCompat.f599h = (ColorStateList) versionedParcel.a(iconCompat.f599h, 6);
        iconCompat.f601j = versionedParcel.a(iconCompat.f601j, 7);
        iconCompat.c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.a(true, true);
        iconCompat.a(versionedParcel.c());
        int i2 = iconCompat.f593b;
        if (-1 != i2) {
            versionedParcel.b(i2, 1);
        }
        byte[] bArr = iconCompat.f595d;
        if (bArr != null) {
            versionedParcel.b(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f596e;
        if (parcelable != null) {
            versionedParcel.b(parcelable, 3);
        }
        int i3 = iconCompat.f597f;
        if (i3 != 0) {
            versionedParcel.b(i3, 4);
        }
        int i4 = iconCompat.f598g;
        if (i4 != 0) {
            versionedParcel.b(i4, 5);
        }
        ColorStateList colorStateList = iconCompat.f599h;
        if (colorStateList != null) {
            versionedParcel.b((Parcelable) colorStateList, 6);
        }
        String str = iconCompat.f601j;
        if (str != null) {
            versionedParcel.b(str, 7);
        }
    }
}
