.class public final Lc/c/a/n/p/d;
.super Ljava/lang/Object;
.source "RegisterFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/RegisterFragment;->Ua()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/d;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

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
    iget-object p2, p0, Lc/c/a/n/p/d;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    sget p3, Lc/c/a/e;->proceedBtn:I

    invoke-virtual {p2, p3}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/widget/LoadingButton;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/c/b/i;->e(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/a/n/p/d;->a:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->c(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V

    return-void
.end method
