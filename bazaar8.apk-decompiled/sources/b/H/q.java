package b.H;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;

/* compiled from: WorkerFactory */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    public static final String f1658a = f.a("WorkerFactory");

    public static q a() {
        return new p();
    }

    public abstract ListenableWorker a(Context context, String str, WorkerParameters workerParameters);

    public final ListenableWorker b(Context context, String str, WorkerParameters workerParameters) {
        ListenableWorker a2 = a(context, str, workerParameters);
        if (a2 != null) {
            return a2;
        }
        try {
            try {
                return (ListenableWorker) Class.forName(str).asSubclass(ListenableWorker.class).getDeclaredConstructor(new Class[]{Context.class, WorkerParameters.class}).newInstance(new Object[]{context, workerParameters});
            } catch (Exception e2) {
                f a3 = f.a();
                String str2 = f1658a;
                a3.b(str2, "Could not instantiate " + str, e2);
                return null;
            }
        } catch (ClassNotFoundException unused) {
            f a4 = f.a();
            String str3 = f1658a;
            a4.b(str3, "Class not found: " + str, new Throwable[0]);
            return null;
        }
    }
}
