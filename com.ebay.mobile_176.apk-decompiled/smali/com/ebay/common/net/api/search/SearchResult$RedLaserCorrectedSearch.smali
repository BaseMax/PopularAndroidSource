.class public final Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedLaserCorrectedSearch"
.end annotation


# instance fields
.field private final searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-void
.end method


# virtual methods
.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget-object v0, v0, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResult$RedLaserCorrectedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-object v0
.end method
