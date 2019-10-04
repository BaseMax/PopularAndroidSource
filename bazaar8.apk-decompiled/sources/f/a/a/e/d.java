package f.a.a.e;

import android.content.DialogInterface;
import ir.cafebazaar.inline.ui.InlineActivity;

/* compiled from: InlineActivity */
class d implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InlineActivity f14298a;

    public d(InlineActivity inlineActivity) {
        this.f14298a = inlineActivity;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.f14298a.a(true);
    }
}
