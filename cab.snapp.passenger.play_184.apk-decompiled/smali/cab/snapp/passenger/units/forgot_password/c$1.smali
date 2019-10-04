.class final Lcab/snapp/passenger/units/forgot_password/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/forgot_password/c;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/forgot_password/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/forgot_password/c;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcab/snapp/passenger/units/forgot_password/c$1;->a:Lcab/snapp/passenger/units/forgot_password/c;

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

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/units/forgot_password/c$1;->a:Lcab/snapp/passenger/units/forgot_password/c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcab/snapp/passenger/units/forgot_password/c;->a:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcab/snapp/passenger/units/forgot_password/c$1;->a:Lcab/snapp/passenger/units/forgot_password/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/forgot_password/c;->a(Lcab/snapp/passenger/units/forgot_password/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcab/snapp/passenger/units/forgot_password/c$1;->a:Lcab/snapp/passenger/units/forgot_password/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/forgot_password/c;->b(Lcab/snapp/passenger/units/forgot_password/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->hideEmailError()V

    :cond_1
    return-void
.end method
