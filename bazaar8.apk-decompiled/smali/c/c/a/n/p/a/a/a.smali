.class public final Lc/c/a/n/p/a/a/a;
.super Ljava/lang/Object;
.source "LoginWithEmailFragment.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->Sa()V
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

    iput-object p1, p0, Lc/c/a/n/p/a/a/a;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/n/p/a/a/a;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    sget p2, Lc/c/a/e;->emailEditText:I

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatEditText;

    const-string p3, "emailEditText"

    invoke-static {p2, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/p/a/a/a;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->b(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)Lc/c/a/n/p/a/a/e;

    move-result-object p1

    iget-object p2, p0, Lc/c/a/n/p/a/a/a;->a:Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;

    invoke-static {p2}, Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;->a(Lcom/farsitel/bazaar/ui/login/merge/account/LoginWithEmailFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/c/a/n/p/a/a/e;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
