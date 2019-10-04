.class public Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$OutputSelector;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSelector"
.end annotation


# instance fields
.field public item:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;

.field public refinement:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;

.field public rewrite:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Rewrite;

.field public sellerOffer:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$SellerOffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
