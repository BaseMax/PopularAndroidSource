package c.e.a.b.g.f;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@TargetApi(24)
/* renamed from: c.e.a.b.g.f.jc  reason: case insensitive filesystem */
public final class C0837jc {

    /* renamed from: a  reason: collision with root package name */
    public static final Method f10436a = a();

    /* renamed from: b  reason: collision with root package name */
    public static final Method f10437b = b();

    /* renamed from: c  reason: collision with root package name */
    public static volatile _c f10438c = Jc.f10186a;

    /* renamed from: d  reason: collision with root package name */
    public final JobScheduler f10439d;

    public C0837jc(JobScheduler jobScheduler) {
        this.f10439d = jobScheduler;
    }

    public static Method a() {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                return JobScheduler.class.getDeclaredMethod("scheduleAsPackage", new Class[]{JobInfo.class, String.class, Integer.TYPE, String.class});
            } catch (NoSuchMethodException unused) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
                }
            }
        }
        return null;
    }

    public static Method b() {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                return UserHandle.class.getDeclaredMethod("myUserId", null);
            } catch (NoSuchMethodException unused) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "No myUserId method available");
                }
            }
        }
        return null;
    }

    public static int c() {
        Method method = f10437b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(null, new Object[0])).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
                if (Log.isLoggable("JobSchedulerCompat", 6)) {
                    Log.e("JobSchedulerCompat", "myUserId invocation illegal", e2);
                }
            }
        }
        return 0;
    }

    public static final /* synthetic */ boolean d() {
        return false;
    }

    public final int a(JobInfo jobInfo, String str, int i2, String str2) {
        Method method = f10436a;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f10439d, new Object[]{jobInfo, str, Integer.valueOf(i2), str2})).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
                Log.e(str2, "error calling scheduleAsPackage", e2);
            }
        }
        return this.f10439d.schedule(jobInfo);
    }

    public static int a(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (f10436a == null || !f10438c.a() || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) {
            return jobScheduler.schedule(jobInfo);
        }
        return new C0837jc(jobScheduler).a(jobInfo, str, c(), str2);
    }
}
