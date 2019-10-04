.class public Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;
.super Ljava/lang/Object;
.source "EbayErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/EbayErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;
    .locals 0

    .line 419
    sget-object p1, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    return-object p1
.end method

.method public handleWarning(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;
    .locals 0

    .line 440
    sget-object p1, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    return-object p1
.end method
