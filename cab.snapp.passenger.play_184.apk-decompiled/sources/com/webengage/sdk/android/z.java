package com.webengage.sdk.android;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.webengage.sdk.android.utils.e;
import java.util.List;

class z {

    /* renamed from: a  reason: collision with root package name */
    Context f5608a = null;

    z(Context context) {
        this.f5608a = context.getApplicationContext();
    }

    private void a(String str, List<Object> list) {
        if (list != null) {
            AlarmManager alarmManager = (AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM);
            for (int i = 0; i < list.size(); i++) {
                Long l = (Long) list.get(i);
                if (l != null) {
                    PendingIntent a2 = PendingIntentFactory.a(str, l.longValue(), this.f5608a);
                    if (a2 != null) {
                        if (Build.VERSION.SDK_INT >= 23) {
                            alarmManager.setAndAllowWhileIdle(0, System.currentTimeMillis() + l.longValue(), a2);
                        } else {
                            alarmManager.set(0, System.currentTimeMillis() + l.longValue(), a2);
                        }
                    }
                }
            }
        }
    }

    private void b(String str, List<Object> list) {
        if (list != null) {
            AlarmManager alarmManager = (AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM);
            for (int i = 0; i < list.size(); i++) {
                Long l = (Long) list.get(i);
                if (l != null) {
                    PendingIntent a2 = PendingIntentFactory.a(str, l.longValue(), this.f5608a);
                    if (a2 != null) {
                        alarmManager.cancel(a2);
                    }
                }
            }
        }
    }

    private int e() {
        return (this.f5608a.getPackageName() + WebEngage.get().getWebEngageConfig().getWebEngageKey()).hashCode();
    }

    /* access modifiers changed from: protected */
    public void a() {
        ((AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntentFactory.a(this.f5608a));
    }

    /* access modifiers changed from: protected */
    public void a(long j) {
        AlarmManager alarmManager = (AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setAndAllowWhileIdle(0, j, PendingIntentFactory.a(this.f5608a));
        } else {
            alarmManager.set(0, j, PendingIntentFactory.a(this.f5608a));
        }
    }

    /* access modifiers changed from: protected */
    public void a(List<Object> list) {
        a("we_wk_page_delay", list);
    }

    /* access modifiers changed from: protected */
    public void b() {
        ((AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntentFactory.d(this.f5608a));
    }

    /* access modifiers changed from: protected */
    public void b(long j) {
        AlarmManager alarmManager = (AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setAndAllowWhileIdle(1, j, PendingIntentFactory.b(this.f5608a));
        } else {
            alarmManager.set(1, j, PendingIntentFactory.b(this.f5608a));
        }
    }

    /* access modifiers changed from: protected */
    public void b(List<Object> list) {
        b("we_wk_page_delay", list);
    }

    /* access modifiers changed from: protected */
    public void c() {
        ((AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntentFactory.e(this.f5608a));
    }

    /* access modifiers changed from: protected */
    public void c(long j) {
        ((AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, j, PendingIntentFactory.c(this.f5608a));
    }

    /* access modifiers changed from: protected */
    public void c(List<Object> list) {
        a("we_wk_session_delay", list);
    }

    /* access modifiers changed from: protected */
    public void d(long j) {
        ((AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, j, PendingIntentFactory.d(this.f5608a));
    }

    /* access modifiers changed from: protected */
    public void d(List<Object> list) {
        b("we_wk_session_delay", list);
    }

    /* access modifiers changed from: package-private */
    public boolean d() {
        int e = e();
        if (Build.VERSION.SDK_INT < 21) {
            return PendingIntentFactory.a(this.f5608a, e, 536870912) != null;
        }
        JobScheduler jobScheduler = (JobScheduler) this.f5608a.getSystemService("jobscheduler");
        if (jobScheduler != null) {
            for (JobInfo id : jobScheduler.getAllPendingJobs()) {
                if (id.getId() == e) {
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void e(long j) {
        ((AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, j, PendingIntentFactory.e(this.f5608a));
    }

    /* access modifiers changed from: package-private */
    public void f(long j) {
        int e = e();
        if (Build.VERSION.SDK_INT >= 21) {
            JobScheduler jobScheduler = (JobScheduler) this.f5608a.getSystemService("jobscheduler");
            if (jobScheduler != null) {
                JobInfo.Builder builder = new JobInfo.Builder(e, new ComponentName(this.f5608a, WebEngageJobService.class));
                builder.setMinimumLatency(j);
                builder.setRequiredNetworkType(1);
                builder.setRequiresCharging(false);
                if (Build.VERSION.SDK_INT >= 26) {
                    builder.setRequiresBatteryNotLow(true);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    builder.setPrefetch(true);
                }
                if (e.a("android.permission.RECEIVE_BOOT_COMPLETED", this.f5608a)) {
                    builder.setPersisted(true);
                } else {
                    Logger.e("WebEngage", "For WebEngage push amplification to work even after boot-up, add RECEIVE_BOOT_COMPLETED permission in the AndroidManifest.");
                }
                jobScheduler.schedule(builder.build());
            }
            return;
        }
        AlarmManager alarmManager = (AlarmManager) this.f5608a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null) {
            alarmManager.set(1, System.currentTimeMillis() + j, PendingIntentFactory.a(this.f5608a, e, 134217728));
        }
    }
}
