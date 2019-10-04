package com.webengage.sdk.android;

import android.app.job.JobParameters;
import android.app.job.JobService;
import com.webengage.sdk.android.actions.database.r;

public class WebEngageJobService extends JobService {
    public boolean onStartJob(JobParameters jobParameters) {
        r.c(true);
        WebEngage.get().f(null);
        return true;
    }

    public boolean onStopJob(JobParameters jobParameters) {
        return r.f();
    }
}
