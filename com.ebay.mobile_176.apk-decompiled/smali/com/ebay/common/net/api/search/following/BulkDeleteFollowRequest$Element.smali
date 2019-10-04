.class public Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;
.super Ljava/lang/Object;
.source "BulkDeleteFollowRequest.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Element"
.end annotation


# instance fields
.field entityId:Ljava/lang/String;

.field entityType:Ljava/lang/String;

.field operationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/FollowType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityType:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 68
    iput-object p2, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityId:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityId:Ljava/lang/String;

    :goto_0
    const-string p1, "UNFOLLOW"

    .line 70
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->operationType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 86
    instance-of v0, p1, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 89
    :cond_0
    check-cast p1, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;

    .line 90
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityType:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityId:Ljava/lang/String;

    iget-object v2, p1, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityId:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->operationType:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->operationType:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->entityId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v1, p0, Lcom/ebay/common/net/api/search/following/BulkDeleteFollowRequest$Element;->operationType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
