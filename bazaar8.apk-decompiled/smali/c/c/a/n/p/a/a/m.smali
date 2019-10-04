.class public final Lc/c/a/n/p/a/a/m;
.super Landroid/os/CountDownTimer;
.source "VerifyEmailOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->Za()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/a/a/m;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/m;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/m;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    sget v1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/c/a/n/p/a/a/m;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    const v2, 0x7f1001a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lc/c/a/c/b/f;->b(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
