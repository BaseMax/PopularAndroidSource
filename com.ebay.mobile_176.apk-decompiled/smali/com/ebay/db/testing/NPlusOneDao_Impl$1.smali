.class Lcom/ebay/db/testing/NPlusOneDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "NPlusOneDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/testing/NPlusOneDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/ebay/db/testing/NPlusOneEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/testing/NPlusOneDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/testing/NPlusOneDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$1;->this$0:Lcom/ebay/db/testing/NPlusOneDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/testing/NPlusOneEntity;)V
    .locals 3

    .line 38
    iget-wide v0, p2, Lcom/ebay/db/testing/NPlusOneEntity;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 39
    invoke-virtual {p2}, Lcom/ebay/db/testing/NPlusOneEntity;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 40
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/db/testing/NPlusOneEntity;->getRequestUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/ebay/db/testing/NPlusOneEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/testing/NPlusOneDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/testing/NPlusOneEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `n_plus_one`(`_id`,`request_url`) VALUES (nullif(?, 0),?)"

    return-object v0
.end method
