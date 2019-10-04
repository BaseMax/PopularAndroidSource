.class public Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lbutterknife/Unbinder;

.field private c:Lcab/snapp/passenger/units/charge_select_type/a;

.field private d:Lcab/snapp/passenger/units/charge_select_type/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;)",
            "Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;

    invoke-direct {v0}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;-><init>()V

    .line 27
    iput-object p0, v0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1300c6

    .line 48
    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00a6

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    .line 60
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->b:Lbutterknife/Unbinder;

    .line 61
    new-instance p2, Lcab/snapp/passenger/units/charge_select_type/b;

    invoke-direct {p2}, Lcab/snapp/passenger/units/charge_select_type/b;-><init>()V

    .line 62
    new-instance p3, Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-direct {p3}, Lcab/snapp/passenger/units/charge_select_type/a;-><init>()V

    iput-object p3, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    .line 63
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/units/charge_select_type/a;->setPackages(Ljava/util/ArrayList;)V

    .line 64
    new-instance p3, Lcab/snapp/passenger/units/charge_select_type/c;

    invoke-direct {p3}, Lcab/snapp/passenger/units/charge_select_type/c;-><init>()V

    .line 66
    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/charge_select_type/b;->setView(Lcab/snapp/arch/protocol/BaseView;)V

    .line 67
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/units/charge_select_type/b;->setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V

    .line 68
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/charge_select_type/a;->setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {v0, p3}, Lcab/snapp/passenger/units/charge_select_type/a;->setRouter(Lcab/snapp/arch/protocol/BaseRouter;)V

    .line 70
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {p3, p0}, Lcab/snapp/passenger/units/charge_select_type/a;->setController(Landroidx/fragment/app/Fragment;)V

    .line 71
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/charge_select_type/a;->onUnitCreated()V

    .line 72
    iget-object p3, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/charge_select_type/d;

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/units/charge_select_type/a;->setOnChargePackageSelectedListener(Lcab/snapp/passenger/units/charge_select_type/d;)V

    .line 73
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->setPresenter(Lcab/snapp/passenger/units/charge_select_type/b;)V

    .line 74
    invoke-virtual {p1, p0}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->setController(Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/a;->onUnitPause()V

    .line 88
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/a;->onUnitResume()V

    .line 95
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->c:Lcab/snapp/passenger/units/charge_select_type/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_type/a;->onUnitStop()V

    .line 102
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onStop()V

    return-void
.end method

.method public setOnChargePackageSelectedListener(Lcab/snapp/passenger/units/charge_select_type/d;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/SelectChargeTypeBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/charge_select_type/d;

    return-void
.end method
