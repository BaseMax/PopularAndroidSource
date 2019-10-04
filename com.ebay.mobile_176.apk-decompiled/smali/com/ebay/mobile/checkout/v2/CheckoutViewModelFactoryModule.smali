.class public abstract Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule;
.super Ljava/lang/Object;
.source "CheckoutViewModelFactoryModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideDoubleTapToEditBillingAddressAccessibilityDelegate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1
    .param p0    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 30
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule$1;-><init>(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-object v0
.end method

.method static provideDoubleTapToEditBillingAddressAccessibilityNodeInfo(Landroid/content/Context;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 22
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v1, 0x7f120101

    .line 23
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method
