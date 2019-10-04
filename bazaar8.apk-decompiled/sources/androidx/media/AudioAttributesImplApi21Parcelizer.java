package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;
import b.u.b;

public final class AudioAttributesImplApi21Parcelizer {
    public static b read(VersionedParcel versionedParcel) {
        b bVar = new b();
        bVar.f3223a = (AudioAttributes) versionedParcel.a(bVar.f3223a, 1);
        bVar.f3224b = versionedParcel.a(bVar.f3224b, 2);
        return bVar;
    }

    public static void write(b bVar, VersionedParcel versionedParcel) {
        versionedParcel.a(false, false);
        versionedParcel.b((Parcelable) bVar.f3223a, 1);
        versionedParcel.b(bVar.f3224b, 2);
    }
}
