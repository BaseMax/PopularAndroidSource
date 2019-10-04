package c.c.a.n.b;

import android.app.Activity;
import android.net.Uri;
import b.o.a.C0285i;
import c.c.a.l.f;
import c.c.a.n.b.d.a.e;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* compiled from: AppDetailFragment.kt */
public final class p implements e.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6259a;

    public p(AppDetailFragment appDetailFragment) {
        this.f6259a = appDetailFragment;
    }

    public void a(AppScreenshotItem appScreenshotItem) {
        j.b(appScreenshotItem, "videoScreenshot");
        VideoPlayerActivity.a aVar = VideoPlayerActivity.u;
        C0285i Ga = this.f6259a.Ga();
        j.a((Object) Ga, "requireActivity()");
        String a2 = this.f6259a.Za().a();
        Uri parse = Uri.parse(appScreenshotItem.getMainUrl());
        j.a((Object) parse, "Uri.parse(this)");
        f fVar = new f(a2, parse, null, null, null, c.c.a.c.d.e.a(), 28, null);
        aVar.a((Activity) Ga, fVar);
    }
}
