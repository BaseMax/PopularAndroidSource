package c.c.a.n.x.a;

import c.c.a.n.x.a.c;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import h.f.b.j;

/* compiled from: TimePickerDialogFragment.kt */
public final class d implements DialogButtonLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f7067a;

    public d(c cVar) {
        this.f7067a = cVar;
    }

    public void a() {
        DialogButtonLayout.a.C0136a.c(this);
    }

    public void onCancel() {
        DialogButtonLayout.a.C0136a.a(this);
        this.f7067a.La();
    }

    public void onCommit() {
        DialogButtonLayout.a.C0136a.b(this);
        c.b Ta = this.f7067a.Ta();
        if (Ta != null) {
            Integer a2 = this.f7067a.Ra();
            j.a((Object) a2, "getHour()");
            int intValue = a2.intValue();
            Integer b2 = this.f7067a.Sa();
            j.a((Object) b2, "getMinute()");
            Ta.a(intValue, b2.intValue());
        }
        this.f7067a.La();
    }
}
