package b.H.a.a.c;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.impl.background.systemjob.SystemJobService;
import b.H.a.c.o;
import b.H.c;
import b.H.f;

/* compiled from: SystemJobInfoConverter */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1381a = f.a("SystemJobInfoConverter");

    /* renamed from: b  reason: collision with root package name */
    public final ComponentName f1382b;

    public b(Context context) {
        this.f1382b = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    public JobInfo a(o oVar, int i2) {
        b.H.b bVar = oVar.f1475l;
        int a2 = a(bVar.b());
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", oVar.f1466c);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", oVar.d());
        JobInfo.Builder extras = new JobInfo.Builder(i2, this.f1382b).setRequiredNetworkType(a2).setRequiresCharging(bVar.g()).setRequiresDeviceIdle(bVar.h()).setExtras(persistableBundle);
        if (!bVar.h()) {
            extras.setBackoffCriteria(oVar.o, oVar.n == BackoffPolicy.LINEAR ? 0 : 1);
        }
        if (!oVar.d()) {
            extras.setMinimumLatency(oVar.f1472i);
        } else if (Build.VERSION.SDK_INT >= 24) {
            extras.setPeriodic(oVar.f1473j, oVar.f1474k);
        } else {
            f.a().a(f1381a, "Flex duration is currently not supported before API 24. Ignoring.", new Throwable[0]);
            extras.setPeriodic(oVar.f1473j);
        }
        if (Build.VERSION.SDK_INT >= 24 && bVar.e()) {
            for (c.a a3 : bVar.a().a()) {
                extras.addTriggerContentUri(a(a3));
            }
            extras.setTriggerContentUpdateDelay(bVar.c());
            extras.setTriggerContentMaxDelay(bVar.d());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(bVar.f());
            extras.setRequiresStorageNotLow(bVar.i());
        }
        return extras.build();
    }

    public static JobInfo.TriggerContentUri a(c.a aVar) {
        return new JobInfo.TriggerContentUri(aVar.a(), aVar.b() ? 1 : 0);
    }

    public static int a(NetworkType networkType) {
        int i2 = a.f1380a[networkType.ordinal()];
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 3) {
            return 2;
        }
        if (i2 != 4) {
            if (i2 == 5 && Build.VERSION.SDK_INT >= 26) {
                return 4;
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            return 3;
        }
        f.a().a(f1381a, String.format("API version too low. Cannot convert network type value %s", new Object[]{networkType}), new Throwable[0]);
        return 1;
    }
}
