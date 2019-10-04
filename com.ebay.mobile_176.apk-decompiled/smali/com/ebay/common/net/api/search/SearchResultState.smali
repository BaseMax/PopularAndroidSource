.class public final Lcom/ebay/common/net/api/search/SearchResultState;
.super Ljava/lang/Object;
.source "SearchResultState.java"


# instance fields
.field private hasBeenDelivered:Z

.field private final result:Lcom/ebay/common/net/api/search/SearchResult;

.field private final searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/search/SearchResult;Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResultState;->hasBeenDelivered:Z

    .line 26
    iput-object p1, p0, Lcom/ebay/common/net/api/search/SearchResultState;->result:Lcom/ebay/common/net/api/search/SearchResult;

    .line 27
    iput-object p2, p0, Lcom/ebay/common/net/api/search/SearchResultState;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-void
.end method


# virtual methods
.method public getOriginalSearchParameters()Lcom/ebay/common/net/api/search/SearchParameters;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResultState;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-object v0
.end method

.method public getResult()Lcom/ebay/common/net/api/search/SearchResult;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ebay/common/net/api/search/SearchResultState;->result:Lcom/ebay/common/net/api/search/SearchResult;

    return-object v0
.end method

.method public isInitialDelivery()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResultState;->hasBeenDelivered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDelivered()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchResultState;->hasBeenDelivered:Z

    return-void
.end method
