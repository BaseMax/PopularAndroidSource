.class public final Lcab/snapp/passenger/units/charge_recently/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;",
        "Lcab/snapp/passenger/units/charge_recently/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_recently/a;

    .line 1117
    iget-object v1, v0, Lcab/snapp/passenger/units/charge_recently/a;->b:Lcab/snapp/passenger/units/charge_recently/e;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v0, v0, Lcab/snapp/passenger/units/charge_recently/a;->b:Lcab/snapp/passenger/units/charge_recently/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/d$a;->getMobileNumber()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcab/snapp/passenger/units/charge_recently/e;->onRecentMobileNumberSelected(Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->dismiss()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$_oh-SuqiYLNyuoKbDZiOVlqkrAI(Lcab/snapp/passenger/units/charge_recently/c;Lcab/snapp/passenger/a/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/charge_recently/c;->a(Lcab/snapp/passenger/a/d$a;)V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/c;->a:Lcab/snapp/passenger/a/d;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_recently/c;->a:Lcab/snapp/passenger/a/d;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->setAdapter(Lcab/snapp/passenger/a/d;)V

    return-void

    .line 41
    :cond_0
    new-instance v0, Lcab/snapp/passenger/a/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/d;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_recently/c;->a:Lcab/snapp/passenger/a/d;

    .line 42
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_recently/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_recently/c;->a:Lcab/snapp/passenger/a/d;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->setAdapter(Lcab/snapp/passenger/a/d;)V

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/c;->a:Lcab/snapp/passenger/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/a/d;->getItemClicks()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/charge_recently/-$$Lambda$c$_oh-SuqiYLNyuoKbDZiOVlqkrAI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/charge_recently/-$$Lambda$c$_oh-SuqiYLNyuoKbDZiOVlqkrAI;-><init>(Lcab/snapp/passenger/units/charge_recently/c;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    :cond_1
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 0

    return-void
.end method
