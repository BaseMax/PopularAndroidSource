.class public Lcom/ebay/common/net/api/search/following/GetFollowsResponse;
.super Lcom/ebay/nautilus/domain/net/EbayCosResponse;
.source "GetFollowsResponse.java"


# instance fields
.field public follows:Lcom/ebay/common/model/search/following/FollowList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 18
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

    .line 24
    const-class v0, Lcom/ebay/common/model/search/following/FollowList;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;->readJsonStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/search/following/FollowList;

    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;->setResult(Lcom/ebay/common/model/search/following/FollowList;)V

    return-void
.end method

.method public setResult(Lcom/ebay/common/model/search/following/FollowList;)V
    .locals 3

    .line 30
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->interests:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->interests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 34
    invoke-virtual {v1}, Lcom/ebay/common/model/search/following/FollowDescriptor;->getInterestId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 35
    sget-object v2, Lcom/ebay/nautilus/domain/data/FollowType;->INTEREST:Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->interests:Ljava/util/List;

    .line 43
    :cond_1
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->collections:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 47
    iget-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->collectionId:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 48
    sget-object v2, Lcom/ebay/nautilus/domain/data/FollowType;->COLLECTION:Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->collections:Ljava/util/List;

    .line 56
    :cond_3
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->users:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->users:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    .line 61
    iget-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->username:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 62
    sget-object v2, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object v2, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    goto :goto_2

    .line 67
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->users:Ljava/util/List;

    .line 70
    :cond_5
    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/GetFollowsResponse;->follows:Lcom/ebay/common/model/search/following/FollowList;

    return-void
.end method
