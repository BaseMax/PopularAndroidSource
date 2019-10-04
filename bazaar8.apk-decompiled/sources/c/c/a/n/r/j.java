package c.c.a.n.r;

import c.c.a.c.d.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.BazaarKidsItemClick;
import com.farsitel.bazaar.analytics.model.what.BookmarkedAppsItemClick;
import com.farsitel.bazaar.analytics.model.what.BoughtAppsItemClick;
import com.farsitel.bazaar.analytics.model.what.BoughtSubscriptionsItemClick;
import com.farsitel.bazaar.analytics.model.what.BoughtVideosItemClick;
import com.farsitel.bazaar.analytics.model.what.DownloadedVideosItemClick;
import com.farsitel.bazaar.analytics.model.what.InstalledAppsItemClick;
import com.farsitel.bazaar.analytics.model.what.MaliciousAppItemClick;
import com.farsitel.bazaar.analytics.model.what.PlayedVideoHistoryItemClick;
import com.farsitel.bazaar.analytics.model.what.RecentDownloadedAppsItemClick;
import com.farsitel.bazaar.analytics.model.what.UpgradableAppsItemClick;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarDividerItem;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarItem;
import com.farsitel.bazaar.ui.mybazaar.MyBazaarSwitchItem;
import java.util.ArrayList;

/* compiled from: MyBazaarDataFactory.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f6795a = new j();

    public final ArrayList<RecyclerData> a(boolean z, String str, String str2, boolean z2, boolean z3) {
        ArrayList<RecyclerData> arrayList = new ArrayList<>();
        MyBazaarDividerItem myBazaarDividerItem = new MyBazaarDividerItem();
        MyBazaarItem myBazaarItem = new MyBazaarItem(R.id.my_bazaar_upgradable_apps, R.string.updates, R.drawable.ic_mybazaar_download, false, str, Integer.valueOf(R.id.upgradableAppsFragment), new UpgradableAppsItemClick(e.a()), 8, null);
        arrayList.add(myBazaarItem);
        arrayList.add(myBazaarDividerItem);
        MyBazaarItem myBazaarItem2 = new MyBazaarItem(R.id.my_bazaar_installed_apps, R.string.installed, R.drawable.ic_mybazaar_installed, false, null, Integer.valueOf(R.id.installedAppsFragment), new InstalledAppsItemClick(e.a()), 24, null);
        arrayList.add(myBazaarItem2);
        arrayList.add(myBazaarDividerItem);
        MyBazaarItem myBazaarItem3 = new MyBazaarItem(R.id.my_bazaar_malicious_app, R.string.malicious_app, R.drawable.ic_bazaar_shield, false, str2, Integer.valueOf(R.id.maliciousAppFragment), new MaliciousAppItemClick(e.a()), 8, null);
        arrayList.add(myBazaarItem3);
        arrayList.add(myBazaarDividerItem);
        MyBazaarItem myBazaarItem4 = new MyBazaarItem(R.id.my_bazaar_recent_downloads, R.string.latest_downloads, R.drawable.ic_mybazaaar_history, false, null, Integer.valueOf(R.id.latestDownloadFragment), new RecentDownloadedAppsItemClick(e.a()), 24, null);
        arrayList.add(myBazaarItem4);
        arrayList.add(myBazaarDividerItem);
        if (z) {
            MyBazaarItem myBazaarItem5 = new MyBazaarItem(R.id.my_bazaar_bookmarks, R.string.bookmarked_items, R.drawable.ic_bookmark_black_24dp, false, null, Integer.valueOf(R.id.bookmarkFragment), new BookmarkedAppsItemClick(e.a()), 24, null);
            arrayList.add(myBazaarItem5);
            arrayList.add(myBazaarDividerItem);
            MyBazaarItem myBazaarItem6 = new MyBazaarItem(R.id.my_bazaar_bought_items, R.string.bought_items, R.drawable.ic_mybazaar_basket, false, null, Integer.valueOf(R.id.getBoughtAppFragment), new BoughtAppsItemClick(e.a()), 24, null);
            arrayList.add(myBazaarItem6);
            arrayList.add(myBazaarDividerItem);
            MyBazaarItem myBazaarItem7 = new MyBazaarItem(R.id.my_bazaar_app_subscription, R.string.app_subscription, R.drawable.ic_mybazaar_subscribe, false, null, Integer.valueOf(R.id.subscriptionFragment), new BoughtSubscriptionsItemClick(e.a()), 24, null);
            arrayList.add(myBazaarItem7);
            arrayList.add(myBazaarDividerItem);
        }
        if (z3 || z2) {
            MyBazaarSwitchItem myBazaarSwitchItem = new MyBazaarSwitchItem(R.id.my_bazaar_kids, R.string.my_bazaar_kids, R.drawable.ic_round_child_care_24px, z3, new BazaarKidsItemClick(e.a()));
            arrayList.add(myBazaarSwitchItem);
            arrayList.add(myBazaarDividerItem);
        }
        return arrayList;
    }

    public final ArrayList<RecyclerData> a(boolean z) {
        ArrayList<RecyclerData> arrayList = new ArrayList<>();
        MyBazaarDividerItem myBazaarDividerItem = new MyBazaarDividerItem();
        MyBazaarItem myBazaarItem = new MyBazaarItem(R.id.my_bazaar_video_downloaded_items, R.string.downloaded_items, R.drawable.ic_mybazaar_download, false, null, Integer.valueOf(R.id.videoDownloadListFragment), new DownloadedVideosItemClick(e.a()), 24, null);
        arrayList.add(myBazaarItem);
        arrayList.add(myBazaarDividerItem);
        MyBazaarItem myBazaarItem2 = new MyBazaarItem(R.id.my_bazaar_video_play_history, R.string.video_play_history, R.drawable.ic_mybazaaar_history, false, null, Integer.valueOf(R.id.playedVideoFragment), new PlayedVideoHistoryItemClick(e.a()), 24, null);
        arrayList.add(myBazaarItem2);
        if (z) {
            arrayList.add(myBazaarDividerItem);
            MyBazaarItem myBazaarItem3 = new MyBazaarItem(R.id.my_bazaar_video_bought_items, R.string.bought_items, R.drawable.ic_mybazaar_basket, false, null, Integer.valueOf(R.id.getBoughtVideoFragment), new BoughtVideosItemClick(e.a()), 24, null);
            arrayList.add(myBazaarItem3);
        }
        return arrayList;
    }
}
