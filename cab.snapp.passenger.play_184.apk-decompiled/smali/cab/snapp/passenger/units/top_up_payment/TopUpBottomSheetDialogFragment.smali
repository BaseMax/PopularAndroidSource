.class public Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"


# static fields
.field public static final PRIVATE_CHANNEL_FOR_SCANNER:Ljava/lang/String; = "PRIVATE_CHANNEL_FOR_SCANNER"


# instance fields
.field protected a:Lbutterknife/Unbinder;

.field private b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

.field private c:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field private d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

.field private e:Lcab/snapp/passenger/units/top_up_payment/b;

.field private f:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 1

    .line 113
    check-cast p1, Lcom/google/android/material/bottomsheet/a;

    const v0, 0x7f0a010b

    .line 114
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;

    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->f:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;

    .line 119
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->f:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;->setState(I)V

    .line 120
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->f:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iget-object v0, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->f:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$6YyfjESAZgvMhyeMKq8LdPigpKo(Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static newInstance(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;
    .locals 1

    .line 30
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    invoke-direct {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;-><init>()V

    .line 31
    invoke-virtual {v0, p0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->setPlace(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)V

    return-object v0
.end method


# virtual methods
.method public getBottomSheetBehavior()Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;
    .locals 1

    .line 143
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->f:Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetBehavior;

    return-object v0
.end method

.method public getPlace()Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;
    .locals 1

    .line 148
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->c:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    return-object v0
.end method

.method public isBottomSheetOpened()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    if-eqz v0, :cond_0

    .line 1861
    iget-boolean v0, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->e:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1300c6

    .line 53
    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 112
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$TopUpBottomSheetDialogFragment$6YyfjESAZgvMhyeMKq8LdPigpKo;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$TopUpBottomSheetDialogFragment$6YyfjESAZgvMhyeMKq8LdPigpKo;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00dc

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    .line 65
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->a:Lbutterknife/Unbinder;

    .line 66
    new-instance p1, Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-direct {p1}, Lcab/snapp/passenger/units/top_up_payment/d;-><init>()V

    .line 67
    new-instance p2, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-direct {p2}, Lcab/snapp/passenger/units/top_up_payment/b;-><init>()V

    iput-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    .line 68
    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    iget-object p3, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->c:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-virtual {p2, p3}, Lcab/snapp/passenger/units/top_up_payment/b;->setPlace(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)V

    .line 69
    new-instance p2, Lcab/snapp/passenger/units/top_up_payment/e;

    invoke-direct {p2}, Lcab/snapp/passenger/units/top_up_payment/e;-><init>()V

    .line 71
    iget-object p3, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1, p3}, Lcab/snapp/passenger/units/top_up_payment/d;->setView(Lcab/snapp/arch/protocol/BaseView;)V

    .line 72
    iget-object p3, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p1, p3}, Lcab/snapp/passenger/units/top_up_payment/d;->setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V

    .line 73
    iget-object p3, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p3, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V

    .line 74
    iget-object p3, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/top_up_payment/b;->setRouter(Lcab/snapp/arch/protocol/BaseRouter;)V

    .line 75
    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p2, p0}, Lcab/snapp/passenger/units/top_up_payment/b;->setController(Landroidx/fragment/app/Fragment;)V

    .line 76
    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/top_up_payment/b;->onUnitCreated()V

    .line 77
    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setPresenter(Lcab/snapp/passenger/units/top_up_payment/d;)V

    .line 78
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1, p0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setController(Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;)V

    .line 79
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    .line 81
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->d:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->handleModalBottomSheetClosed()V

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->onUnitPause()V

    .line 90
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->onUnitResume()V

    .line 97
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->e:Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->onUnitStop()V

    .line 104
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onStop()V

    return-void
.end method

.method public setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;

    return-void
.end method

.method public setPlace(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->c:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    return-void
.end method
