.class public final Lc/c/a/n/p/a/a/c;
.super Ljava/lang/Object;
.source "LoginWithEmailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/p/a/a/c;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/c/a/n/p/a/a/c;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    sget v0, Lc/c/a/e;->emailEditText:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "emailEditText"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/p/a/a/c;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->b(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)Lc/c/a/n/p/a/a/e;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/p/a/a/c;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/n/p/a/a/e;->a(Ljava/lang/String;)V

    return-void
.end method
