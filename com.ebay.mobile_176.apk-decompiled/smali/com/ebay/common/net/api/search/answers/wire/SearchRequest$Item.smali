.class public Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Item;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public comparitivePricingRange:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public displayAttributes:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public distance:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public hotnessSignals:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$HotnessSignals;

.field public image:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$ItemImage;",
            ">;"
        }
    .end annotation
.end field

.field public pivot:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public product:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Product;

.field public returnPolicy:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public richDynamicAspect:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public seller:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;

.field public shipping:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$Shipping;

.field public tax:Lcom/ebay/common/net/api/search/answers/wire/SearchRequest$StatelessElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
