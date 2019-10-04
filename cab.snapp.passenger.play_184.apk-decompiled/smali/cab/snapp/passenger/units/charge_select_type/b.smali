.class public final Lcab/snapp/passenger/units/charge_select_type/b;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;",
        "Lcab/snapp/passenger/units/charge_select_type/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_type/a;

    .line 1068
    iget-object v1, v0, Lcab/snapp/passenger/units/charge_select_type/a;->a:Lcab/snapp/passenger/units/charge_select_type/d;

    if-eqz v1, :cond_0

    .line 1069
    iget-object v0, v0, Lcab/snapp/passenger/units/charge_select_type/a;->a:Lcab/snapp/passenger/units/charge_select_type/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/e$a;->getChargePackage()Lcab/snapp/passenger/data/models/charge/ChargePackage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcab/snapp/passenger/units/charge_select_type/d;->onChargePackageSelected(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/b;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/b;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->dismiss()V

    .line 31
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/b;->a:Lio/reactivex/b/c;

    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method public static synthetic lambda$68zjPTos7gEW1e1jpiVJ4F4IymE(Lcab/snapp/passenger/units/charge_select_type/b;Lcab/snapp/passenger/a/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/charge_select_type/b;->a(Lcab/snapp/passenger/a/e$a;)V

    return-void
.end method


# virtual methods
.method public final init(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lcab/snapp/passenger/a/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/e;-><init>(Ljava/util/ArrayList;)V

    .line 19
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/a/e;->addItems(Ljava/util/List;)V

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/b;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_type/b;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->setAdapter(Lcab/snapp/passenger/a/e;)V

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/a/e;->getItemClicks()Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/charge_select_type/-$$Lambda$b$68zjPTos7gEW1e1jpiVJ4F4IymE;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/charge_select_type/-$$Lambda$b$68zjPTos7gEW1e1jpiVJ4F4IymE;-><init>(Lcab/snapp/passenger/units/charge_select_type/b;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/b;->a:Lio/reactivex/b/c;

    return-void
.end method
