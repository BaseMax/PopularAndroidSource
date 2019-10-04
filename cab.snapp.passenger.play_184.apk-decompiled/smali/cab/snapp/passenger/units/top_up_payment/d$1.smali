.class final Lcab/snapp/passenger/units/top_up_payment/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/top_up_payment/d;->onInitialize(Lcab/snapp/passenger/data/models/PaymentTexts;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/top_up_payment/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/top_up_payment/d;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->e(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->f(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->chargeAmountEnteredByUser(Ljava/lang/String;)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->g(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/d;->i(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {v1}, Lcab/snapp/passenger/units/top_up_payment/d;->h(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->getAmountToChargeEtMaxLength()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountToChargeEtSelection(I)V

    goto :goto_1

    .line 426
    :cond_2
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/top_up_payment/d;->a(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 428
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/top_up_payment/d;->b(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/b;->resetChargeAmount()V

    .line 430
    :cond_3
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/top_up_payment/d;->c(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 432
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/d$1;->a:Lcab/snapp/passenger/units/top_up_payment/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/top_up_payment/d;->d(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountToChargeEtSelection(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
