package f.a.a.e;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import b.i.b.a;
import com.crashlytics.android.Crashlytics;
import f.a.a.b;
import f.a.a.d;
import f.a.a.e;
import f.a.a.e.b.X;
import f.a.a.f.c;
import f.a.a.g;
import f.a.a.g.d.b.f;
import ir.cafebazaar.inline.platform.InlineApplication;
import ir.cafebazaar.inline.ui.SingleLineEditText;
import ir.cafebazaar.inline.ui.Theme;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* compiled from: VideoPageFragment */
public class C extends l {
    public View Y;
    public LinearLayout Z;
    public String aa;
    public String ba;
    public boolean ca;
    public f da;
    public View ea;

    public boolean La() {
        return false;
    }

    public final void Ma() {
        this.Y.findViewById(e.cover_container).setVisibility(8);
        this.Y.findViewById(e.player_view).setVisibility(0);
        InlineApplication h2 = h();
        if (h2 != null) {
            h().f();
            h2.j().c();
        }
    }

    public View aa() {
        return this.ea;
    }

    public final int b(Context context) {
        return c.a((context.getResources().getConfiguration().smallestScreenWidthDp * 9) / 16);
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        this.da = new f(this);
    }

    public void oa() {
        super.oa();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void sa() {
        super.sa();
        this.da.b();
    }

    public void ta() {
        super.ta();
        this.da.a();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i2;
        String string = (C() == null || C().getString("extra_code") == null) ? "" : C().getString("extra_code");
        try {
            f.a.a.d.f g2 = h().g();
            Object a2 = g2.a((InputStream) new ByteArrayInputStream(string.getBytes("UTF-8")));
            Theme b2 = g2.b(a2);
            if (b2 != null) {
                h().a(b2);
            }
            h().j().b().b(g2.d(a2));
            if (Build.VERSION.SDK_INT >= 21) {
                Window window = x().getWindow();
                window.addFlags(Integer.MIN_VALUE);
                window.clearFlags(67108864);
                window.setStatusBarColor(g().i());
            }
            this.da.a(g2.g(a2));
            X x = (X) g2.e(a2);
            if (x.b()) {
                f().w().g().c();
            }
            if (x.a() != null) {
                f().w().g().a(x.a());
            }
            this.aa = x.e();
            this.ba = x.d();
            this.ca = x.c();
            this.Y = x.a(layoutInflater, viewGroup, this);
            this.Z = (LinearLayout) this.Y.findViewById(e.player_container);
            ViewGroup.LayoutParams layoutParams = this.Z.getLayoutParams();
            layoutParams.height = b(x());
            this.Z.setLayoutParams(layoutParams);
            this.Y.findViewById(e.video_play_icon).setOnClickListener(new x(this));
            NestedScrollView nestedScrollView = (NestedScrollView) this.Y.findViewById(e.scroll_view);
            nestedScrollView.post(new y(this, nestedScrollView));
            if (b2 != null) {
                this.Y.findViewById(e.inline_lyt_submit_comment).setBackgroundColor(b2.c());
            }
            AppCompatImageView appCompatImageView = (AppCompatImageView) this.Y.findViewById(e.inline_bt_video_page_comment);
            appCompatImageView.setImageResource(d.inline_ic_send_normal);
            if (b2 != null) {
                i2 = b2.h();
            } else {
                i2 = a.a((Context) x(), b.inline_submit_comment_normal);
            }
            b.i.c.a.a.b(appCompatImageView.getDrawable(), i2);
            SingleLineEditText singleLineEditText = (SingleLineEditText) this.Y.findViewById(e.inline_et_video_page_comment);
            singleLineEditText.setSingleLineEditTextCommunicator(new z(this, appCompatImageView));
            singleLineEditText.addTextChangedListener(new A(this, singleLineEditText, appCompatImageView, i2));
            appCompatImageView.setOnClickListener(new B(this, singleLineEditText));
            return this.Y;
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            new j(this, b(g.error_general), b(g.error_try_again_later), e2.toString()).f();
            return super.a(layoutInflater, viewGroup, bundle);
        }
    }

    public void a(NestedScrollView nestedScrollView) {
        this.ea = nestedScrollView;
    }
}
