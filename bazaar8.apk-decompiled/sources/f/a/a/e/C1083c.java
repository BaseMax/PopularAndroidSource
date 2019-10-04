package f.a.a.e;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.View;
import androidx.core.widget.NestedScrollView;
import com.crashlytics.android.Crashlytics;
import f.a.a.e;
import f.a.a.e.b.C1070l;
import f.a.a.g.b.a;
import f.a.a.g.d;
import f.a.a.g.d.b.f;
import ir.cafebazaar.inline.ux.audio.MediaPlayerService;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* renamed from: f.a.a.e.c  reason: case insensitive filesystem */
/* compiled from: CommonPageFragment */
public class C1083c extends l {
    public View Y;
    public a Z = new a();
    public final MediaControllerCompat.a aa = new C1051a(this);
    public d ba = new d();
    public f ca;
    public MediaPlayerService da;
    public boolean ea;
    public ServiceConnection fa = new C1052b(this);

    public final void Ma() {
        if (!this.ea) {
            Intent intent = new Intent(f(), MediaPlayerService.class);
            if (g() != null) {
                intent.putExtra("KEY_THEME", g());
            }
            f().startService(intent);
            f().bindService(intent, this.fa, 1);
        }
    }

    public a Na() {
        return this.Z;
    }

    public d Oa() {
        return this.ba;
    }

    public View aa() {
        return this.Y;
    }

