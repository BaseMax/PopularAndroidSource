package c.c.a.e.d.h.e.b;

import c.c.a.e.d.h.b.a.a;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.ScreenshotsItem;
import com.farsitel.bazaar.common.model.cinema.ThumbnailType;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ResponseDto.kt */
public final class i {
    public static final ThumbnailType a(Integer num) {
        if (num != null && num.intValue() == 0) {
            return ThumbnailType.VIDEO;
        }
        if (num != null && num.intValue() == 1) {
            return ThumbnailType.IMAGE;
        }
        return ThumbnailType.VIDEO;
    }

    public static final ScreenshotsItem a(List<a> list) {
        j.b(list, "$this$toScreenshotsItem");
        ArrayList<a> arrayList = new ArrayList<>();
        for (T next : list) {
            if (a(((a) next).b()) == ThumbnailType.IMAGE) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (a d2 : arrayList) {
            CinemaScreenshotItem d3 = d2.d();
            if (d3 != null) {
                arrayList2.add(d3);
            }
        }
        return new ScreenshotsItem(arrayList2);
    }
}
