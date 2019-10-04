package com.yandex.metrica.impl.ob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import com.yandex.metrica.ConfigurationJobService;

public class et implements ez {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5984a;

    /* renamed from: b  reason: collision with root package name */
    private final JobScheduler f5985b;

    public et(Context context) {
        this(context, (JobScheduler) context.getSystemService("jobscheduler"));
    }

    public void a(long j) {
        this.f5985b.schedule(new JobInfo.Builder(1512302345, new ComponentName(this.f5984a.getPackageName(), ConfigurationJobService.class.getName())).setPeriodic(j).build());
    }

    public void a() {
        this.f5985b.cancel(1512302345);
    }

    et(Context context, JobScheduler jobScheduler) {
        this.f5984a = context;
        this.f5985b = jobScheduler;
    }
}
