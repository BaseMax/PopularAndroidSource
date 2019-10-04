.class public final Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$ScopedAspectHistogram;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/answers/wire/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScopedAspectHistogram"
.end annotation


# instance fields
.field public aspect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/net/api/search/answers/wire/SearchResponse$AspectHistogram;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Lcom/ebay/nautilus/domain/data/search/SearchConstraints$AspectScope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
