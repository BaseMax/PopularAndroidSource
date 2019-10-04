.class public Lcom/ebay/db/migrations/RecentSearchEntityFrom3To5_28_0;
.super Landroidx/room/migration/Migration;
.source "RecentSearchEntityFrom3To5_28_0.java"


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 17
    invoke-static {v0, v0, v1}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0x1c

    .line 18
    invoke-static {v2, v3, v0}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    move-result v0

    .line 17
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

    const-string v0, "DELETE FROM `RecentSearchEntity` "

    .line 25
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE RecentSearchEntity ADD COLUMN userId TEXT"

    .line 26
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_RecentSearchEntity_userId` ON `RecentSearchEntity` (`userId`)"

    .line 27
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
