package c.c.a.e.a;

import androidx.room.RoomDatabase;
import b.C.a.b;
import b.z.b.d;
import b.z.w;
import com.crashlytics.android.answers.SessionEventTransform;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.data.db.AppDatabase_Impl;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: AppDatabase_Impl */
class a extends w.a {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppDatabase_Impl f4863b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(AppDatabase_Impl appDatabase_Impl, int i2) {
        super(i2);
        this.f4863b = appDatabase_Impl;
    }

    public void a(b bVar) {
        bVar.b("CREATE TABLE IF NOT EXISTS `upgradable_app` (`packageName` TEXT NOT NULL, `versionCode` INTEGER NOT NULL, `packageWolf` INTEGER NOT NULL, `isNotified` INTEGER NOT NULL, `isUpdateEnabled` INTEGER NOT NULL, `lastUpdateTime` INTEGER NOT NULL, PRIMARY KEY(`packageName`))");
        bVar.b("CREATE TABLE IF NOT EXISTS `malicious_app` (`packageName` TEXT NOT NULL, `versionName` TEXT, `versionCode` INTEGER NOT NULL, `reasonTitle` TEXT, `reasonInfo` TEXT, `isNotified` INTEGER NOT NULL, PRIMARY KEY(`packageName`))");
        bVar.b("CREATE TABLE IF NOT EXISTS `comment` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `entityId` TEXT NOT NULL, `entityVersion` INTEGER NOT NULL, `text` TEXT, `rate` INTEGER NOT NULL, `entityType` INTEGER NOT NULL, `entityDatabaseStatus` INTEGER NOT NULL)");
        bVar.b("CREATE UNIQUE INDEX `index_comment_entityId` ON `comment` (`entityId`)");
        bVar.b("CREATE TABLE IF NOT EXISTS `commentAction` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `reviewId` INTEGER NOT NULL, `isReply` INTEGER NOT NULL, `entityType` INTEGER NOT NULL, `commentActionName` TEXT NOT NULL, `entityDatabaseStatus` INTEGER NOT NULL)");
        bVar.b("CREATE TABLE IF NOT EXISTS `downloaded_app` (`packageName` TEXT NOT NULL, `name` TEXT NOT NULL, `packageWolf` INTEGER NOT NULL, `createdAt` INTEGER NOT NULL, PRIMARY KEY(`packageName`))");
        bVar.b("CREATE TABLE IF NOT EXISTS `downloadedVideo` (`videoId` TEXT NOT NULL, `downloadId` TEXT NOT NULL, `videoName` TEXT NOT NULL, `videoDesc` TEXT, `videoPath` TEXT NOT NULL, `coverUrl` TEXT NOT NULL, `expirationDate` INTEGER NOT NULL, `shareLink` TEXT, `qualityString` TEXT NOT NULL, `downloadPriceType` INTEGER, `downloadServerState` INTEGER, PRIMARY KEY(`videoId`))");
        bVar.b("CREATE TABLE IF NOT EXISTS `bookmark` (`entityId` TEXT NOT NULL, `iconUrl` TEXT NOT NULL, `entityName` TEXT NOT NULL, `price` INTEGER NOT NULL, `priceString` TEXT, `bookmarkStatus` INTEGER NOT NULL, `entityDatabaseStatus` INTEGER NOT NULL, PRIMARY KEY(`entityId`))");
        bVar.b("CREATE TABLE IF NOT EXISTS `played_video` (`entityId` TEXT NOT NULL, `title` TEXT NOT NULL, `cover` TEXT, `serialId` TEXT, `episodeIdx` INTEGER, `seasonIdx` INTEGER, `type` INTEGER NOT NULL, `isLive` INTEGER NOT NULL, `date` INTEGER NOT NULL, `seasonEpisodeTitle` TEXT, `providerName` TEXT, PRIMARY KEY(`entityId`))");
        bVar.b("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        bVar.b("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'cc4d00ae6875015c8ababcf95fe05987')");
    }

    public void b(b bVar) {
        bVar.b("DROP TABLE IF EXISTS `upgradable_app`");
        bVar.b("DROP TABLE IF EXISTS `malicious_app`");
        bVar.b("DROP TABLE IF EXISTS `comment`");
        bVar.b("DROP TABLE IF EXISTS `commentAction`");
        bVar.b("DROP TABLE IF EXISTS `downloaded_app`");
        bVar.b("DROP TABLE IF EXISTS `downloadedVideo`");
        bVar.b("DROP TABLE IF EXISTS `bookmark`");
        bVar.b("DROP TABLE IF EXISTS `played_video`");
    }

