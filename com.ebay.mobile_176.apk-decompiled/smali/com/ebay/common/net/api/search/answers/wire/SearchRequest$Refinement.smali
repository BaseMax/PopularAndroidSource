.class public Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Refinement;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Refinement"
.end annotation


# instance fields
.field public aspectHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public buyingFormatHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public categoryHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public conditionHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public locationHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public priceFilterHistogram:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
