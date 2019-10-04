.class public final Lc/c/a/n/p/a/a/g;
.super Ljava/lang/Object;
.source "MergeAccountSuccessDialog.kt"

# interfaces
.implements Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/p/a/a/h;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/p/a/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/n/p/a/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/a/a/g;->a:Lc/c/a/n/p/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->c(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->a(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public onCommit()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a$a;->b(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/p/a/a/g;->a:Lc/c/a/n/p/a/a/h;

    invoke-virtual {v0}, Lc/c/a/n/p/a/a/h;->Za()Lc/c/a/d/f/r;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    invoke-interface {v0, v1}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    return-void
.end method
