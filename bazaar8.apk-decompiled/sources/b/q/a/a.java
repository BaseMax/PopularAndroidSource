package b.q.a;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;

@Deprecated
/* compiled from: WakefulBroadcastReceiver */
public abstract class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final SparseArray<PowerManager.WakeLock> f3138a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    public static int f3139b = 1;

    public static boolean a(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        synchronized (f3138a) {
            PowerManager.WakeLock wakeLock = f3138a.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                f3138a.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            return true;
        }
    }

    public static ComponentName b(Context context, Intent intent) {
        synchronized (f3138a) {
            int i2 = f3139b;
            f3139b++;
            if (f3139b <= 0) {
                f3139b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i2);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000);
            f3138a.put(i2, newWakeLock);
            return startService;
        }
    }
}
