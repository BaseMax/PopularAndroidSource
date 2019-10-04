.class public final Lc/c/a/n/p/a/a/b;
.super Ljava/lang/Object;
.source "LoginWithEmailFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Sa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/a/a/b;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lc/c/a/n/p/a/a/b;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    sget p3, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p2, p3}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p3, "proceedBtn"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/c/b/i;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/p/a/a/b;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->c(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V

    return-void
.end method
