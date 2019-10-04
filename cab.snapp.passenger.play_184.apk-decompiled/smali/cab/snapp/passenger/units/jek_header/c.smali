.class public final Lcab/snapp/passenger/units/jek_header/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/jek_header/JekHeaderView;",
        "Lcab/snapp/passenger/units/jek_header/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCreditClicked()V
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/jek_header/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/jek_header/a;->showCreditBottomSheet()V

    :cond_0
    return-void
.end method

.method public final setCurrentCredit(J)V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 37
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/jek_header/JekHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->showAddCreditLayout()V

    return-void

    .line 41
    :cond_1
    invoke-static {p1, p2}, Lcab/snapp/c/j;->formatLong(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/jek_header/JekHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->hideAddCreditLayout()V

    .line 44
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/jek_header/JekHeaderView;

    iget-object p2, p2, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
