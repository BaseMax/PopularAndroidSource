package c.c.a.n.p;

import android.view.KeyEvent;
import android.widget.TextView;
import com.farsitel.bazaar.ui.login.RegisterFragment;

/* compiled from: RegisterFragment.kt */
final class c implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RegisterFragment f6731a;

    public c(RegisterFragment registerFragment) {
        this.f6731a = registerFragment;
    }

    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 5) {
            return false;
        }
        return this.f6731a.bb();
    }
}
