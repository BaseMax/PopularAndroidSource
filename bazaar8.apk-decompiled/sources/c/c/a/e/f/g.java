package c.c.a.e.f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Address;
import c.c.a.c.b.h;
import c.c.a.c.d.c;
import c.c.a.c.d.d;
import c.c.a.c.d.e;
import c.c.a.e.d.a.b.b.n;
import c.c.a.e.d.g.a.b;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.ShortInfo;
import com.farsitel.bazaar.common.model.categroy.CategoryItem;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.data.dto.requestdto.GetUpgradableAppsRequestDto;
import com.farsitel.bazaar.data.dto.requestdto.InstalledAppInfoRequest;
import com.farsitel.bazaar.data.dto.responsedto.SearchPredictionItemDto;
import com.farsitel.bazaar.data.dto.responsedto.ShortInfoDto;
import com.farsitel.bazaar.data.entity.DownloadedApp;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import com.farsitel.bazaar.data.entity.ErrorCode;
import com.farsitel.bazaar.data.entity.InstalledApp;
import com.farsitel.bazaar.data.entity.LocalDownloadedApp;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import com.farsitel.bazaar.data.entity.Location;
import com.farsitel.bazaar.data.entity.LoginResponse;
import com.farsitel.bazaar.data.entity.Place;
import com.farsitel.bazaar.data.entity.RequestProperties;
import com.farsitel.bazaar.data.entity.SearchPrediction;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import com.farsitel.bazaar.data.entity.WaitingTime;
import h.a.i;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: Mappers.kt */
public final class g {
    public static final ListItem.App a(UpgradableApp upgradableApp) {
        j.b(upgradableApp, "$this$toFlatPageItemApp");
        PageAppItem pageAppItem = new PageAppItem(upgradableApp.getPackageName(), upgradableApp.getName(), null, Long.valueOf(upgradableApp.getVersionCode()), null, upgradableApp.getPrice(), upgradableApp.getPriceString(), null, true, null, false, null, -1, -1, true, d.a(new c.l(), null, 1, null), null, null, null, null, null, 1966080, null);
        ListItem.App app = new ListItem.App(pageAppItem, false, false, 4, null);
        return app;
    }

    public static final LocalUpgradableApp b(UpgradableApp upgradableApp) {
        j.b(upgradableApp, "$this$toLocalUpgradableApp");
        LocalUpgradableApp localUpgradableApp = new LocalUpgradableApp(upgradableApp.getPackageName(), upgradableApp.getVersionCode(), upgradableApp.isFree(), upgradableApp.isUpdateNotified(), upgradableApp.isUpdateEnabled(), System.currentTimeMillis());
        return localUpgradableApp;
    }

    public static final CategoryItem a(b bVar) {
        j.b(bVar, "$this$toCategory");
        int b2 = bVar.b();
        String d2 = bVar.d();
        String c2 = bVar.c();
        Boolean a2 = bVar.a();
        boolean booleanValue = a2 != null ? a2.booleanValue() : false;
        String f2 = bVar.f();
        String e2 = bVar.e();
        if (e2 == null) {
            e2 = e.a();
        }
        CategoryItem categoryItem = new CategoryItem(b2, d2, c2, booleanValue, f2, e2);
        return categoryItem;
    }

    public static final long a(c.c.a.e.d.a.b.b.e eVar) {
        j.b(eVar, "$this$toWaitingTime");
        long a2 = eVar.a();
        WaitingTime.m2constructorimpl(a2);
        return a2;
    }

    public static final LoginResponse a(n nVar) {
        j.b(nVar, "$this$toLoginResponse");
        return new LoginResponse(nVar.b(), nVar.a());
    }

