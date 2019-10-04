.class public final Lc/c/a/n/r/a/b;
.super Ljava/lang/Object;
.source "BazaarKidsDialog.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/r/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/r/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/r/a/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    sget v1, Lc/c/a/e;->dialogButtonLayout:I

    invoke-virtual {v0, v1}, Lc/c/a/n/r/a/c;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    const-string v1, "it"

    .line 3
    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100083

    goto :goto_0

    :cond_0
    const v1, 0x7f100092

    .line 4
    :goto_0
    iget-object v2, p0, Lc/c/a/n/r/a/b;->a:Lc/c/a/n/r/a/c;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(commitButtonMessage)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setCommitText(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lc/c/a/n/r/a/a;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/r/a/a;-><init>(Lc/c/a/n/r/a/b;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc/c/a/n/r/a/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
