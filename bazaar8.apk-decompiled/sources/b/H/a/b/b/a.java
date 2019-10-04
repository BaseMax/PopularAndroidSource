package b.H.a.b.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import b.H.f;

/* compiled from: BatteryChargingTracker */
public class a extends d<Boolean> {

    /* renamed from: h  reason: collision with root package name */
    public static final String f1400h = f.a("BatteryChrgTracker");

    public a(Context context) {
        super(context);
    }

    public IntentFilter d() {
        IntentFilter intentFilter = new IntentFilter();
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.CHARGING");
            intentFilter.addAction("android.os.action.DISCHARGING");
        } else {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        return intentFilter;
    }

    public Boolean a() {
        Intent registerReceiver = this.f1406b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            return Boolean.valueOf(a(registerReceiver));
        }
        f.a().b(f1400h, "getInitialState - null intent received", new Throwable[0]);
        return null;
    }

    public void a(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            f.a().a(f1400h, String.format("Received %s", new Object[]{action}), new Throwable[0]);
            char c2 = 65535;
            switch (action.hashCode()) {
                case -1886648615:
                    if (action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -54942926:
                    if (action.equals("android.os.action.DISCHARGING")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 948344062:
                    if (action.equals("android.os.action.CHARGING")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 1019184907:
                    if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 == 0) {
                a(true);
            } else if (c2 == 1) {
                a(false);
            } else if (c2 == 2) {
                a(true);
            } else if (c2 == 3) {
                a(false);
            }
        }
    }

    public final boolean a(Intent intent) {
        if (Build.VERSION.SDK_INT >= 23) {
            int intExtra = intent.getIntExtra("status", -1);
            if (intExtra == 2 || intExtra == 5) {
                return true;
            }
        } else if (intent.getIntExtra("plugged", 0) != 0) {
            return true;
        }
        return false;
    }
}