    public static final ErrorCode a(int i2) {
        ErrorCode errorCode;
        ErrorCode[] values = ErrorCode.values();
        int length = values.length;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                errorCode = null;
                break;
            }
            errorCode = values[i3];
            if (errorCode.getValue() == i2) {
                break;
            }
            i3++;
        }
        return errorCode != null ? errorCode : ErrorCode.UNKNOWN;
    }

    public static final ShortInfo a(ShortInfoDto shortInfoDto) {
        j.b(shortInfoDto, "$this$toVideoShotInfo");
        return new ShortInfo(shortInfoDto.getInfo(), shortInfoDto.getMoreInfo());
    }

    public static final GetUpgradableAppsRequestDto a(List<InstalledApp> list, int i2, RequestProperties requestProperties) {
        j.b(list, "$this$toDto");
        j.b(requestProperties, "properties");
        int sdkVersion = requestProperties.getAndroidClientInfo().getSdkVersion();
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (InstalledApp installedApp : list) {
            InstalledAppInfoRequest installedAppInfoRequest = new InstalledAppInfoRequest(installedApp.getPackageName(), installedApp.getVersionCode(), installedApp.getInstallDelta(), installedApp.getUpdateDelta(), installedApp.isPreInstall(), installedApp.getSign());
            arrayList.add(installedAppInfoRequest);
        }
        return new GetUpgradableAppsRequestDto(i2, sdkVersion, arrayList);
    }

    public static final Location a(android.location.Location location) {
        j.b(location, "$this$toLocationEntity");
        return new Location(location.getLatitude(), location.getLongitude());
    }

    public static final Place a(Address address, Location location) {
        j.b(address, "$this$toPlace");
        j.b(location, "location");
        String locality = address.getLocality();
        String str = locality != null ? locality : Place.NA;
        String adminArea = address.getAdminArea();
        String str2 = adminArea != null ? adminArea : Place.NA;
        String countryName = address.getCountryName();
        String str3 = countryName != null ? countryName : Place.NA;
        String countryCode = address.getCountryCode();
        if (countryCode == null) {
            countryCode = Place.NA;
        }
        Place place = new Place(str, str2, str3, countryCode, location, System.currentTimeMillis());
        return place;
    }

    public static final ListItem.App a(LocalDownloadedApp localDownloadedApp) {
        j.b(localDownloadedApp, "$this$toFlatPageApp");
        PageAppItem pageAppItem = new PageAppItem(localDownloadedApp.getPackageName(), localDownloadedApp.getName(), null, null, null, 0, null, null, true, null, false, null, -1, null, true, d.a(new c.g(), null, 1, null), null, null, null, null, null, 1966080, null);
        ListItem.App app = new ListItem.App(pageAppItem, false, false, 4, null);
        return app;
    }

    public static final LocalDownloadedApp a(DownloadedApp downloadedApp) {
        j.b(downloadedApp, "$this$toLocalDownloadedApp");
        LocalDownloadedApp localDownloadedApp = new LocalDownloadedApp(downloadedApp.getPackageName(), downloadedApp.getName(), downloadedApp.isFree(), System.currentTimeMillis());
        return localDownloadedApp;
    }

    public static final UpgradableApp a(LocalUpgradableApp localUpgradableApp) {
        j.b(localUpgradableApp, "$this$toUpgradableApp");
        UpgradableApp upgradableApp = new UpgradableApp(localUpgradableApp.getPackageName(), "", localUpgradableApp.isFree(), localUpgradableApp.getVersionCode(), localUpgradableApp.isNotified(), localUpgradableApp.isUpdateEnabled());
        return upgradableApp;
    }

    public static final InstalledApp a(PackageInfo packageInfo, Context context) {
        PackageInfo packageInfo2 = packageInfo;
        Context context2 = context;
        j.b(packageInfo2, "$this$toInstalledApp");
        j.b(context2, "context");
        String str = packageInfo2.packageName;
        j.a((Object) str, "packageName");
        String str2 = packageInfo2.packageName;
        j.a((Object) str2, "packageName");
        long b2 = h.b(packageInfo);
        String str3 = packageInfo2.versionName;
        j.a((Object) str3, "versionName");
        long j2 = (long) 60000;
        String[] b3 = c.c.a.c.h.b.b(context2, packageInfo2.packageName);
        j.a((Object) b3, "CodingUtils.getCertifica…ars(context, packageName)");
        InstalledApp installedApp = new InstalledApp(str, str2, b2, str3, (System.currentTimeMillis() - packageInfo2.firstInstallTime) / j2, (System.currentTimeMillis() - packageInfo2.lastUpdateTime) / j2, false, false, i.d(b3), 128, null);
        return installedApp;
    }

    public static final DownloadedVideoModel a(DownloadedVideoEntity downloadedVideoEntity) {
        j.b(downloadedVideoEntity, "$this$toDownloadedVideoModel");
        DownloadedVideoModel downloadedVideoModel = new DownloadedVideoModel(downloadedVideoEntity.getDownloadId(), downloadedVideoEntity.getVideoId(), downloadedVideoEntity.getVideoName(), downloadedVideoEntity.getVideoDesc(), downloadedVideoEntity.getVideoPath(), downloadedVideoEntity.getCoverUrl(), downloadedVideoEntity.getExpirationDate(), downloadedVideoEntity.getShareLink(), downloadedVideoEntity.getQualityString(), downloadedVideoEntity.getDownloadPriceType(), downloadedVideoEntity.getDownloadServerState());
        return downloadedVideoModel;
    }

    public static final DownloadedVideoEntity a(DownloadedVideoModel downloadedVideoModel) {
        j.b(downloadedVideoModel, "$this$toLocalDownloadedVideoEntity");
        DownloadedVideoEntity downloadedVideoEntity = new DownloadedVideoEntity(downloadedVideoModel.getVideoId(), downloadedVideoModel.getDownloadId(), downloadedVideoModel.getVideoName(), downloadedVideoModel.getVideoDesc(), downloadedVideoModel.getVideoPath(), downloadedVideoModel.getCoverUrl(), downloadedVideoModel.getExpirationDate(), downloadedVideoModel.getShareLink(), downloadedVideoModel.getQualityString(), downloadedVideoModel.getDownloadPriceType(), downloadedVideoModel.getDownloadServerState());
        return downloadedVideoEntity;
    }

    public static final SearchPrediction a(SearchPredictionItemDto searchPredictionItemDto) {
        String str;
        j.b(searchPredictionItemDto, "$this$toSearchPrediction");
        String type = searchPredictionItemDto.getType();
        if (type == null) {
            str = null;
        } else if (type != null) {
            str = type.toLowerCase();
            j.a((Object) str, "(this as java.lang.String).toLowerCase()");
        } else {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        if (str != null && str.hashCode() == 926934164 && str.equals("history")) {
            return new SearchPrediction.History(searchPredictionItemDto.getTitle(), searchPredictionItemDto.getSubtitle(), searchPredictionItemDto.getReferrer());
        }
        return new SearchPrediction.Normal(searchPredictionItemDto.getTitle(), searchPredictionItemDto.getSubtitle(), searchPredictionItemDto.getReferrer());
    }
}
