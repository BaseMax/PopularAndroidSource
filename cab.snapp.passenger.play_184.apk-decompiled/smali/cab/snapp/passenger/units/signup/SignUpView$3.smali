.class final Lcab/snapp/passenger/units/signup/SignUpView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/signup/SignUpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/signup/SignUpView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/signup/SignUpView;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView$3;->a:Lcab/snapp/passenger/units/signup/SignUpView;

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

    .line 223
    iget-object p2, p0, Lcab/snapp/passenger/units/signup/SignUpView$3;->a:Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-static {p2}, Lcab/snapp/passenger/units/signup/SignUpView;->a(Lcab/snapp/passenger/units/signup/SignUpView;)Lcab/snapp/passenger/units/signup/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 225
    iget-object p2, p0, Lcab/snapp/passenger/units/signup/SignUpView$3;->a:Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-static {p2}, Lcab/snapp/passenger/units/signup/SignUpView;->a(Lcab/snapp/passenger/units/signup/SignUpView;)Lcab/snapp/passenger/units/signup/c;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/signup/c;->onPasswordTextChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
