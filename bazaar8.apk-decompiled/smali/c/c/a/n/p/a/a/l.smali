.class public final Lc/c/a/n/p/a/a/l;
.super Ljava/lang/Object;
.source "VerifyEmailOtpFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/a/a/l;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/l;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->d(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/p/a/a/l;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    sget v1, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string v1, "proceedBtn"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
