package c.c.a.d.h;

import android.view.View;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;

/* compiled from: DialogButtonLayout.kt */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DialogButtonLayout.a f4854a;

    public c(DialogButtonLayout.a aVar) {
        this.f4854a = aVar;
    }

    public final void onClick(View view) {
        this.f4854a.onCancel();
    }
}
