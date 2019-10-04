.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$PriceFilterHistogram;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PriceFilterHistogram"
.end annotation


# instance fields
.field public priceRange:Lcom/ebay/nautilus/domain/data/search/SaasPriceRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
