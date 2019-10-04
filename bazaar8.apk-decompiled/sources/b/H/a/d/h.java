package b.H.a.d;

import androidx.work.WorkerParameters;
import b.H.a.m;

/* compiled from: StartWorkRunnable */
public class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public m f1551a;

    /* renamed from: b  reason: collision with root package name */
    public String f1552b;

    /* renamed from: c  reason: collision with root package name */
    public WorkerParameters.a f1553c;

    public h(m mVar, String str, WorkerParameters.a aVar) {
        this.f1551a = mVar;
        this.f1552b = str;
        this.f1553c = aVar;
    }

    public void run() {
        this.f1551a.e().a(this.f1552b, this.f1553c);
    }
}
