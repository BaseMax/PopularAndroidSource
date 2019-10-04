.class final Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V
    .locals 4

    .line 319
    iput-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->j(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->k(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->enableSmsResendButton()V

    .line 336
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->l(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f120218

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setSmsResendButtonText(I)V

    .line 337
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->m(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setSmsResendButtonColor(I)V

    :cond_0
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 323
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->f(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->g(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->i(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$2;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->h(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120219

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->setSmsResendButtonText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
