package c.c.a.n.j.c;

import android.view.View;
import android.widget.PopupWindow;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadListFragment;

/* compiled from: VideoDownloadListFragment.kt */
final class j implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDownloadListFragment f6494a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DownloadedVideoItem f6495b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ PopupWindow f6496c;

    public j(VideoDownloadListFragment videoDownloadListFragment, DownloadedVideoItem downloadedVideoItem, PopupWindow popupWindow) {
        this.f6494a = videoDownloadListFragment;
        this.f6495b = downloadedVideoItem;
        this.f6496c = popupWindow;
    }

    public final void onClick(View view) {
        VideoDownloadListFragment.b(this.f6494a).b(this.f6495b.getVideoId());
        this.f6496c.dismiss();
    }
}
