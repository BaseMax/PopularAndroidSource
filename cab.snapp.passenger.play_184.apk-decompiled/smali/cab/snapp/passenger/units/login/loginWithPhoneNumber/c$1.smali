.class final Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c$1;->a:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c$1;->a:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->a(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->enableSendButton()V

    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c$1;->a:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->b(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->disableSendButton()V

    return-void
.end method
