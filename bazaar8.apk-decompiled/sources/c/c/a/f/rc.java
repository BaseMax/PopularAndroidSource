package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityItem;

/* compiled from: ItemVideoDownloadNormalBinding */
public abstract class rc extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public VideoDownloadQualityItem C;
    public m D;

    public rc(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
    }

    public static rc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static rc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (rc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_download_normal, viewGroup, z, obj);
    }
}
