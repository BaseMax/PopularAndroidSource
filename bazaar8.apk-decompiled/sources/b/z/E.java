package b.z;

/* compiled from: TransactionExecutor */
class E implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Runnable f3579a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ F f3580b;

    public E(F f2, Runnable runnable) {
        this.f3580b = f2;
        this.f3579a = runnable;
    }

    public void run() {
        try {
            this.f3579a.run();
        } finally {
            this.f3580b.a();
        }
    }
}
