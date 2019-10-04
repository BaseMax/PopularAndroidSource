.class public final Lc/c/a/n/b/c;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/c;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/c;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/InstallFabButtonClick;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/InstallFabButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/b/c;->a:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->k(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-void
.end method
