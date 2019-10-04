.class public final Lc/c/a/n/c/d/a/b;
.super Ljava/lang/Object;
.source "BaseDetailToolbarFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/a/a;->b(Lcom/farsitel/bazaar/core/model/Resource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/a/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/d/a/b;->a:Lc/c/a/n/c/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc/c/a/n/c/d/a/b;->a:Lc/c/a/n/c/d/a/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/c/a/n/c/d/a/b;->a:Lc/c/a/n/c/d/a/a;

    invoke-virtual {v0}, Lc/c/a/n/c/d/a/a;->qb()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2, v1}, Lc/c/a/c/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method
