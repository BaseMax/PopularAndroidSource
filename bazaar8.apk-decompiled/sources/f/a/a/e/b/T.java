package f.a.a.e.b;

import android.view.View;
import f.a.a.e.g;
import f.a.a.g.d.a.n;
import ir.cafebazaar.inline.ux.permission.PermissionDataHandler;

/* compiled from: VideoCommentInflater */
class T implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14089a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ U f14090b;

    public T(U u, g gVar) {
        this.f14090b = u;
        this.f14089a = gVar;
    }

    public void onClick(View view) {
        if (!this.f14090b.f14092d.f()) {
            this.f14089a.f().startActivityForResult(PermissionDataHandler.a(this.f14089a.getApplicationContext().getString(f.a.a.g.report_request_login_needed)), 1);
            return;
        }
        this.f14089a.f().v().a(new n(this.f14090b.f14091c.a()), view);
    }
}
