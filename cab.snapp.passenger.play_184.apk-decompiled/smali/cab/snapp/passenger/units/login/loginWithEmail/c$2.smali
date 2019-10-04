.class final Lcab/snapp/passenger/units/login/loginWithEmail/c$2;
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

    .line 59
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$2;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

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

    .line 69
    iget-object p2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$2;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcab/snapp/passenger/units/login/loginWithEmail/c;->c:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$2;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->a(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c$2;->a:Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->b(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->hideErrorOnEmail()V

    :cond_0
    return-void
.end method
