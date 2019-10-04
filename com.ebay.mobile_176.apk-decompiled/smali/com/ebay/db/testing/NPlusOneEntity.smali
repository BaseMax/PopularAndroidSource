.class public Lcom/ebay/db/testing/NPlusOneEntity;
.super Ljava/lang/Object;
.source "NPlusOneEntity.java"


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            unique = true
            value = {
                "request_url"
            }
        .end subannotation
    }
    tableName = "n_plus_one"
.end annotation


# instance fields
.field public id:J
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private requestUrl:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "request_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/ebay/db/testing/NPlusOneEntity;

    if-nez v1, :cond_1

    return v0

    .line 57
    :cond_1
    check-cast p1, Lcom/ebay/db/testing/NPlusOneEntity;

    .line 58
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneEntity;->requestUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/db/testing/NPlusOneEntity;->requestUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneEntity;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneEntity;->requestUrl:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/db/testing/NPlusOneEntity;->requestUrl:Ljava/lang/String;

    return-void
.end method
