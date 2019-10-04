package com.farsitel.bazaar.ui.cinema;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.d.g.a.i;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.fehrest.FehrestFragment;
import com.farsitel.bazaar.ui.fehrest.FehrestParams;
import h.a.l;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: VideoFragment.kt */
public final class VideoFragment extends FehrestFragment {
    public int Ea = R.layout.fragment_video;
    public HashMap Fa;

    public void La() {
        HashMap hashMap = this.Fa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Ya() {
        return this.Ea;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        i iVar = i.f4812a;
        AppCompatImageView appCompatImageView = (AppCompatImageView) e(e.toolbarBazaar);
        j.a((Object) appCompatImageView, "toolbarBazaar");
        i.a(iVar, appCompatImageView, ((c.c.a.n.l.i) cb()).r(), null, Integer.valueOf(R.drawable.brand_bazaar_video_img), null, 0, 52, null);
    }

    public View e(int i2) {
        if (this.Fa == null) {
            this.Fa = new HashMap();
        }
        View view = (View) this.Fa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Fa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public FehrestParams Za() {
        FehrestParams fehrestParams = new FehrestParams("videos-home", l.a(), null, false, false, null, 60, null);
        return fehrestParams;
    }
}
