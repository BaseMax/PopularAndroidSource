.class public Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;
.super Lcom/ebay/common/model/search/following/FollowDescriptor;
.source "FollowedSearchList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/following/FollowedSearchList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FollowedSearch"
.end annotation


# instance fields
.field public newItems:Z

.field public sinceTime:J

.field public viewTime:J


# direct methods
.method public constructor <init>(Lcom/ebay/common/model/search/following/FollowDescriptor;)V
    .locals 2
    .param p1    # Lcom/ebay/common/model/search/following/FollowDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/ebay/common/model/search/following/FollowDescriptor;-><init>()V

    const-string v0, "FollowDescriptor must be non-null"

    .line 514
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    const-string v1, "InterestId must be non-null"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    .line 517
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->type:Lcom/ebay/nautilus/domain/data/FollowType;

    .line 518
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->id:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->collectionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->collectionId:Ljava/lang/String;

    .line 520
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->username:Ljava/lang/String;

    .line 521
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->interestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    .line 522
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->visibility:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->visibility:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    .line 523
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->notifications:Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->notifications:Ljava/util/List;

    .line 524
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->customTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->customTitle:Ljava/lang/String;

    .line 525
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->followDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->followDate:Ljava/lang/String;

    .line 526
    iget-object v0, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->lastViewDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    .line 527
    iget-object p1, p1, Lcom/ebay/common/model/search/following/FollowDescriptor;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    const/4 p1, 0x0

    .line 529
    iput-boolean p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->newItems:Z

    .line 530
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->lastViewDate:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->followDate:Ljava/lang/String;

    .line 531
    :goto_0
    invoke-static {p1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->viewTime:J

    iput-wide v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->sinceTime:J

    return-void
.end method


# virtual methods
.method public configureSearchIntent(Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;
    .locals 1
    .param p1    # Lcom/ebay/mobile/search/SearchIntentBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    if-nez v0, :cond_0

    return-object p1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setSavedSearchId(Ljava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 545
    invoke-virtual {p1, p0}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setShowNewListingsOnly(Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 546
    iget-object v0, p0, Lcom/ebay/common/net/api/search/following/FollowedSearchList$FollowedSearch;->interest:Lcom/ebay/common/net/api/search/following/InterestDescriptor;

    invoke-virtual {v0, p1}, Lcom/ebay/common/net/api/search/following/InterestDescriptor;->configureSearchIntent(Lcom/ebay/mobile/search/SearchIntentBuilder;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    move-result-object p1

    return-object p1
.end method
