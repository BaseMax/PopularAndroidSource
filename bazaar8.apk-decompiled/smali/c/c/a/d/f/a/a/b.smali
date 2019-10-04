.class public final Lc/c/a/d/f/a/a/b;
.super Ljava/lang/Object;
.source "AlertDialog.kt"

# interfaces
.implements Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/f/a/a/a;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/d/f/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/d/f/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/d/f/a/a/b;->a:Lc/c/a/d/f/a/a/a;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/a/a/b;->a:Lc/c/a/d/f/a/a/a;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/f/a/a/b;->a:Lc/c/a/d/f/a/a/a;

    invoke-virtual {v0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/d/f/r;->onCancel()V

    :cond_0
    return-void
.end method

.method public onCommit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/d/f/a/a/b;->a:Lc/c/a/d/f/a/a/a;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    .line 2
    iget-object v0, p0, Lc/c/a/d/f/a/a/b;->a:Lc/c/a/d/f/a/a/a;

    invoke-virtual {v0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    invoke-interface {v0, v1}, Lc/c/a/d/f/r;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
