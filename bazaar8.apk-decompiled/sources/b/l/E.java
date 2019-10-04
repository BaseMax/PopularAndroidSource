package b.l;

import android.os.Build;
import androidx.databinding.ViewDataBinding;

/* compiled from: ViewDataBinding */
class E implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewDataBinding f2932a;

    public E(ViewDataBinding viewDataBinding) {
        this.f2932a = viewDataBinding;
    }

    public void run() {
        synchronized (this) {
            boolean unused = this.f2932a.m = false;
        }
        ViewDataBinding.j();
        if (Build.VERSION.SDK_INT < 19 || this.f2932a.p.isAttachedToWindow()) {
            this.f2932a.g();
            return;
        }
        this.f2932a.p.removeOnAttachStateChangeListener(ViewDataBinding.f626k);
        this.f2932a.p.addOnAttachStateChangeListener(ViewDataBinding.f626k);
    }
}
