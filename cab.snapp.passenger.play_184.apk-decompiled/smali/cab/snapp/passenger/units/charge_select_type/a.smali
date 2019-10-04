.class public Lcab/snapp/passenger/units/charge_select_type/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/charge_select_type/c;",
        "Lcab/snapp/passenger/units/charge_select_type/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/units/charge_select_type/d;

.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method static a()V
    .locals 3

    .line 85
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TapOnProductType"

    const-string v2, "TapOnClose"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "EnterAmount"

    .line 87
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 89
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 28
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/a;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/a;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onUnitCreated()V
    .locals 3

    .line 48
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 1077
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TapOnProductType"

    const-string v2, "ShowProductModal"

    .line 1078
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "EnterAmount"

    .line 1079
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1081
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 52
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_type/b;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_select_type/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge_select_type/b;->init(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setController(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/a;->b:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setOnChargePackageSelectedListener(Lcab/snapp/passenger/units/charge_select_type/d;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/a;->a:Lcab/snapp/passenger/units/charge_select_type/d;

    return-void
.end method

.method public setPackages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/a;->c:Ljava/util/ArrayList;

    return-void
.end method
