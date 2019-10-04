.class public final Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;
.super Ljava/lang/Object;
.source "CheckoutViewModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final billingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final configShimProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;"
        }
    .end annotation
.end field

.field private final expandableContainerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final labelsCardViewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final visibilityContainerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->factoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->labelsCardViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->configShimProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->expandableContainerBuilderProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->visibilityContainerBuilderProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->billingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;"
        }
    .end annotation

    .line 85
    new-instance v7, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newCheckoutViewModelFactory(Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;"
        }
    .end annotation

    .line 103
    new-instance v7, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;-><init>(Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;"
        }
    .end annotation

    .line 67
    new-instance v7, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    .line 68
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;-><init>(Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->factoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->labelsCardViewModelFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->configShimProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->expandableContainerBuilderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->visibilityContainerBuilderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->billingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory_Factory;->get()Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    move-result-object v0

    return-object v0
.end method
