package c.e.a.b.h.b;

import android.app.job.JobParameters;

public final /* synthetic */ class Gb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final Eb f10632a;

    /* renamed from: b  reason: collision with root package name */
    public final C0957t f10633b;

    /* renamed from: c  reason: collision with root package name */
    public final JobParameters f10634c;

    public Gb(Eb eb, C0957t tVar, JobParameters jobParameters) {
        this.f10632a = eb;
        this.f10633b = tVar;
        this.f10634c = jobParameters;
    }

    public final void run() {
        this.f10632a.a(this.f10633b, this.f10634c);
    }
}
