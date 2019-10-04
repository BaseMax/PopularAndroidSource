.class public final Lc/c/a/n/p/t;
.super Ljava/lang/Object;
.source "VerifyOtpFragment.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/p/t;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lc/c/a/n/p/t;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    sget v0, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p2, v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/widget/LoadingButton;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p2, p0, Lc/c/a/n/p/t;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {p2, p3}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->a(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;Z)V

    const/4 p3, 0x1

    :cond_1
    :goto_0
    return p3
.end method
