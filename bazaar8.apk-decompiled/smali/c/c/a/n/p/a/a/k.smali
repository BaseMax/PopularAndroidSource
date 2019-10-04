.class public final Lc/c/a/n/p/a/a/k;
.super Ljava/lang/Object;
.source "VerifyEmailOtpFragment.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/p/a/a/k;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lc/c/a/n/p/a/a/k;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    sget p3, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p2, p3}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p3, "proceedBtn"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lc/c/a/n/p/a/a/k;->a:Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;->b(Lcom/farsitel/bazaar/ui/login/merge/account/VerifyEmailOtpFragment;)V

    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method
