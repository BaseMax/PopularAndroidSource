.class public Lcom/ebay/mobile/checkout/v2/model/RenderSummaryLargeIconViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;
.source "RenderSummaryLargeIconViewModel.java"


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    return-void
.end method


# virtual methods
.method protected getSecondaryLayoutId()I
    .locals 1

    const v0, 0x7f0d063c

    return v0
.end method
