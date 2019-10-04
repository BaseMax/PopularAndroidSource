.class public Lcom/ebay/db/migrations/NPlusOneEntityFrom5_30_0To5_31_0;
.super Landroidx/room/migration/Migration;
.source "NPlusOneEntityFrom5_30_0To5_31_0.java"


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/16 v2, 0x1e

    .line 16
    invoke-static {v1, v2, v0}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v2

    const/16 v3, 0x1f

    .line 17
    invoke-static {v1, v3, v0}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v0

    .line 16
    invoke-direct {p0, v2, v0}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CREATE TABLE IF NOT EXISTS `n_plus_one` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `request_url` TEXT)"

    .line 23
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_NPlusOneEntity__id` ON `n_plus_one` (`_id`)"

    .line 26
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_NPlusOneEntity_request_url` ON `n_plus_one` (`request_url`)"

    .line 27
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
