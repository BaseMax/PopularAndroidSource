.class public final Lcom/ebay/db/annotation/processor/EbayDatabaseAutomaticMigrations;
.super Ljava/lang/Object;
.source "EbayDatabaseAutomaticMigrations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionMigrations()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/annotation/api/VersionMigration;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/ebay/db/annotation/api/EntityMigration;

    const-string v1, "DROP TABLE IF EXISTS `dcs_property`"

    const-string v2, "CREATE TABLE IF NOT EXISTS `dcs_property` (`state_lastUpdate` INTEGER NOT NULL, `state_ebaySite` TEXT NOT NULL, `state_rolloutThreshold` REAL NOT NULL, `state_devOverridesEnabled` INTEGER NOT NULL, `state_country` TEXT, `state_language` TEXT, `state_isGbh` INTEGER, `state_lastServiceUpdate` INTEGER, `state_entityTag` TEXT, `propertyName` TEXT NOT NULL, `priority` INTEGER NOT NULL, `type` TEXT NOT NULL, `textValue` TEXT, `integerValue` INTEGER, `realValue` REAL, `sites` TEXT, `countryCodes` TEXT, `languageCodes` TEXT, `qaModes` TEXT, `isGbh` INTEGER, `rolloutThreshold` REAL, `minAndroidSdk` INTEGER, `descriptor` TEXT, PRIMARY KEY(`propertyName`, `priority`))"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/db/annotation/api/EntityMigration;-><init>(Ljava/util/List;)V

    .line 19
    new-instance v1, Lcom/ebay/db/annotation/api/EntityMigration;

    const-string v2, "DROP TABLE IF EXISTS `opt_in_treatment`"

    const-string v3, "CREATE TABLE IF NOT EXISTS `opt_in_treatment` (`name` TEXT NOT NULL, `id` TEXT NOT NULL, `optedIn` INTEGER NOT NULL, `isEnabled` INTEGER NOT NULL, `lastUpdate` INTEGER NOT NULL, `experimentName` TEXT, `experimentId` TEXT, `experimentType` TEXT, PRIMARY KEY(`id`))"

    const-string v4, "DROP INDEX IF EXISTS `experiment`"

    const-string v5, "CREATE  INDEX `experiment` ON `opt_in_treatment` (`experimentName`, `experimentId`, `experimentType`)"

    const-string v6, "DROP INDEX IF EXISTS `index_opt_in_treatment_id`"

    const-string v7, "CREATE  INDEX `index_opt_in_treatment_id` ON `opt_in_treatment` (`id`)"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/db/annotation/api/EntityMigration;-><init>(Ljava/util/List;)V

    const/4 v2, 0x3

    .line 27
    new-array v2, v2, [Lcom/ebay/db/annotation/api/VersionMigration;

    new-instance v3, Lcom/ebay/db/annotation/api/VersionMigration;

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const v5, 0x7ac10

    const v6, 0x7acd8

    invoke-direct {v3, v5, v6, v4}, Lcom/ebay/db/annotation/api/VersionMigration;-><init>(IILjava/util/List;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/ebay/db/annotation/api/VersionMigration;

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/ebay/db/annotation/api/EntityMigration;

    aput-object v0, v6, v4

    const/4 v4, 0x1

    aput-object v1, v6, v4

    .line 29
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const v6, 0x7ada0

    const v7, 0x7ad3c

    invoke-direct {v3, v7, v6, v1}, Lcom/ebay/db/annotation/api/VersionMigration;-><init>(IILjava/util/List;)V

    aput-object v3, v2, v4

    new-instance v1, Lcom/ebay/db/annotation/api/VersionMigration;

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const v3, 0x7ae04

    invoke-direct {v1, v6, v3, v0}, Lcom/ebay/db/annotation/api/VersionMigration;-><init>(IILjava/util/List;)V

    aput-object v1, v2, v5

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
