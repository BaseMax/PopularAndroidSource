.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryHistogram"
.end annotation


# instance fields
.field public category:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$Category;

.field public categoryHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$CategoryHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public matchCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
