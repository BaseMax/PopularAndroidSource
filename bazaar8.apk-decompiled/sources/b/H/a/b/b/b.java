package b.H.a.b.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import b.H.f;

/* compiled from: BatteryNotLowTracker */
public class b extends d<Boolean> {

    /* renamed from: h  reason: collision with root package name */
    public static final String f1401h = f.a("BatteryNotLowTracker");

    public b(Context context) {
        super(context);
    }

    public IntentFilter d() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    public Boolean a() {
        Intent registerReceiver = this.f1406b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            f.a().b(f1401h, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        int intExtra = registerReceiver.getIntExtra("plugged", 0);
        int intExtra2 = registerReceiver.getIntExtra("status", -1);
        float intExtra3 = ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
        boolean z = true;
        if (intExtra == 0 && intExtra2 != 1 && intExtra3 <= 0.15f) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public void a(Context context, Intent intent) {
        if (intent.getAction() != null) {
            f.a().a(f1401h, String.format("Received %s", new Object[]{intent.getAction()}), new Throwable[0]);
            String action = intent.getAction();
            char c2 = 65535;
            int hashCode = action.hashCode();
            if (hashCode != -1980154005) {
                if (hashCode == 490310653 && action.equals("android.intent.action.BATTERY_LOW")) {
                    c2 = 1;
                }
            } else if (action.equals("android.intent.action.BATTERY_OKAY")) {
                c2 = 0;
            }
            if (c2 == 0) {
                a(true);
            } else if (c2 == 1) {
                a(false);
            }
        }
    }
}
