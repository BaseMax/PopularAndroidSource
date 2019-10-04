.class final Lcab/snapp/passenger/units/login/loginWithEmail/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/login/loginWithEmail/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/login/loginWithEmail/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$3;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

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

    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$3;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    iput-object p1, p2, Lcab/snapp/passenger/units/login/loginWithEmail/c;->e:Ljava/lang/String;

    .line 102
    invoke-static {p2}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->c(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcab/snapp/c/i;->isPasswordValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$3;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->d(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->hideErrorOnPassword()V

    :cond_0
    return-void
.end method
