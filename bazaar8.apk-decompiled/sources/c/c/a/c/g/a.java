package c.c.a.c.g;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.CinemaViewItemType;
import com.farsitel.bazaar.common.model.cinema.VideoAddReviewItem;
import com.farsitel.bazaar.common.model.cinema.VideoDividerItem;
import com.farsitel.bazaar.common.model.cinema.VideoReviewActionItem;
import com.farsitel.bazaar.common.model.cinema.VideoReviewItem;
import com.farsitel.bazaar.common.model.cinema.VideoReviewTitleItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* compiled from: CinemaData.kt */
public final class a {
    public static final List<RecyclerData> a(List<RecyclerData> list, List<ReviewItem> list2) {
        List<RecyclerData> list3 = list;
        List<ReviewItem> list4 = list2;
        j.b(list3, "list");
        j.b(list4, "reviews");
        Integer valueOf = Integer.valueOf(a(list));
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            list3.add(intValue, new VideoAddReviewItem());
            if (!list2.isEmpty()) {
                int i2 = intValue + 1;
                list3.add(i2, new VideoReviewTitleItem(0, 1, null));
                List<ReviewItem> subList = list2.size() >= 4 ? list4.subList(0, 3) : list4;
                int i3 = i2 + 1;
                ArrayList arrayList = new ArrayList(m.a(subList, 10));
                for (ReviewItem copy$default : subList) {
                    arrayList.add(new VideoReviewItem(ReviewItem.copy$default(copy$default, 0, null, null, null, null, null, null, null, null, null, false, false, false, null, 14335, null)));
                }
                list3.addAll(i3, arrayList);
                if (list2.size() >= 4) {
                    list3.add(i3 + subList.size(), new VideoReviewActionItem(0, 1, null));
                } else {
                    int i4 = i3 + 1;
                    int size = i3 + subList.size();
                    VideoDividerItem videoDividerItem = new VideoDividerItem(16, false, 0, 4, null);
                    list3.add(size, videoDividerItem);
                    int size2 = i4 + subList.size();
                    VideoDividerItem videoDividerItem2 = new VideoDividerItem(0, false, 0, 7, null);
                    list3.add(size2, videoDividerItem2);
                }
            }
        }
        return list3;
    }

    public static final int a(List<? extends RecyclerData> list) {
        int i2;
        boolean z;
        ListIterator<? extends RecyclerData> listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                i2 = -1;
                break;
            }
            RecyclerData recyclerData = (RecyclerData) listIterator.previous();
            if (recyclerData.getViewType() == CinemaViewItemType.DESCRIPTION.ordinal() || recyclerData.getViewType() == CinemaViewItemType.SCREEN_SHOT.ordinal()) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                i2 = listIterator.nextIndex();
                break;
            }
        }
        return i2 + 1;
    }
}
