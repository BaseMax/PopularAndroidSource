.class public final Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;
.super Ljava/lang/Object;
.source "CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroidx/core/view/AccessibilityDelegateCompat;",
        ">;"
    }
.end annotation


# instance fields
.field private final doubleTapToEditProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
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
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;->doubleTapToEditProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;)",
            "Landroidx/core/view/AccessibilityDelegateCompat;"
        }
    .end annotation

    .line 30
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 29
    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;->proxyProvideDoubleTapToEditBillingAddressAccessibilityDelegate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDoubleTapToEditBillingAddressAccessibilityDelegate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule;->provideDoubleTapToEditBillingAddressAccessibilityDelegate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/AccessibilityDelegateCompat;

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;->doubleTapToEditProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;->provideInstance(Ljavax/inject/Provider;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule_ProvideDoubleTapToEditBillingAddressAccessibilityDelegateFactory;->get()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    return-object v0
.end method