    public void c(b bVar) {
        if (this.f4863b.f944h != null) {
            int size = this.f4863b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f4863b.f944h.get(i2)).a(bVar);
            }
        }
    }

    public void d(b bVar) {
        b unused = this.f4863b.f937a = bVar;
        this.f4863b.a(bVar);
        if (this.f4863b.f944h != null) {
            int size = this.f4863b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f4863b.f944h.get(i2)).b(bVar);
            }
        }
    }

    public void e(b bVar) {
    }

    public void f(b bVar) {
        b.z.b.b.a(bVar);
    }

    public void g(b bVar) {
        b bVar2 = bVar;
        HashMap hashMap = new HashMap(6);
        hashMap.put("packageName", new d.a("packageName", "TEXT", true, 1));
        hashMap.put("versionCode", new d.a("versionCode", "INTEGER", true, 0));
        hashMap.put("packageWolf", new d.a("packageWolf", "INTEGER", true, 0));
        hashMap.put("isNotified", new d.a("isNotified", "INTEGER", true, 0));
        hashMap.put("isUpdateEnabled", new d.a("isUpdateEnabled", "INTEGER", true, 0));
        hashMap.put("lastUpdateTime", new d.a("lastUpdateTime", "INTEGER", true, 0));
        d dVar = new d("upgradable_app", hashMap, new HashSet(0), new HashSet(0));
        d a2 = d.a(bVar2, "upgradable_app");
        if (dVar.equals(a2)) {
            HashMap hashMap2 = new HashMap(6);
            hashMap2.put("packageName", new d.a("packageName", "TEXT", true, 1));
            hashMap2.put("versionName", new d.a("versionName", "TEXT", false, 0));
            hashMap2.put("versionCode", new d.a("versionCode", "INTEGER", true, 0));
            hashMap2.put("reasonTitle", new d.a("reasonTitle", "TEXT", false, 0));
            hashMap2.put("reasonInfo", new d.a("reasonInfo", "TEXT", false, 0));
            hashMap2.put("isNotified", new d.a("isNotified", "INTEGER", true, 0));
            d dVar2 = new d("malicious_app", hashMap2, new HashSet(0), new HashSet(0));
            d a3 = d.a(bVar2, "malicious_app");
            if (dVar2.equals(a3)) {
                HashMap hashMap3 = new HashMap(7);
                hashMap3.put("id", new d.a("id", "INTEGER", false, 1));
                hashMap3.put("entityId", new d.a("entityId", "TEXT", true, 0));
                hashMap3.put("entityVersion", new d.a("entityVersion", "INTEGER", true, 0));
                hashMap3.put("text", new d.a("text", "TEXT", false, 0));
                hashMap3.put("rate", new d.a("rate", "INTEGER", true, 0));
                hashMap3.put("entityType", new d.a("entityType", "INTEGER", true, 0));
                hashMap3.put("entityDatabaseStatus", new d.a("entityDatabaseStatus", "INTEGER", true, 0));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(1);
                String str = "\n Found:\n";
                hashSet2.add(new d.C0048d("index_comment_entityId", true, Arrays.asList(new String[]{"entityId"})));
                d dVar3 = new d("comment", hashMap3, hashSet, hashSet2);
                d a4 = d.a(bVar2, "comment");
                if (dVar3.equals(a4)) {
                    HashMap hashMap4 = new HashMap(6);
                    hashMap4.put("id", new d.a("id", "INTEGER", false, 1));
                    hashMap4.put("reviewId", new d.a("reviewId", "INTEGER", true, 0));
                    hashMap4.put("isReply", new d.a("isReply", "INTEGER", true, 0));
                    hashMap4.put("entityType", new d.a("entityType", "INTEGER", true, 0));
                    hashMap4.put("commentActionName", new d.a("commentActionName", "TEXT", true, 0));
                    hashMap4.put("entityDatabaseStatus", new d.a("entityDatabaseStatus", "INTEGER", true, 0));
                    d dVar4 = new d("commentAction", hashMap4, new HashSet(0), new HashSet(0));
                    d a5 = d.a(bVar2, "commentAction");
                    if (dVar4.equals(a5)) {
                        HashMap hashMap5 = new HashMap(4);
                        hashMap5.put("packageName", new d.a("packageName", "TEXT", true, 1));
                        hashMap5.put(DefaultAppMeasurementEventListenerRegistrar.NAME, new d.a(DefaultAppMeasurementEventListenerRegistrar.NAME, "TEXT", true, 0));
                        hashMap5.put("packageWolf", new d.a("packageWolf", "INTEGER", true, 0));
                        hashMap5.put("createdAt", new d.a("createdAt", "INTEGER", true, 0));
                        d dVar5 = new d("downloaded_app", hashMap5, new HashSet(0), new HashSet(0));
                        d a6 = d.a(bVar2, "downloaded_app");
                        if (dVar5.equals(a6)) {
                            HashMap hashMap6 = new HashMap(11);
                            hashMap6.put("videoId", new d.a("videoId", "TEXT", true, 1));
                            hashMap6.put("downloadId", new d.a("downloadId", "TEXT", true, 0));
                            hashMap6.put("videoName", new d.a("videoName", "TEXT", true, 0));
                            hashMap6.put("videoDesc", new d.a("videoDesc", "TEXT", false, 0));
                            hashMap6.put("videoPath", new d.a("videoPath", "TEXT", true, 0));
                            hashMap6.put("coverUrl", new d.a("coverUrl", "TEXT", true, 0));
                            hashMap6.put("expirationDate", new d.a("expirationDate", "INTEGER", true, 0));
                            hashMap6.put("shareLink", new d.a("shareLink", "TEXT", false, 0));
                            hashMap6.put("qualityString", new d.a("qualityString", "TEXT", true, 0));
                            hashMap6.put("downloadPriceType", new d.a("downloadPriceType", "INTEGER", false, 0));
                            hashMap6.put("downloadServerState", new d.a("downloadServerState", "INTEGER", false, 0));
                            d dVar6 = new d("downloadedVideo", hashMap6, new HashSet(0), new HashSet(0));
                            d a7 = d.a(bVar2, "downloadedVideo");
                            if (dVar6.equals(a7)) {
                                HashMap hashMap7 = new HashMap(7);
                                hashMap7.put("entityId", new d.a("entityId", "TEXT", true, 1));
                                hashMap7.put("iconUrl", new d.a("iconUrl", "TEXT", true, 0));
                                hashMap7.put("entityName", new d.a("entityName", "TEXT", true, 0));
                                hashMap7.put("price", new d.a("price", "INTEGER", true, 0));
                                hashMap7.put("priceString", new d.a("priceString", "TEXT", false, 0));
                                hashMap7.put("bookmarkStatus", new d.a("bookmarkStatus", "INTEGER", true, 0));
                                hashMap7.put("entityDatabaseStatus", new d.a("entityDatabaseStatus", "INTEGER", true, 0));
                                d dVar7 = new d("bookmark", hashMap7, new HashSet(0), new HashSet(0));
                                d a8 = d.a(bVar2, "bookmark");
                                if (dVar7.equals(a8)) {
                                    HashMap hashMap8 = new HashMap(11);
                                    hashMap8.put("entityId", new d.a("entityId", "TEXT", true, 1));
                                    hashMap8.put("title", new d.a("title", "TEXT", true, 0));
                                    hashMap8.put("cover", new d.a("cover", "TEXT", false, 0));
                                    hashMap8.put("serialId", new d.a("serialId", "TEXT", false, 0));
                                    hashMap8.put("episodeIdx", new d.a("episodeIdx", "INTEGER", false, 0));
                                    hashMap8.put("seasonIdx", new d.a("seasonIdx", "INTEGER", false, 0));
                                    hashMap8.put(SessionEventTransform.TYPE_KEY, new d.a(SessionEventTransform.TYPE_KEY, "INTEGER", true, 0));
                                    hashMap8.put("isLive", new d.a("isLive", "INTEGER", true, 0));
                                    hashMap8.put("date", new d.a("date", "INTEGER", true, 0));
                                    hashMap8.put("seasonEpisodeTitle", new d.a("seasonEpisodeTitle", "TEXT", false, 0));
                                    hashMap8.put("providerName", new d.a("providerName", "TEXT", false, 0));
                                    d dVar8 = new d("played_video", hashMap8, new HashSet(0), new HashSet(0));
                                    d a9 = d.a(bVar2, "played_video");
                                    if (!dVar8.equals(a9)) {
                                        throw new IllegalStateException("Migration didn't properly handle played_video(com.farsitel.bazaar.data.feature.played.local.PlayedVideoEntity).\n Expected:\n" + dVar8 + str + a9);
                                    }
                                    return;
                                }
                                throw new IllegalStateException("Migration didn't properly handle bookmark(com.farsitel.bazaar.data.feature.bookmark.local.BookmarkEntity).\n Expected:\n" + dVar7 + str + a8);
                            }
                            throw new IllegalStateException("Migration didn't properly handle downloadedVideo(com.farsitel.bazaar.data.entity.DownloadedVideoEntity).\n Expected:\n" + dVar6 + str + a7);
                        }
                        throw new IllegalStateException("Migration didn't properly handle downloaded_app(com.farsitel.bazaar.data.entity.LocalDownloadedApp).\n Expected:\n" + dVar5 + str + a6);
                    }
                    throw new IllegalStateException("Migration didn't properly handle commentAction(com.farsitel.bazaar.data.feature.review.action.local.LocalCommentActionEntity).\n Expected:\n" + dVar4 + str + a5);
                }
                throw new IllegalStateException("Migration didn't properly handle comment(com.farsitel.bazaar.data.entity.LocalCommentEntity).\n Expected:\n" + dVar3 + str + a4);
            }
            throw new IllegalStateException("Migration didn't properly handle malicious_app(com.farsitel.bazaar.data.entity.MaliciousAppEntity).\n Expected:\n" + dVar2 + "\n Found:\n" + a3);
        }
        throw new IllegalStateException("Migration didn't properly handle upgradable_app(com.farsitel.bazaar.data.entity.LocalUpgradableApp).\n Expected:\n" + dVar + "\n Found:\n" + a2);
    }
}
