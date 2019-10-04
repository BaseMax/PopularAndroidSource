package b.u;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

@TargetApi(21)
/* compiled from: AudioAttributesImplApi21 */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    public AudioAttributes f3223a;

    /* renamed from: b  reason: collision with root package name */
    public int f3224b = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f3223a.equals(((b) obj).f3223a);
    }

    public int hashCode() {
        return this.f3223a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f3223a;
    }
}
