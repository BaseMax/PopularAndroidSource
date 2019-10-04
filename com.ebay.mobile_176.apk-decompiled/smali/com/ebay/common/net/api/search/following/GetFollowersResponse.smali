.class public Lcom/ebay/common/net/api/search/following/GetFollowersResponse;
.super Lcom/ebay/nautilus/domain/net/EbayCosResponse;
.source "GetFollowersResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/following/GetFollowersResponse$FollowerResponse;
    }
.end annotation


# instance fields
.field public followerSummary:Lcom/ebay/common/net/api/search/following/FollowerSummary;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/domain/net/EbayCosResponse;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/ebay/common/net/api/search/following/FollowerSummary;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/FollowerSummary;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/GetFollowersResponse;->followerSummary:Lcom/ebay/common/net/api/search/following/FollowerSummary;

    .line 30
    const-class v0, Lcom/ebay/common/net/api/search/following/GetFollowersResponse$FollowerResponse;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/common/net/api/search/following/GetFollowersResponse;->readJsonStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/following/GetFollowersResponse$FollowerResponse;

    .line 31
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/GetFollowersResponse;->followerSummary:Lcom/ebay/common/net/api/search/following/FollowerSummary;

    iget-object p1, p1, Lcom/ebay/common/net/api/search/following/GetFollowersResponse$FollowerResponse;->total:Ljava/lang/Integer;

    iput-object p1, v0, Lcom/ebay/common/net/api/search/following/FollowerSummary;->followerCount:Ljava/lang/Integer;

    return-void
.end method
