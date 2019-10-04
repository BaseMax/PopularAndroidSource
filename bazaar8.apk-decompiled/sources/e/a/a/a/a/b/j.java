package e.a.a.a.a.b;

import android.os.Process;

/* compiled from: BackgroundPriorityRunnable */
public abstract class j implements Runnable {
    public abstract void onRun();

    public final void run() {
        Process.setThreadPriority(10);
        onRun();
    }
}
