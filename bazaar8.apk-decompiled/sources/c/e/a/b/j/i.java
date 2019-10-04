package c.e.a.b.j;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final Executor f11143a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final Executor f11144b = new A();

    private static final class a implements Executor {

        /* renamed from: a  reason: collision with root package name */
        public final Handler f11145a = new Handler(Looper.getMainLooper());

        public final void execute(Runnable runnable) {
            this.f11145a.post(runnable);
        }
    }
}
