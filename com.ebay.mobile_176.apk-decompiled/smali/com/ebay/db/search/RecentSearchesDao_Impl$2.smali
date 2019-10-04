.class Lcom/ebay/db/search/RecentSearchesDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/ebay/db/search/RecentSearchEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/search/RecentSearchesDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl$2;->this$0:Lcom/ebay/db/search/RecentSearchesDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/search/RecentSearchEntity;)V
    .locals 4

    .line 96
    iget-wide v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->uid:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 97
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->userId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->userId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    :goto_0
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->keyword:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 103
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->keyword:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :goto_1
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 108
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 110
    :cond_2
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl$2;->this$0:Lcom/ebay/db/search/RecentSearchesDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/search/RecentSearchesDao_Impl;->access$000(Lcom/ebay/db/search/RecentSearchesDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/search/RecentSearchEntity;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/DateTypeConverter;->fromDate(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 115
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 119
    :goto_3
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->productPrefix:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 120
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 122
    :cond_4
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->productPrefix:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 124
    :goto_4
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->thumbnail:[B

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 125
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 127
    :cond_5
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->thumbnail:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_5
    const/16 v0, 0x8

    .line 129
    iget v1, p2, Lcom/ebay/db/search/RecentSearchEntity;->searchResultCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 131
    iget-boolean v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->isSpelledCorrectly:Z

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 132
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 133
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->sellerPrefix:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 134
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 136
    :cond_6
    iget-object v0, p2, Lcom/ebay/db/search/RecentSearchEntity;->sellerPrefix:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xb

    .line 138
    iget-wide v1, p2, Lcom/ebay/db/search/RecentSearchEntity;->uid:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p2, Lcom/ebay/db/search/RecentSearchEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/search/RecentSearchesDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/search/RecentSearchEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `RecentSearchEntity` SET `uid` = ?,`userId` = ?,`keyword` = ?,`categoryId` = ?,`timestamp` = ?,`productPrefix` = ?,`thumbnail` = ?,`searchResultCount` = ?,`isSpelledCorrectly` = ?,`sellerPrefix` = ? WHERE `uid` = ?"

    return-object v0
.end method
