.class public Lcom/ebay/mobile/browse/BrowseIntentBuilder;
.super Ljava/lang/Object;
.source "BrowseIntentBuilder.java"

# interfaces
.implements Lcom/ebay/mobile/search/SearchIntentExtras;


# instance fields
.field private final actionParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

.field protected context:Landroid/content/Context;

.field private sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ebay/common/net/api/browse/BrowseParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/common/net/api/browse/BrowseParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->context:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/browse/BrowseParameters;

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->context:Landroid/content/Context;

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/ebay/mobile/browse/BrowseAnswersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    new-instance v1, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;-><init>()V

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/search/SearchType;->BROWSE:Lcom/ebay/nautilus/domain/data/experience/search/SearchType;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->setSearchType(Lcom/ebay/nautilus/domain/data/experience/search/SearchType;)Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->convertBrowseParametersToSearchOptions(Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/ebay/mobile/search/SearchIntentMappingUtil;->convertFromExpActionParamsToExpSearchOptions(Ljava/util/Map;Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;)V

    :goto_0
    const-string/jumbo v2, "search_options"

    .line 147
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->build()Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    if-eqz v1, :cond_1

    const-string v1, "com.ebay.mobile.analytics.sid"

    .line 150
    iget-object v2, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public buildEvent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v1, "event_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string/jumbo v0, "usecase"

    const-string v1, "EVENTS"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected convertBrowseParametersToSearchOptions(Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_nkw"

    .line 184
    invoke-virtual {p1, v1, v0}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    if-eqz v0, :cond_1

    .line 188
    iget-wide v1, v0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "_sacat"

    .line 189
    iget-wide v2, v0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->putLong(Ljava/lang/String;J)Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {v0}, Lcom/ebay/common/model/search/EbayAspectHistogram;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;

    .line 197
    new-instance v2, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    const-string/jumbo v3, "|"

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;

    .line 199
    iget-object v4, v4, Lcom/ebay/common/model/search/EbayAspectHistogram$AspectValue;->serviceValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v2}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    iget-object v3, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 203
    iget-object v1, v1, Lcom/ebay/common/model/search/EbayAspectHistogram$Aspect;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions$Builder;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setCategory(Lcom/ebay/common/model/search/EbayCategorySummary;)Lcom/ebay/mobile/browse/BrowseIntentBuilder;
    .locals 4
    .param p1    # Lcom/ebay/common/model/search/EbayCategorySummary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    iput-object p1, v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 90
    iget-wide v0, p1, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v1, "_sacat"

    iget-wide v2, p1, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 91
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v0, "_sacat"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/ebay/mobile/browse/BrowseIntentBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    iput-object p1, v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->keywords:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v0, "_nkw"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v1, "_nkw"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setScopedAspects(Lcom/ebay/common/model/search/EbayAspectHistogram;)Lcom/ebay/mobile/browse/BrowseIntentBuilder;
    .locals 2
    .param p1    # Lcom/ebay/common/model/search/EbayAspectHistogram;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->browseParameters:Lcom/ebay/common/net/api/browse/BrowseParameters;

    iput-object p1, v0, Lcom/ebay/common/net/api/browse/BrowseParameters;->scopedAspects:Lcom/ebay/common/model/search/EbayAspectHistogram;

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->getScopedAspectsAsString(Lcom/ebay/common/model/search/EbayAspectHistogram;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v0, "aspect"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->actionParameters:Ljava/util/Map;

    const-string v1, "aspect"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/browse/BrowseIntentBuilder;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseIntentBuilder;->sourceIdentification:Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    return-object p0
.end method
