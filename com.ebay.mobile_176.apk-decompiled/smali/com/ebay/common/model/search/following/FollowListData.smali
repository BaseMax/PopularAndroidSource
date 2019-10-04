.class public final Lcom/ebay/common/model/search/following/FollowListData;
.super Ljava/lang/Object;
.source "FollowListData.java"


# instance fields
.field public final collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

.field public final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/following/FollowList;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->collections:Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    .line 27
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowList;->users:Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    iget-object p1, p1, Lcom/ebay/common/model/search/following/FollowList;->interests:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/following/FollowListData;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    .line 37
    new-instance p1, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-direct {p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    .line 42
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    .line 43
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    if-nez v0, :cond_1

    .line 44
    new-instance p1, Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-direct {p1}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;-><init>()V

    iput-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p1, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    iput-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    :goto_0
    return-void
.end method

.method private findCollectionIndexByCollectionId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    iget-object v1, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->collectionId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findIndexById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)I
    .locals 1

    .line 129
    sget-object v0, Lcom/ebay/common/model/search/following/FollowListData$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    .line 134
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/ebay/common/model/search/following/FollowListData;->findCollectionIndexByCollectionId(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 132
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ebay/common/model/search/following/FollowListData;->findUserIndexByUserId(Ljava/lang/String;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findUserIndexByUserId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    iget-object v1, v1, Lcom/ebay/common/model/search/following/FollowDescriptor;->username:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public getFollowById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)Lcom/ebay/common/model/search/following/FollowDescriptor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 101
    sget-object v0, Lcom/ebay/common/model/search/following/FollowListData$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {p1, p2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->findByInterestId(Ljava/lang/String;)Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;

    move-result-object p1

    goto :goto_1

    .line 112
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ebay/common/model/search/following/FollowListData;->findCollectionIndexByCollectionId(Ljava/lang/String;)I

    move-result p1

    if-le p1, v0, :cond_0

    .line 114
    iget-object p2, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    goto :goto_1

    .line 107
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/ebay/common/model/search/following/FollowListData;->findUserIndexByUserId(Ljava/lang/String;)I

    move-result p1

    if-le p1, v0, :cond_0

    .line 109
    iget-object p2, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/search/following/FollowDescriptor;

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)V
    .locals 2

    .line 58
    sget-object v0, Lcom/ebay/common/model/search/following/FollowListData$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->savedSearchCacheData:Lcom/ebay/common/net/api/search/following/FollowedSearchList;

    invoke-virtual {p1, p2}, Lcom/ebay/common/net/api/search/following/FollowedSearchList;->removeById(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/model/search/following/FollowListData;->findIndexById(Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/model/search/following/FollowListData;->removeByIndex(Lcom/ebay/nautilus/domain/data/FollowType;I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeByIndex(Lcom/ebay/nautilus/domain/data/FollowType;I)V
    .locals 1

    .line 82
    sget-object v0, Lcom/ebay/common/model/search/following/FollowListData$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->collections:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object p1, p0, Lcom/ebay/common/model/search/following/FollowListData;->users:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
