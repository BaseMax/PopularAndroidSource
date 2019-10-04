package b.l;

import android.annotation.TargetApi;
import android.view.View;
import androidx.databinding.ViewDataBinding;

/* compiled from: ViewDataBinding */
class D implements View.OnAttachStateChangeListener {
    @TargetApi(19)
    public void onViewAttachedToWindow(View view) {
        ViewDataBinding.a(view).f627l.run();
        view.removeOnAttachStateChangeListener(this);
    }

    public void onViewDetachedFromWindow(View view) {
    }
}
