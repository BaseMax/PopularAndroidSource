package ir.cafebazaar.inline.ux.flow.actions;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.crashlytics.android.Crashlytics;
import f.a.a.c.b.b;
import f.a.a.e.C1083c;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.InlineWebViewActivity;
import java.io.UnsupportedEncodingException;
import java.util.Map;

public class WebAction extends CallbackRemoteAction {
    public static final Parcelable.Creator<WebAction> CREATOR = new v();

    public WebAction(String str, boolean z, boolean z2) {
        super(str, z, z2);
    }

    public void a(g gVar, View view) {
        if (!this.f14448b || !(gVar.k() instanceof C1083c) || ((C1083c) gVar.k()).Oa().c()) {
            super.a(gVar, view);
            String str = "";
            for (Map.Entry next : a(gVar).entrySet()) {
                str = str + Uri.encode((String) next.getKey()) + "=" + Uri.encode(next.getValue().toString()) + "&";
            }
            try {
                gVar.f().startActivityForResult(InlineWebViewActivity.a(gVar.f(), a(), str.getBytes("UTF-8")), 2);
            } catch (UnsupportedEncodingException e2) {
                Crashlytics.logException(e2);
            }
        }
    }

    public boolean a(int i2) {
        return i2 == 2;
    }

    public WebAction(Parcel parcel) {
        super(parcel);
    }

    public void a(g gVar, int i2, Intent intent, Parcelable parcelable) {
        if (i2 == -1) {
            new b(gVar.h(), intent.getStringExtra("extra_redirect_path"), null).a(new f.a.a.g.d.g(gVar, intent.getStringExtra("extra_redirect_path")));
        }
    }
}
