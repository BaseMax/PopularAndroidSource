.class public Lc/c/a/e/a/a;
.super Lb/z/w$a;
.source "AppDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->a(Lb/z/c;)Lb/C/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-direct {p0, p2}, Lb/z/w$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `upgradable_app` (`packageName` TEXT NOT NULL, `versionCode` INTEGER NOT NULL, `packageWolf` INTEGER NOT NULL, `isNotified` INTEGER NOT NULL, `isUpdateEnabled` INTEGER NOT NULL, `lastUpdateTime` INTEGER NOT NULL, PRIMARY KEY(`packageName`))"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `malicious_app` (`packageName` TEXT NOT NULL, `versionName` TEXT, `versionCode` INTEGER NOT NULL, `reasonTitle` TEXT, `reasonInfo` TEXT, `isNotified` INTEGER NOT NULL, PRIMARY KEY(`packageName`))"

    .line 2
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `comment` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `entityId` TEXT NOT NULL, `entityVersion` INTEGER NOT NULL, `text` TEXT, `rate` INTEGER NOT NULL, `entityType` INTEGER NOT NULL, `entityDatabaseStatus` INTEGER NOT NULL)"

    .line 3
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX `index_comment_entityId` ON `comment` (`entityId`)"

    .line 4
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `commentAction` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `reviewId` INTEGER NOT NULL, `isReply` INTEGER NOT NULL, `entityType` INTEGER NOT NULL, `commentActionName` TEXT NOT NULL, `entityDatabaseStatus` INTEGER NOT NULL)"

    .line 5
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `downloaded_app` (`packageName` TEXT NOT NULL, `name` TEXT NOT NULL, `packageWolf` INTEGER NOT NULL, `createdAt` INTEGER NOT NULL, PRIMARY KEY(`packageName`))"

    .line 6
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `downloadedVideo` (`videoId` TEXT NOT NULL, `downloadId` TEXT NOT NULL, `videoName` TEXT NOT NULL, `videoDesc` TEXT, `videoPath` TEXT NOT NULL, `coverUrl` TEXT NOT NULL, `expirationDate` INTEGER NOT NULL, `shareLink` TEXT, `qualityString` TEXT NOT NULL, `downloadPriceType` INTEGER, `downloadServerState` INTEGER, PRIMARY KEY(`videoId`))"

    .line 7
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `bookmark` (`entityId` TEXT NOT NULL, `iconUrl` TEXT NOT NULL, `entityName` TEXT NOT NULL, `price` INTEGER NOT NULL, `priceString` TEXT, `bookmarkStatus` INTEGER NOT NULL, `entityDatabaseStatus` INTEGER NOT NULL, PRIMARY KEY(`entityId`))"

    .line 8
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `played_video` (`entityId` TEXT NOT NULL, `title` TEXT NOT NULL, `cover` TEXT, `serialId` TEXT, `episodeIdx` INTEGER, `seasonIdx` INTEGER, `type` INTEGER NOT NULL, `isLive` INTEGER NOT NULL, `date` INTEGER NOT NULL, `seasonEpisodeTitle` TEXT, `providerName` TEXT, PRIMARY KEY(`entityId`))"

    .line 9
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 10
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'cc4d00ae6875015c8ababcf95fe05987\')"

    .line 11
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lb/C/a/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `upgradable_app`"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `malicious_app`"

    .line 2
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `comment`"

    .line 3
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `commentAction`"

    .line 4
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `downloaded_app`"

    .line 5
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `downloadedVideo`"

    .line 6
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `bookmark`"

    .line 7
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `played_video`"

    .line 8
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lb/C/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->a(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v1}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->b(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v2}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->c(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->a(Lb/C/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lb/C/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->a(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;

    .line 2
    iget-object v0, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->b(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;Lb/C/a/b;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->d(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v1}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->e(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p0, Lc/c/a/e/a/a;->b:Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;

    invoke-static {v2}, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->f(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->b(Lb/C/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lb/C/a/b;)V
    .locals 0

    return-void
.end method

.method public f(Lb/C/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/z/b/b;->a(Lb/C/a/b;)V

    return-void
.end method

.method public g(Lb/C/a/b;)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v3, Lb/z/b/d$a;

    const-string v4, "packageName"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "versionCode"

    const-string v8, "INTEGER"

    const/4 v9, 0x0

    invoke-direct {v3, v7, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Lb/z/b/d$a;

    const-string v10, "packageWolf"

    invoke-direct {v3, v10, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "isNotified"

    invoke-direct {v3, v11, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v3, Lb/z/b/d$a;

    const-string v12, "isUpdateEnabled"

    invoke-direct {v3, v12, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Lb/z/b/d$a;

    const-string v12, "lastUpdateTime"

    invoke-direct {v3, v12, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v12, "lastUpdateTime"

    invoke-virtual {v1, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 9
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 10
    new-instance v13, Lb/z/b/d;

    const-string v14, "upgradable_app"

    invoke-direct {v13, v14, v1, v3, v12}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "upgradable_app"

    .line 11
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 12
    invoke-virtual {v13, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v12, "\n Found:\n"

    if-eqz v3, :cond_7

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 14
    new-instance v3, Lb/z/b/d$a;

    invoke-direct {v3, v4, v5, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v3, Lb/z/b/d$a;

    const-string v13, "versionName"

    invoke-direct {v3, v13, v5, v9, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "versionName"

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v3, Lb/z/b/d$a;

    invoke-direct {v3, v7, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "reasonTitle"

    invoke-direct {v3, v7, v5, v9, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "reasonTitle"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "reasonInfo"

    invoke-direct {v3, v7, v5, v9, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "reasonInfo"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v3, Lb/z/b/d$a;

    invoke-direct {v3, v11, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 21
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 22
    new-instance v11, Lb/z/b/d;

    const-string v13, "malicious_app"

    invoke-direct {v11, v13, v1, v3, v7}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "malicious_app"

    .line 23
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 24
    invoke-virtual {v11, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 26
    new-instance v3, Lb/z/b/d$a;

    const-string v7, "id"

    invoke-direct {v3, v7, v8, v9, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v3, Lb/z/b/d$a;

    const-string v11, "entityId"

    invoke-direct {v3, v11, v5, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lb/z/b/d$a;

    const-string v13, "entityVersion"

    invoke-direct {v3, v13, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "entityVersion"

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v3, Lb/z/b/d$a;

    const-string v13, "text"

    invoke-direct {v3, v13, v5, v9, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "text"

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v3, Lb/z/b/d$a;

    const-string v13, "rate"

    invoke-direct {v3, v13, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v13, "rate"

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v3, Lb/z/b/d$a;

    const-string v13, "entityType"

    invoke-direct {v3, v13, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v3, Lb/z/b/d$a;

    const-string v14, "entityDatabaseStatus"

    invoke-direct {v3, v14, v8, v6, v9}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v9}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 35
    new-instance v2, Lb/z/b/d$d;

    move-object/from16 v16, v12

    new-array v12, v6, [Ljava/lang/String;

    aput-object v11, v12, v9

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const-string v9, "index_comment_entityId"

    invoke-direct {v2, v9, v6, v12}, Lb/z/b/d$d;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lb/z/b/d;

    const-string v9, "comment"

    invoke-direct {v2, v9, v1, v3, v15}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "comment"

    .line 37
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 39
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    new-instance v2, Lb/z/b/d$a;

    const/4 v3, 0x0

    invoke-direct {v2, v7, v8, v3, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v2, Lb/z/b/d$a;

    const-string v7, "reviewId"

    invoke-direct {v2, v7, v8, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "reviewId"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Lb/z/b/d$a;

    const-string v7, "isReply"

    invoke-direct {v2, v7, v8, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "isReply"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v13, v8, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Lb/z/b/d$a;

    const-string v7, "commentActionName"

    invoke-direct {v2, v7, v5, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v7, "commentActionName"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v14, v8, v6, v3}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 47
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 48
    new-instance v3, Lb/z/b/d;

    const-string v9, "commentAction"

    invoke-direct {v3, v9, v1, v2, v7}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "commentAction"

    .line 49
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 50
    invoke-virtual {v3, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 52
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v4, v5, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "name"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v10, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "createdAt"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "createdAt"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 57
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 58
    new-instance v4, Lb/z/b/d;

    const-string v7, "downloaded_app"

    invoke-direct {v4, v7, v1, v2, v3}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "downloaded_app"

    .line 59
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 60
    invoke-virtual {v4, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "videoId"

    invoke-direct {v2, v3, v5, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "videoId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "downloadId"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "downloadId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "videoName"

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "videoName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "videoDesc"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "videoDesc"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "videoPath"

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "videoPath"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "coverUrl"

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "coverUrl"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "expirationDate"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "expirationDate"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "shareLink"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "shareLink"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "qualityString"

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "qualityString"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "downloadPriceType"

    invoke-direct {v2, v3, v8, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "downloadPriceType"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "downloadServerState"

    invoke-direct {v2, v3, v8, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "downloadServerState"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 74
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 75
    new-instance v4, Lb/z/b/d;

    const-string v7, "downloadedVideo"

    invoke-direct {v4, v7, v1, v2, v3}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "downloadedVideo"

    .line 76
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 77
    invoke-virtual {v4, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v11, v5, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "iconUrl"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "iconUrl"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "entityName"

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "entityName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "price"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "price"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "priceString"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "priceString"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "bookmarkStatus"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "bookmarkStatus"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v14, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 87
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 88
    new-instance v4, Lb/z/b/d;

    const-string v7, "bookmark"

    invoke-direct {v4, v7, v1, v2, v3}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "bookmark"

    .line 89
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v1

    .line 90
    invoke-virtual {v4, v1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 92
    new-instance v2, Lb/z/b/d$a;

    invoke-direct {v2, v11, v5, v6, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "title"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v5, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "cover"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "cover"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "serialId"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "serialId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "episodeIdx"

    invoke-direct {v2, v3, v8, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "episodeIdx"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "seasonIdx"

    invoke-direct {v2, v3, v8, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "seasonIdx"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "type"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "isLive"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "isLive"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "date"

    invoke-direct {v2, v3, v8, v6, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "seasonEpisodeTitle"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "seasonEpisodeTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v2, Lb/z/b/d$a;

    const-string v3, "providerName"

    invoke-direct {v2, v3, v5, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    const-string v3, "providerName"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 104
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 105
    new-instance v4, Lb/z/b/d;

    const-string v5, "played_video"

    invoke-direct {v4, v5, v1, v2, v3}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    const-string v1, "played_video"

    .line 106
    invoke-static {v0, v1}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object v0

    .line 107
    invoke-virtual {v4, v0}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle played_video(com.farsitel.bazaar.data.feature.played.local.PlayedVideoEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object/from16 v5, v16

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle bookmark(com.farsitel.bazaar.data.feature.bookmark.local.BookmarkEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v5, v16

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle downloadedVideo(com.farsitel.bazaar.data.entity.DownloadedVideoEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v5, v16

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle downloaded_app(com.farsitel.bazaar.data.entity.LocalDownloadedApp).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v5, v16

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration didn\'t properly handle commentAction(com.farsitel.bazaar.data.feature.review.action.local.LocalCommentActionEntity).\n Expected:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v5, v16

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migration didn\'t properly handle comment(com.farsitel.bazaar.data.entity.LocalCommentEntity).\n Expected:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v5, v12

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle malicious_app(com.farsitel.bazaar.data.entity.MaliciousAppEntity).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v5, v12

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration didn\'t properly handle upgradable_app(com.farsitel.bazaar.data.entity.LocalUpgradableApp).\n Expected:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
