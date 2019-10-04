.class public final Lc/c/a/n/b/l;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->jb()Lc/c/a/n/b/w;
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
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 6

    .line 2
    iget-object p1, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/b/w;->m()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/BookmarkClick;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/farsitel/bazaar/analytics/model/what/BookmarkClick;-><init>(ZLjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/b/w;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    const v0, 0x7f10011f

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    const v0, 0x7f10011e

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "if (viewModel.isBookmark\u2026ing.message_add_bookmark)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/n/b/l;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->e(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/d/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/l;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method
