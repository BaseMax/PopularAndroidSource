package c.c.a.d.f;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import c.c.a.d.d.c;
import d.a.a.a;
import h.f.b.j;

/* compiled from: BaseDaggerDialogFragment.kt */
public abstract class g<T> extends l<T> {
    public c sa;

    public final c Za() {
        c cVar = this.sa;
        if (cVar != null) {
            return cVar;
        }
        j.c("messageManager");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b(view);
    }

    public void b(View view) {
        j.b(view, "view");
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void a(Context context) {
        j.b(context, "context");
        a.b(this);
        super.a(context);
    }
}
