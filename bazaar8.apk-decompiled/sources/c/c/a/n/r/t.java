package c.c.a.n.r;

import android.os.Bundle;
import android.view.View;
import com.farsitel.bazaar.common.model.RecyclerData;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: VideoChildMyBazaarFragment.kt */
public final class t extends f {
    public HashMap Aa;

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public ArrayList<RecyclerData> b(int i2, int i3) {
        return ((g) cb()).k();
    }

    public View e(int i2) {
        if (this.Aa == null) {
            this.Aa = new HashMap();
        }
        View view = (View) this.Aa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Aa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        ((g) cb()).j().a(ba(), new s(this));
    }
}
