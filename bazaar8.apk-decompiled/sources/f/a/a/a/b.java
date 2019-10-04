package f.a.a.a;

import com.crashlytics.android.Crashlytics;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: DependentTask */
public abstract class b<T> {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f13924a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    public Thread f13925b = new Thread(new a(this));

    /* renamed from: c  reason: collision with root package name */
    public T f13926c = null;

    public abstract void a();

    public void a(T t) {
        synchronized (this.f13924a) {
            this.f13926c = t;
            this.f13924a.set(true);
            this.f13924a.notify();
        }
    }

    public T b() {
        T t;
        synchronized (this.f13924a) {
            try {
                if (!this.f13924a.get()) {
                    this.f13924a.wait();
                }
            } catch (InterruptedException e2) {
                Crashlytics.logException(e2);
                e2.printStackTrace();
            }
            t = this.f13926c;
        }
        return t;
    }

    public void c() {
        this.f13925b.start();
    }
}
