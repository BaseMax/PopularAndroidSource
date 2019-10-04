.class final Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/skippable_mobile_verification/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->c(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 52
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->d(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->enableNextButton()V

    return-void

    .line 57
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->e(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->disableNextButton()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->a(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/c$1;->a:Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->b(Lcab/snapp/passenger/units/skippable_mobile_verification/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/SkippablePhoneVerificationView;->hidePhoneError()V

    :cond_0
    return-void
.end method
