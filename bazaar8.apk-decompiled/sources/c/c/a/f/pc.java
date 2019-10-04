package c.c.a.f;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.ViewDataBinding;
import b.l.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityHeader;

/* compiled from: ItemVideoDownloadHeaderBinding */
public abstract class pc extends ViewDataBinding {
    public final AppCompatTextView A;
    public final AppCompatTextView B;
    public final AppCompatTextView C;
    public VideoDownloadQualityHeader D;

    public pc(Object obj, View view, int i2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        super(obj, view, i2);
        this.A = appCompatTextView;
        this.B = appCompatTextView2;
        this.C = appCompatTextView3;
    }

    public static pc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return a(layoutInflater, viewGroup, z, g.a());
    }

    @Deprecated
    public static pc a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (pc) ViewDataBinding.a(layoutInflater, (int) R.layout.item_video_download_header, viewGroup, z, obj);
    }
}
