.class public final Lc/c/a/n/p/w;
.super Landroid/os/CountDownTimer;
.source "VerifyOtpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->bb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/w;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/w;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/w;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    sget v1, Lc/c/a/e;->resendCodeButton:I

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "resendCodeButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc/c/a/n/p/w;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lc/c/a/c/b/f;->b(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const p1, 0x7f1001a1

    invoke-virtual {v1, p1, v2}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
