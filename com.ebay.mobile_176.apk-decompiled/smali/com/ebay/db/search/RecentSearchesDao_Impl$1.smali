.class Lcom/ebay/db/search/RecentSearchesDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "RecentSearchesDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/search/RecentSearchesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/ebay/db/search/RecentSearchEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/search/RecentSearchesDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl$1;->this$0:Lcom/ebay/db/search/RecentSearchesDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/search/RecentSearchEntity;)V
    .locals 4

    .line 44
    iget-wide v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->uid:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 45
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->userId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->userId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    :goto_0
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->keyword:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->keyword:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_1
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 58
    :cond_2
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_2
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl$1;->this$0:Lcom/ebay/db/search/RecentSearchesDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/search/RecentSearchesDao_Impl;->access$000(Lcom/ebay/db/search/RecentSearchesDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/search/RecentSearchEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 63
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 67
    :goto_3
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->productPrefix:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 68
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 70
    :cond_4
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->productPrefix:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 72
    :goto_4
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->thumbnail:[B

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 73
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 75
    :cond_5
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->thumbnail:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_5
    const/16 v0, 0x8

    .line 77
    iget v1, p2, Lcom/ebay/db/search/RecentSearchEntity;->searchResultCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    iget-boolean v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->isSpelledCorrectly:Z

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 80
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 81
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->sellerPrefix:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 82
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 84
    :cond_6
    iget-object p2, p2, Lcom/ebay/db/search/RecentSearchEntity;->sellerPrefix:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_6
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/ebay/db/search/RecentSearchEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/search/RecentSearchesDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/search/RecentSearchEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `RecentSearchEntity`(`uid`,`userId`,`keyword`,`categoryId`,`timestamp`,`productPrefix`,`thumbnail`,`searchResultCount`,`isSpelledCorrectly`,`sellerPrefix`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
