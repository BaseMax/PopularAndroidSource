package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
import b.u.c;

public final class AudioAttributesImplBaseParcelizer {
    public static c read(VersionedParcel versionedParcel) {
        c cVar = new c();
        cVar.f3225a = versionedParcel.a(cVar.f3225a, 1);
        cVar.f3226b = versionedParcel.a(cVar.f3226b, 2);
        cVar.f3227c = versionedParcel.a(cVar.f3227c, 3);
        cVar.f3228d = versionedParcel.a(cVar.f3228d, 4);
        return cVar;
    }

    public static void write(c cVar, VersionedParcel versionedParcel) {
        versionedParcel.a(false, false);
        versionedParcel.b(cVar.f3225a, 1);
        versionedParcel.b(cVar.f3226b, 2);
        versionedParcel.b(cVar.f3227c, 3);
        versionedParcel.b(cVar.f3228d, 4);
    }
}
