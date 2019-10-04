.class public final Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;
.super Ljava/lang/Object;
.source "CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;->proxyProvideDoubleTapToEditBillingAddressAccessibilityNodeInfo(Landroid/content/Context;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDoubleTapToEditBillingAddressAccessibilityNodeInfo(Landroid/content/Context;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule;->provideDoubleTapToEditBillingAddressAccessibilityNodeInfo(Landroid/content/Context;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;->provideInstance(Ljavax/inject/Provider;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityNodeInfoFactory;->get()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object v0

    return-object v0
.end method
