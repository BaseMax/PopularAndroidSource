.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ConditionHistogram;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConditionHistogram"
.end annotation


# instance fields
.field public condition:Lcom/ebay/nautilus/domain/data/search/SearchItem$Condition;

.field public matchCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