    public void c(String str) {
        try {
            f.a.a.d.f g2 = h().g();
            ((C1070l) g2.e(g2.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8"))))).a((NestedScrollView) aa().findViewById(e.scroll_view), f().getLayoutInflater(), (g) this);
        } catch (Exception e2) {
            Crashlytics.logException(e2);
            e2.printStackTrace();
        }
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        bundle.putBoolean("restart", true);
        bundle.putBundle("action", new Bundle());
    }

    public void oa() {
        super.oa();
        if (this.ea) {
            f().unbindService(this.fa);
            this.da.stopSelf();
            this.da.i();
        }
        MediaControllerCompat a2 = MediaControllerCompat.a((Activity) f());
        if (a2 != null) {
            a2.b(this.aa);
        }
    }

    public void sa() {
        this.ca.b();
        super.sa();
    }

    public void ta() {
        super.ta();
        this.ca.a();
    }

    /* JADX WARNING: type inference failed for: r2v20, types: [ir.cafebazaar.inline.ui.inflaters.PageInflater] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.view.View a(android.view.LayoutInflater r6, android.view.ViewGroup r7, android.os.Bundle r8) {
        /*
            r5 = this;
            android.os.Bundle r0 = r5.C()
            if (r0 == 0) goto L_0x001b
            android.os.Bundle r0 = r5.C()
            java.lang.String r1 = "extra_code"
            java.lang.String r0 = r0.getString(r1)
            if (r0 == 0) goto L_0x001b
            android.os.Bundle r0 = r5.C()
            java.lang.String r0 = r0.getString(r1)
            goto L_0x001d
        L_0x001b:
            java.lang.String r0 = ""
        L_0x001d:
            ir.cafebazaar.inline.platform.InlineApplication r1 = r5.h()     // Catch:{ Exception -> 0x00f9 }
            f.a.a.d.f r1 = r1.g()     // Catch:{ Exception -> 0x00f9 }
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x00f9 }
            java.lang.String r3 = "UTF-8"
            byte[] r0 = r0.getBytes(r3)     // Catch:{ Exception -> 0x00f9 }
            r2.<init>(r0)     // Catch:{ Exception -> 0x00f9 }
            java.lang.Object r0 = r1.a((java.io.InputStream) r2)     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ui.Theme r2 = r1.b(r0)     // Catch:{ Exception -> 0x00f9 }
            if (r2 == 0) goto L_0x0041
            ir.cafebazaar.inline.platform.InlineApplication r3 = r5.h()     // Catch:{ Exception -> 0x00f9 }
            r3.a((ir.cafebazaar.inline.ui.Theme) r2)     // Catch:{ Exception -> 0x00f9 }
        L_0x0041:
            ir.cafebazaar.inline.platform.InlineApplication r2 = r5.h()     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.platform.InlineUser r2 = r2.j()     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ux.permission.PermissionManager r2 = r2.b()     // Catch:{ Exception -> 0x00f9 }
            java.util.List r3 = r1.d(r0)     // Catch:{ Exception -> 0x00f9 }
            r2.b(r3)     // Catch:{ Exception -> 0x00f9 }
            f.a.a.d.a.a.c.b r2 = r1.h(r0)     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.platform.InlineApplication r3 = r5.h()     // Catch:{ Exception -> 0x00f9 }
            f.a.a.g.f.a.b r3 = r3.b()     // Catch:{ Exception -> 0x00f9 }
            if (r3 != 0) goto L_0x006f
            if (r2 == 0) goto L_0x006f
            ir.cafebazaar.inline.platform.InlineApplication r3 = r5.h()     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ui.InlineActivity r4 = r5.f()     // Catch:{ Exception -> 0x00f9 }
            r3.a(r4, r2)     // Catch:{ Exception -> 0x00f9 }
        L_0x006f:
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x00f9 }
            r3 = 21
            if (r2 < r3) goto L_0x0092
            b.o.a.i r2 = r5.x()     // Catch:{ Exception -> 0x00f9 }
            android.view.Window r2 = r2.getWindow()     // Catch:{ Exception -> 0x00f9 }
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r2.addFlags(r3)     // Catch:{ Exception -> 0x00f9 }
            r3 = 67108864(0x4000000, float:1.5046328E-36)
            r2.clearFlags(r3)     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ui.Theme r3 = r5.g()     // Catch:{ Exception -> 0x00f9 }
            int r3 = r3.i()     // Catch:{ Exception -> 0x00f9 }
            r2.setStatusBarColor(r3)     // Catch:{ Exception -> 0x00f9 }
        L_0x0092:
            boolean r2 = r1.c(r0)     // Catch:{ Exception -> 0x00f9 }
            if (r2 == 0) goto L_0x00ad
            f.a.a.e.t r2 = r1.k(r0)     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ui.inflaters.PageInflater r3 = r2.b()     // Catch:{ Exception -> 0x00f9 }
            f.a.a.e.b.l r3 = (f.a.a.e.b.C1070l) r3     // Catch:{ Exception -> 0x00f9 }
            f.a.a.a.b.c r4 = r1.a()     // Catch:{ Exception -> 0x00f9 }
            r2.a((f.a.a.e.g) r5, (f.a.a.a.b.c) r4)     // Catch:{ Exception -> 0x00f9 }
            r2.a()     // Catch:{ Exception -> 0x00f9 }
            goto L_0x00b4
        L_0x00ad:
            ir.cafebazaar.inline.ui.inflaters.PageInflater r2 = r1.e(r0)     // Catch:{ Exception -> 0x00f9 }
            r3 = r2
            f.a.a.e.b.l r3 = (f.a.a.e.b.C1070l) r3     // Catch:{ Exception -> 0x00f9 }
        L_0x00b4:
            boolean r2 = r3.b()     // Catch:{ Exception -> 0x00f9 }
            if (r2 == 0) goto L_0x00c9
            ir.cafebazaar.inline.ui.InlineActivity r2 = r5.f()     // Catch:{ Exception -> 0x00f9 }
            f.a.a.g.d.d r2 = r2.w()     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ux.flow.FlowSnapshot r2 = r2.g()     // Catch:{ Exception -> 0x00f9 }
            r2.c()     // Catch:{ Exception -> 0x00f9 }
        L_0x00c9:
            java.lang.String r2 = r3.a()     // Catch:{ Exception -> 0x00f9 }
            if (r2 == 0) goto L_0x00e2
            ir.cafebazaar.inline.ui.InlineActivity r2 = r5.f()     // Catch:{ Exception -> 0x00f9 }
            f.a.a.g.d.d r2 = r2.w()     // Catch:{ Exception -> 0x00f9 }
            ir.cafebazaar.inline.ux.flow.FlowSnapshot r2 = r2.g()     // Catch:{ Exception -> 0x00f9 }
            java.lang.String r4 = r3.a()     // Catch:{ Exception -> 0x00f9 }
            r2.a(r4)     // Catch:{ Exception -> 0x00f9 }
        L_0x00e2:
            f.a.a.a.b.f r2 = r1.f(r0)     // Catch:{ Exception -> 0x00f9 }
            if (r2 == 0) goto L_0x00eb
            r2.a((f.a.a.e.g) r5)     // Catch:{ Exception -> 0x00f9 }
        L_0x00eb:
            f.a.a.g.d.b.f r2 = r5.ca     // Catch:{ Exception -> 0x00f9 }
            java.util.List r0 = r1.g(r0)     // Catch:{ Exception -> 0x00f9 }
            r2.a(r0)     // Catch:{ Exception -> 0x00f9 }
            android.view.View r6 = r3.a((android.view.LayoutInflater) r6, (android.view.ViewGroup) r7, (f.a.a.e.g) r5)     // Catch:{ Exception -> 0x00f9 }
            return r6
        L_0x00f9:
            r0 = move-exception
            com.crashlytics.android.Crashlytics.logException(r0)
            f.a.a.e.j r1 = new f.a.a.e.j
            int r2 = f.a.a.g.error_general
            java.lang.String r2 = r5.b((int) r2)
            int r3 = f.a.a.g.error_try_again_later
            java.lang.String r3 = r5.b((int) r3)
            java.lang.String r0 = r0.toString()
            r1.<init>(r5, r2, r3, r0)
            r1.f()
            android.view.View r6 = super.a((android.view.LayoutInflater) r6, (android.view.ViewGroup) r7, (android.os.Bundle) r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.e.C1083c.a(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        Ma();
        this.ca = new f(this);
    }

    public void a(NestedScrollView nestedScrollView) {
        this.Y = nestedScrollView;
    }

    public void a(MediaSessionCompat.Token token) {
        if (ea()) {
            MediaControllerCompat mediaControllerCompat = new MediaControllerCompat(E(), token);
            if (f() != null) {
                MediaControllerCompat.a((Activity) f(), mediaControllerCompat);
            }
            mediaControllerCompat.a(this.aa);
        }
    }
}
