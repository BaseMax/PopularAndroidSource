package b.H.a.d;

import android.content.Context;
import android.os.PowerManager;
import b.H.f;
import java.util.HashMap;
import java.util.WeakHashMap;

/* compiled from: WakeLocks */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1560a = f.a("WakeLocks");

    /* renamed from: b  reason: collision with root package name */
    public static final WeakHashMap<PowerManager.WakeLock, String> f1561b = new WeakHashMap<>();

    public static PowerManager.WakeLock a(Context context, String str) {
        String str2 = "WorkManager: " + str;
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, str2);
        synchronized (f1561b) {
            f1561b.put(newWakeLock, str2);
        }
        return newWakeLock;
    }

    public static void a() {
        HashMap hashMap = new HashMap();
        synchronized (f1561b) {
            hashMap.putAll(f1561b);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                f.a().e(f1560a, String.format("WakeLock held for %s", new Object[]{hashMap.get(wakeLock)}), new Throwable[0]);
            }
        }
    }
}
