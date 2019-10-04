.class public final Lc/c/a/n/r/a/a;
.super Ljava/lang/Object;
.source "BazaarKidsDialog.kt"

# interfaces
.implements Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/r/a/b;->a(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/r/a/b;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lc/c/a/n/r/a/b;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/a/a;->a:Lc/c/a/n/r/a/b;

    iput-object p2, p0, Lc/c/a/n/r/a/a;->b:Ljava/lang/Boolean;

    .line 1
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
    iget-object v0, p0, Lc/c/a/n/r/a/a;->a:Lc/c/a/n/r/a/b;

    iget-object v0, v0, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    invoke-virtual {v0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/d/f/r;->onCancel()V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/a/n/r/a/a;->a:Lc/c/a/n/r/a/b;

    iget-object v0, v0, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    invoke-virtual {v0}, Lb/o/a/d;->La()V

    return-void
.end method

.method public onCommit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/a;->a:Lc/c/a/n/r/a/b;

    iget-object v0, v0, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    invoke-static {v0}, Lc/c/a/n/r/a/c;->b(Lc/c/a/n/r/a/c;)Lc/c/a/n/r/a/d;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/r/a/a;->a:Lc/c/a/n/r/a/b;

    iget-object v1, v1, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    invoke-static {v1}, Lc/c/a/n/r/a/c;->a(Lc/c/a/n/r/a/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/r/a/d;->a(Ljava/lang/String;)V

    return-void
.end method
