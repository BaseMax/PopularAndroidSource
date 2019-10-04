.class final Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;
.super Landroidx/room/migration/Migration;
.source "RecentSearchEntityFrom1To2.java"


# direct methods
.method constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-static {v0, v0, v1}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v1

    const/4 v2, 0x2

    .line 21
    invoke-static {v0, v0, v2}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v0

    .line 20
    invoke-direct {p0, v1, v0}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "CREATE TABLE IF NOT EXISTS `RecentSearchEntity` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `keyword` TEXT NOT NULL, `categoryId` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `productPrefix` TEXT, `thumbnail` BLOB, `searchResultCount` INTEGER NOT NULL, `isSpelledCorrectly` INTEGER NOT NULL, `sellerPrefix` TEXT)"

    .line 27
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
