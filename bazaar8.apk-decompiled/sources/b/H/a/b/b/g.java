package b.H.a.b.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import b.H.f;

/* compiled from: StorageNotLowTracker */
public class g extends d<Boolean> {

    /* renamed from: h  reason: collision with root package name */
    public static final String f1416h = f.a("StorageNotLowTracker");

    public g(Context context) {
        super(context);
    }

    public IntentFilter d() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    public Boolean a() {
        Intent registerReceiver = this.f1406b.registerReceiver(null, d());
        if (!(registerReceiver == null || registerReceiver.getAction() == null)) {
            String action = registerReceiver.getAction();
            char c2 = 65535;
            int hashCode = action.hashCode();
            if (hashCode != -1181163412) {
                if (hashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    c2 = 0;
                }
            } else if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                c2 = 1;
            }
            if (c2 != 0) {
                if (c2 != 1) {
                    return null;
                }
                return false;
            }
        }
        return true;
    }

    public void a(Context context, Intent intent) {
        if (intent.getAction() != null) {
            f.a().a(f1416h, String.format("Received %s", new Object[]{intent.getAction()}), new Throwable[0]);
            String action = intent.getAction();
            char c2 = 65535;
            int hashCode = action.hashCode();
            if (hashCode != -1181163412) {
                if (hashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    c2 = 0;
                }
            } else if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                c2 = 1;
            }
            if (c2 == 0) {
                a(true);
            } else if (c2 == 1) {
                a(false);
            }
        }
    }
}
