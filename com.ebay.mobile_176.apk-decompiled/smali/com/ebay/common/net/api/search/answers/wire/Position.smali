.class public final Lcom/ebay/common/net/api/search/answers/wire/Position;
.super Ljava/lang/Object;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;
    }
.end annotation


# instance fields
.field public locator:Ljava/lang/String;

.field public placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

.field public type:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

.field public uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;->UNKNOWN:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/Position;->type:Lcom/ebay/common/net/api/search/answers/wire/Position$LayoutType;

    .line 13
    sget-object v0, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/Position;->uxComponentName:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 14
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/answers/wire/Position;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method
