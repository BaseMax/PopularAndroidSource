.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValueHistogram;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AspectValueHistogram"
.end annotation


# instance fields
.field public aspectValue:Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectValue;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aspectvalue"
    .end annotation
.end field

.field public matchCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
