package com.yandex.metrica;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import com.yandex.metrica.impl.ob.es;
import com.yandex.metrica.impl.ob.et;
import com.yandex.metrica.impl.ob.ey;
import com.yandex.metrica.impl.ob.fa;
import com.yandex.metrica.impl.ob.fc;
import java.util.Locale;

public class ConfigurationJobService extends JobService {

    /* renamed from: a  reason: collision with root package name */
    private es f5609a;

    /* renamed from: b  reason: collision with root package name */
    private fc f5610b;

    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    public void onCreate() {
        super.onCreate();
        Context applicationContext = getApplicationContext();
        String.format(Locale.US, "[ConfigurationJobService:%s]", new Object[]{applicationContext.getPackageName()});
        this.f5609a = new es();
        ey eyVar = new ey(getApplicationContext(), this.f5609a.a(), new et(applicationContext));
        getApplicationContext();
        this.f5610b = new fc(eyVar);
    }

    public boolean onStartJob(final JobParameters jobParameters) {
        if (jobParameters != null) {
            try {
                if (jobParameters.getJobId() == 1512302345) {
                    this.f5609a.a(this.f5610b, null, new fa() {
                        public void a() {
                            ConfigurationJobService.this.jobFinished(jobParameters, false);
                        }
                    });
                    return true;
                }
            } catch (Exception unused) {
                jobFinished(jobParameters, false);
            }
        }
        return false;
    }
}
