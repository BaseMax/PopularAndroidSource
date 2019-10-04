package c.c.a.e.d.h.e.a.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.VideoDownloadItemModel;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class d {
    @c("id")
    public final String id;
    @c("name")
    public final String quality;
    @c("size")
    public final long size;
    @c("urls")
    public final List<String> url;

    public final VideoDownloadItemModel a() {
        VideoDownloadItemModel videoDownloadItemModel = new VideoDownloadItemModel(this.id, this.size, this.quality, this.url);
        return videoDownloadItemModel;
    }
}
