package b.l;

import android.view.Choreographer;
import androidx.databinding.ViewDataBinding;

/* compiled from: ViewDataBinding */
class F implements Choreographer.FrameCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewDataBinding f2933a;

    public F(ViewDataBinding viewDataBinding) {
        this.f2933a = viewDataBinding;
    }

    public void doFrame(long j2) {
        this.f2933a.f627l.run();
    }
}
