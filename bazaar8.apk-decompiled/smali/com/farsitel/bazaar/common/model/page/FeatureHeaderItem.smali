.class public Lcom/farsitel/bazaar/common/model/page/FeatureHeaderItem;
.super Ljava/lang/Object;
.source "PageType.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/page/PageTypeItem;


# instance fields
.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->FEATURE_HEADER:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/common/model/page/FeatureHeaderItem;->viewType:I

    return-void
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/FeatureHeaderItem;->viewType:I

    return v0
.end method
