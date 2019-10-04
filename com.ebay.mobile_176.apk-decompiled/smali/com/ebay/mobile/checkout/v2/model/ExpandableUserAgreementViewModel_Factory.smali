.class public final Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;
.super Ljava/lang/Object;
.source "ExpandableUserAgreementViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final componentClickListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final ds6ConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;"
        }
    .end annotation
.end field

.field private final expandExecutionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;"
        }
    .end annotation
.end field

.field private final expandInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final showMoreLessViewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->componentClickListenerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->expandInfoFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->showMoreLessViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->expandExecutionProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->ds6ConfigProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;"
        }
    .end annotation

    .line 68
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newExpandableUserAgreementViewModel(Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/Lazy;Lcom/ebay/mobile/themes/Ds6ConfigurationContract;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ")",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;"
        }
    .end annotation

    .line 82
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/Lazy;Lcom/ebay/mobile/themes/Ds6ConfigurationContract;)V

    return-object v6
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/uxcomponents/viewmodel/ShowMoreLessViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;"
        }
    .end annotation

    .line 54
    new-instance v6, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    .line 55
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    .line 58
    invoke-static {p3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v4

    .line 59
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/Lazy;Lcom/ebay/mobile/themes/Ds6ConfigurationContract;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->componentClickListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->expandInfoFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->showMoreLessViewModelFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->expandExecutionProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->ds6ConfigProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel_Factory;->get()Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    move-result-object v0

    return-object v0
.end method
