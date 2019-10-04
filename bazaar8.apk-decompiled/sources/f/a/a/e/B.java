package f.a.a.e;

import android.text.TextUtils;
import android.view.View;
import f.a.a.b.a;
import f.a.a.g;
import f.a.a.g.d.a.s;
import ir.cafebazaar.inline.ui.SingleLineEditText;
import ir.cafebazaar.inline.ux.permission.PermissionDataHandler;

/* compiled from: VideoPageFragment */
class B implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SingleLineEditText f14010a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C f14011b;

    public B(C c2, SingleLineEditText singleLineEditText) {
        this.f14011b = c2;
        this.f14010a = singleLineEditText;
    }

    public void onClick(View view) {
        if (!a.f13938b.f()) {
            this.f14011b.x().startActivityForResult(PermissionDataHandler.a(this.f14011b.b(g.submit_commit_request_login_needed)), 1);
        } else if (!TextUtils.isEmpty(this.f14010a.getText().toString().trim())) {
            String obj = this.f14010a.getText().toString();
            this.f14010a.setText("");
            this.f14011b.f().v().a(new s(obj), null);
        }
    }
}
