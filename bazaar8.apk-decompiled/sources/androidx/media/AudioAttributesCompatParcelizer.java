package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
import b.F.c;
import b.u.a;

public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f729c = (a) versionedParcel.a(audioAttributesCompat.f729c, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        versionedParcel.a(false, false);
        versionedParcel.b((c) audioAttributesCompat.f729c, 1);
    }
}
