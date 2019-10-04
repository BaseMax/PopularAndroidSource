package b.b.a;

import androidx.appcompat.app.AppCompatDelegateImpl;
import com.crashlytics.android.core.CodedOutputStream;

/* compiled from: AppCompatDelegateImpl */
class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f1763a;

    public q(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1763a = appCompatDelegateImpl;
    }

    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f1763a;
        if ((appCompatDelegateImpl.Y & 1) != 0) {
            appCompatDelegateImpl.f(0);
        }
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.f1763a;
        if ((appCompatDelegateImpl2.Y & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0) {
            appCompatDelegateImpl2.f(108);
        }
        AppCompatDelegateImpl appCompatDelegateImpl3 = this.f1763a;
        appCompatDelegateImpl3.X = false;
        appCompatDelegateImpl3.Y = 0;
    }
}
