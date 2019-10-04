package c.c.a.n.g;

import android.content.Context;
import c.c.a.c.d.c;
import c.c.a.c.d.d;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.data.entity.ReleaseNote;
import com.farsitel.bazaar.data.entity.ReleaseNoteEntry;
import com.farsitel.bazaar.data.entity.ReleaseNoteEntryType;
import com.farsitel.bazaar.data.entity.SearchPrediction;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteDescriptionItem;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteHeaderItem;
import com.farsitel.bazaar.ui.changelog.ReleaseNoteItem;
import com.farsitel.bazaar.ui.search.SearchHistoryItem;
import com.farsitel.bazaar.ui.search.SearchHistoryType;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Mappers.kt */
public final class a {
    public static final List<ReleaseNoteItem> a(List<ReleaseNote> list, Context context) {
        j.b(list, "$this$toReleaseNotes");
        j.b(context, "context");
        ArrayList arrayList = new ArrayList();
        for (ReleaseNote a2 : list) {
            arrayList.addAll(a(a2, context));
        }
        return arrayList;
    }

    public static final List<ReleaseNoteItem> a(ReleaseNote releaseNote, Context context) {
        j.b(releaseNote, "$this$toReleaseNote");
        j.b(context, "context");
        ArrayList arrayList = new ArrayList();
        String string = context.getString(releaseNote.getReleaseVersionName());
        j.a((Object) string, "context.getString(releaseVersionName)");
        arrayList.add(new ReleaseNoteHeaderItem(string, ReleaseNoteEntryType.APP));
        for (ReleaseNoteEntry next : releaseNote.getReleaseNotes()) {
            if (next.getReleaseNoteType() == ReleaseNoteEntryType.INNER_TITLE) {
                String string2 = context.getString(next.getValue());
                j.a((Object) string2, "context.getString(releaseNote.value)");
                arrayList.add(new ReleaseNoteHeaderItem(string2, next.getReleaseNoteType()));
            } else {
                String string3 = context.getString(next.getValue());
                j.a((Object) string3, "context.getString(releaseNote.value)");
                arrayList.add(new ReleaseNoteDescriptionItem(string3, next.getReleaseNoteType()));
            }
        }
        return arrayList;
    }

    public static final SearchHistoryItem a(SearchPrediction searchPrediction) {
        String str;
        j.b(searchPrediction, "$this$toSearchHistoryItem");
        if (searchPrediction instanceof SearchPrediction.History) {
            str = SearchHistoryType.HISTORY.name();
        } else {
            str = SearchHistoryType.NONE.name();
        }
        return new SearchHistoryItem(searchPrediction.getTitle(), searchPrediction.getSubtitle(), searchPrediction.getReferrer(), SearchHistoryType.Companion.a(str));
    }

    public static final AppDownloaderModel a(UpgradableApp upgradableApp) {
        j.b(upgradableApp, "$this$toAppDownloader");
        AppDownloaderModel appDownloaderModel = new AppDownloaderModel(upgradableApp.getPackageName(), upgradableApp.getName(), upgradableApp.isFree(), d.a(new c.l(), null, 1, null), null, null);
        return appDownloaderModel;
    }
}
