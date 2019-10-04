.class public final Lc/c/a/n/t/b/a;
.super Ljava/lang/Object;
.source "ChangePhoneNumberDialog.kt"

# interfaces
.implements Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/t/b/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/t/b/b;


# direct methods
.method public constructor <init>(Lc/c/a/n/t/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    invoke-virtual {v0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/d/f/r;->a()V

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    invoke-virtual {v0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/d/f/r;->onCancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    return-void
.end method

.method public onCommit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    sget v1, Lc/c/a/e;->phoneNumberEditText:I

    invoke-virtual {v0, v1}, Lc/c/a/n/t/b/b;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "phoneNumberEditText"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/n/t/b/b;->a(Lc/c/a/n/t/b/b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    invoke-static {v0}, Lc/c/a/n/t/b/b;->b(Lc/c/a/n/t/b/b;)Lc/c/a/n/t/b/c;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/t/b/a;->a:Lc/c/a/n/t/b/b;

    invoke-static {v1}, Lc/c/a/n/t/b/b;->a(Lc/c/a/n/t/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/t/b/c;->a(Ljava/lang/String;)V

    return-void
.end method
