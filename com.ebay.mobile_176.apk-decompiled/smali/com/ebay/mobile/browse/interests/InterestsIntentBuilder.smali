.class public Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;
.super Ljava/lang/Object;
.source "InterestsIntentBuilder.java"


# instance fields
.field protected context:Landroid/content/Context;

.field private interestsBrowseNodeId:Ljava/lang/String;

.field private sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required to build this Intent"

    .line 38
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string p1, "Interests browse node Id is required to build this intent"

    .line 40
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->interestsBrowseNodeId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/ebay/mobile/browse/interests/InterestsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    iget-object v1, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    if-eqz v1, :cond_0

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 55
    iget-object v2, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "browse_node_id"

    .line 58
    iget-object v3, p0, Lcom/ebay/mobile/browse/interests/InterestsIntentBuilder;->interestsBrowseNodeId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v2, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;-><init>()V

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->BROWSE:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->setSearchType(Lcom/ebay/nautilus/domain/data/experience/search/SearchType;)Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/ebay/mobile/search/SearchIntentMappingUtil;->convertFromExpActionParamsToExpSearchOptions(Ljava/util/Map;Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;)V

    const-string/jumbo v1, "search_options"

    .line 62
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->build()Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
