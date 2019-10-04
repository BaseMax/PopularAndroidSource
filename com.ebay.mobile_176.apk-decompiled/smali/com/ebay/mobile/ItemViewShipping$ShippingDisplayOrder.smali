.class public Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;
.super Ljava/lang/Object;
.source "ItemViewShipping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ItemViewShipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShippingDisplayOrder"
.end annotation


# instance fields
.field public colorId:I

.field public costShowEachAdditional:Z

.field public eddIncludeDayOfWeek:Z

.field public eddReturnJustDates:Z

.field public egdAppendString:Ljava/lang/String;

.field public type:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;-><init>(Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;IZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;IZ)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;-><init>(Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;IZZ)V

    .line 86
    iput-boolean p3, p0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;->costShowEachAdditional:Z

    return-void
.end method

.method public constructor <init>(Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;IZZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p2, p0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;->colorId:I

    .line 101
    iput-object p1, p0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;->type:Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrderEnum;

    .line 102
    iput-boolean p3, p0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;->eddReturnJustDates:Z

    .line 103
    iput-boolean p4, p0, Lcom/ebay/mobile/ItemViewShipping$ShippingDisplayOrder;->eddIncludeDayOfWeek:Z

    return-void
.end method
