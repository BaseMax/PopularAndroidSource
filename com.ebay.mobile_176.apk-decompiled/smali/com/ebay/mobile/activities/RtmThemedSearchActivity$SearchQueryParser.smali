.class public Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;
.super Ljava/lang/Object;
.source "RtmThemedSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/RtmThemedSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchQueryParser"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RtmThemedSearchActivity$SearchQueryParser"


# instance fields
.field private _savedSearch:Lcom/ebay/common/model/search/SavedSearch;

.field private _searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

.field private _uri:Landroid/net/Uri;

.field private auth:Lcom/ebay/nautilus/domain/app/Authentication;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/SavedSearch;Lcom/ebay/nautilus/domain/app/Authentication;)V
    .locals 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 160
    iget-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 162
    iget-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    if-eqz p2, :cond_0

    .line 164
    iget-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    iput-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->keywords:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    invoke-virtual {p1, v0}, Lcom/ebay/common/model/search/SavedSearch;->setQueryParsed(Z)V

    return-void

    .line 168
    :cond_0
    sget-object p1, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SearchQueryParser, invalid input saved search: both query and search params are null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_1
    :try_start_0
    iget-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    .line 174
    iget-object p2, p1, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 175
    iput-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    .line 176
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->parse()V

    .line 177
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    invoke-virtual {p1, v0}, Lcom/ebay/common/model/search/SavedSearch;->setQueryParsed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    sget-object p1, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MalformedURL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    iget-object v0, v0, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isLocSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 456
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "1"

    .line 461
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 463
    sget-object p1, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    goto :goto_0

    .line 467
    :cond_0
    invoke-static {p1}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 469
    iget-object p2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object p2, p2, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private mySplit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 523
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private setCategory()V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "_sacat"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    new-instance v3, Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    iput-object v3, v1, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    new-instance v3, Lcom/ebay/common/model/search/EbayCategorySummary;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    iput-object v3, v0, Lcom/ebay/common/net/api/search/SearchParameters;->category:Lcom/ebay/common/model/search/EbayCategorySummary;

    return-void

    :cond_2
    return-void
.end method

.method private setCompletedListings()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "LH_Complete"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->completedListings:Z

    .line 383
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v0, v1, Lcom/ebay/common/net/api/search/SearchParameters;->iafToken:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setCondition()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "LH_ItemCondition"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "|"

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->mySplit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v2, "Unspecified"

    iput-object v2, v1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "1"

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v2, "New"

    iput-object v2, v1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "2"

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v2, "Used"

    iput-object v2, v1, Lcom/ebay/common/net/api/search/SearchParameters;->condition:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method private setDescriptionSearch()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "LH_TitleDesc"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->descriptionSearch:Z

    :cond_0
    return-void
.end method

.method private setFreeShipping()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "LH_FS"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->freeShipping:Z

    :cond_0
    return-void
.end method

.method private setKeyword()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "_nkw"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v0, v1, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    iget-object v0, v0, Lcom/ebay/common/model/search/SavedSearch;->keywords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    iget-object v1, v1, Lcom/ebay/common/model/search/SavedSearch;->keywords:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setListingFormats()V
    .locals 9

    .line 333
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "fslistingtypes"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v6, "|"

    .line 338
    invoke-direct {p0, v0, v6}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->mySplit(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "AUCTION_WITH_BIN"

    .line 341
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 343
    iget-object v6, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput v2, v6, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "AUCTION_NOT_WITH_BIN"

    .line 346
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 348
    iget-object v4, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput v3, v4, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    .line 354
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    :cond_3
    return-void

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v6, "LH_Auction"

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v6, "1"

    .line 360
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput v3, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 365
    :goto_1
    iget-object v3, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v6, "LH_BIN"

    invoke-virtual {v3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v6, "1"

    .line 366
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    iget-object v3, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput v2, v3, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    const/4 v4, 0x1

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 373
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyingFormat:I

    :cond_7
    return-void
.end method

.method private setLocation()V
    .locals 2

    const-string v0, "LH_LocatedIn"

    const-string v1, "_salic"

    .line 438
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->isLocSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    return-void

    :cond_0
    const-string v0, "LH_AvailTo"

    const-string v1, "_saact"

    .line 443
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->isLocSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x2

    iput v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->preferredItemLocation:I

    return-void

    :cond_1
    return-void
.end method

.method private setMaxDistance()V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "_fpos"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v2, "_sadis"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Zip code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v0, v2, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    .line 424
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->maxDistance:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    sget-object v0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxDistance NumberFormatException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    iget-object v2, v2, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setPayWithPaypal()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "LH_PayPal"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->paypalAccepted:Z

    :cond_0
    return-void
.end method

.method private setPrices()V
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "_udhi"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v2, "_udlo"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v3, "LH_Price"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".."

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "@"

    .line 274
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v3, 0x2

    .line 275
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    if-eq v5, v4, :cond_0

    .line 278
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v2, v2, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    new-instance v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 291
    invoke-virtual {v5, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 290
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/ebay/common/net/api/search/SearchParameters;->maxPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 293
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    new-instance v3, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 295
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/ebay/common/net/api/search/SearchParameters;->minPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 301
    :catch_0
    sget-object v0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min/max price ParseException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_savedSearch:Lcom/ebay/common/model/search/SavedSearch;

    iget-object v2, v2, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private setSellerId()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "_sasl"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v0, v1, Lcom/ebay/common/net/api/search/SearchParameters;->sellerId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setSite()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->US:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromDomain(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Lcom/ebay/nautilus/domain/EbaySite;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object v0, v1, Lcom/ebay/common/net/api/search/SearchParameters;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    .line 209
    iget-object v1, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ebay/common/net/api/search/SearchParameters;->countryId:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->getPostalCode()Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->postalCode:Ljava/lang/String;

    .line 212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->buyerPostalCode:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->hideShipping:Z

    :goto_0
    return-void
.end method

.method private setSort()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_uri:Landroid/net/Uri;

    const-string v1, "_sop"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    return-void

    .line 498
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v1, "PricePlusShippingHighest"

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    return-void

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v1, "PricePlusShippingLowest"

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v1, "BestMatch"

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    return-void

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v1, "StartTimeNewest"

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    return-void

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v1, "DistanceNearest"

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    return-void

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->_searchParams:Lcom/ebay/common/net/api/search/SearchParameters;

    const-string v1, "EndTimeSoonest"

    iput-object v1, v0, Lcom/ebay/common/net/api/search/SearchParameters;->sortOrder:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method parse()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setSite()V

    .line 188
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setKeyword()V

    .line 189
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setCategory()V

    .line 190
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setSellerId()V

    .line 191
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setPrices()V

    .line 192
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setCondition()V

    .line 193
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setListingFormats()V

    .line 194
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setCompletedListings()V

    .line 195
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setFreeShipping()V

    .line 196
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setPayWithPaypal()V

    .line 197
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setSort()V

    .line 198
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setDescriptionSearch()V

    .line 199
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setMaxDistance()V

    .line 200
    invoke-direct {p0}, Lcom/ebay/mobile/activities/RtmThemedSearchActivity$SearchQueryParser;->setLocation()V

    return-void
.end method
