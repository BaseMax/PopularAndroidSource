package c.c.a.n.j.e;

import android.content.Context;
import c.c.a.c.b.f;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.VideoDownloadItemModel;
import com.farsitel.bazaar.common.model.VideoDownloadQuality;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityHeader;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Download.kt */
public final class a {
    public static final List<RecyclerData> a(VideoDownloadQuality videoDownloadQuality, Context context, String str, long j2) {
        j.b(videoDownloadQuality, "$this$toVideoDownloadQualityRowItem");
        j.b(context, "context");
        j.b(str, "videoName");
        ArrayList arrayList = new ArrayList();
        Integer remainingDownloadCount = videoDownloadQuality.getInfo().getRemainingDownloadCount();
        arrayList.add(new VideoDownloadQualityHeader(str, remainingDownloadCount != null ? remainingDownloadCount.intValue() : -1, f.a(j2, context), videoDownloadQuality.getInfo().getDescription()));
        List<VideoDownloadItemModel> videoDownloadItemModels = videoDownloadQuality.getInfo().getVideoDownloadItemModels();
        ArrayList arrayList2 = new ArrayList(m.a(videoDownloadItemModels, 10));
        for (VideoDownloadItemModel a2 : videoDownloadItemModels) {
            arrayList2.add(a(a2, context, j2));
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public static final VideoDownloadQualityItem a(VideoDownloadItemModel videoDownloadItemModel, Context context, long j2) {
        j.b(videoDownloadItemModel, "$this$toVideoDownloadQualityItem");
        j.b(context, "context");
        return new VideoDownloadQualityItem(videoDownloadItemModel.getId(), f.a(videoDownloadItemModel.getSize(), context), videoDownloadItemModel.getQuality(), j2 > videoDownloadItemModel.getSize());
    }
}
