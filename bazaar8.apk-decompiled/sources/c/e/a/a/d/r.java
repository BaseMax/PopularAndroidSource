package c.e.a.a.d;

import android.util.Pair;
import com.google.android.exoplayer2.drm.DrmSession;
import java.util.Map;

/* compiled from: WidevineUtil */
public final class r {
    public static Pair<Long, Long> a(DrmSession<?> drmSession) {
        Map<String, String> a2 = drmSession.a();
        if (a2 == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(a2, "LicenseDurationRemaining")), Long.valueOf(a(a2, "PlaybackDurationRemaining")));
    }

    public static long a(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                if (str2 != null) {
                    return Long.parseLong(str2);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return -9223372036854775807L;
    }
}
