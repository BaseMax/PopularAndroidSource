.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AspectHistogram"
.end annotation


# instance fields
.field public aspect:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Aspect;

.field public valueHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
