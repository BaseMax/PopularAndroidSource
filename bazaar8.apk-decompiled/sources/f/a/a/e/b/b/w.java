package f.a.a.e.b.b;

import android.view.View;
import f.a.a.e.g;
import ir.cafebazaar.inline.ux.flow.actions.ImagePickerAction;

/* compiled from: ImagePickerInflater */
class w implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14209a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ y f14210b;

    public w(y yVar, g gVar) {
        this.f14210b = yVar;
        this.f14209a = gVar;
    }

    public void onClick(View view) {
        this.f14209a.f().v().a(new ImagePickerAction(), view);
    }
}
