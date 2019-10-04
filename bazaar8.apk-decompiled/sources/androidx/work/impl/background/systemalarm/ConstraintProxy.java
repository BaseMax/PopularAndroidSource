package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.NetworkType;
import b.H.a.c.o;
import b.H.b;
import b.H.f;
import java.util.List;

public abstract class ConstraintProxy extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1025a = f.a("ConstraintProxy");

    public static class BatteryChargingProxy extends ConstraintProxy {
    }

    public static class BatteryNotLowProxy extends ConstraintProxy {
    }

    public static class NetworkStateProxy extends ConstraintProxy {
    }

    public static class StorageNotLowProxy extends ConstraintProxy {
    }

    public static void a(Context context, List<o> list) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (o oVar : list) {
            b bVar = oVar.f1475l;
            z |= bVar.f();
            z2 |= bVar.g();
            z3 |= bVar.i();
            z4 |= bVar.b() != NetworkType.NOT_REQUIRED;
            if (z && z2 && z3 && z4) {
                break;
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.a(context, z, z2, z3, z4));
    }

    public void onReceive(Context context, Intent intent) {
        f.a().a(f1025a, String.format("onReceive : %s", new Object[]{intent}), new Throwable[0]);
        context.startService(b.H.a.a.b.b.a(context));
    }
}
