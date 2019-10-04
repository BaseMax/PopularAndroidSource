package c.c.a.n.v;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import c.c.a.f.C0477y;
import com.farsitel.bazaar.common.model.common.EntityScreenshotItem;
import h.f.b.j;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;

/* compiled from: ScreenshotItemFragment.kt */
public final class f extends Fragment {
    public static final a Y = new a(null);
    public HashMap Z;

    /* compiled from: ScreenshotItemFragment.kt */
    public static final class a {
        public a() {
        }

        public final f a(EntityScreenshotItem entityScreenshotItem) {
            j.b(entityScreenshotItem, "item");
            f fVar = new f();
            Bundle bundle = new Bundle();
            bundle.putSerializable("screenshotItem", entityScreenshotItem);
            fVar.m(bundle);
            return fVar;
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    public void La() {
        HashMap hashMap = this.Z;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0477y a2 = C0477y.a(layoutInflater, viewGroup, false);
        Bundle C = C();
        Serializable serializable = C != null ? C.getSerializable("screenshotItem") : null;
        if (serializable != null) {
            a2.a(4, (Object) (EntityScreenshotItem) serializable);
            j.a((Object) a2, "FragmentScreenshotItemBi…ScreenshotItem)\n        }");
            View h2 = a2.h();
            j.a((Object) h2, "FragmentScreenshotItemBi…nshotItem)\n        }.root");
            return h2;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.common.model.common.EntityScreenshotItem");
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }
}
