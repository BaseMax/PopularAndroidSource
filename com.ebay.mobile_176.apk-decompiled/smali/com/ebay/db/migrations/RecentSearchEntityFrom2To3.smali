.class final Lcom/ebay/db/migrations/RecentSearchEntityFrom2To3;
.super Landroidx/room/migration/Migration;
.source "RecentSearchEntityFrom2To3.java"


# direct methods
.method constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 20
    invoke-static {v0, v0, v1}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v1

    const/4 v2, 0x3

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

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_RecentSearchEntity_thumbnail` ON `RecentSearchEntity` (`thumbnail`)"

    .line 27
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
