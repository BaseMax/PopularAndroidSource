package com.farsitel.bazaar.ui.game;

import android.view.View;
import com.farsitel.bazaar.ui.fehrest.FehrestParams;
import com.farsitel.bazaar.ui.home.HomeFragment;
import h.a.l;
import java.util.HashMap;

/* compiled from: GameFragment.kt */
public final class GameFragment extends HomeFragment {
    public HashMap Ha;

    public void La() {
        HashMap hashMap = this.Ha;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View e(int i2) {
        if (this.Ha == null) {
            this.Ha = new HashMap();
        }
        View view = (View) this.Ha.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ha.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public FehrestParams Za() {
        FehrestParams fehrestParams = new FehrestParams("game-home", l.a(), null, false, false, null, 60, null);
        return fehrestParams;
    }
}
