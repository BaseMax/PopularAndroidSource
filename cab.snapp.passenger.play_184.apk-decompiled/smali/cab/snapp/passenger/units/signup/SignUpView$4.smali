.class final Lcab/snapp/passenger/units/signup/SignUpView$4;
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

    .line 447
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView$4;->a:Lcab/snapp/passenger/units/signup/SignUpView;

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

    .line 457
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 459
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 461
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView$4;->a:Lcab/snapp/passenger/units/signup/SignUpView;

    iget-object p1, p1, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    return-void

    .line 466
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/SignUpView$4;->a:Lcab/snapp/passenger/units/signup/SignUpView;

    iget-object p1, p1, Lcab/snapp/passenger/units/signup/SignUpView;->passwordEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    :cond_1
    return-void
.end method
