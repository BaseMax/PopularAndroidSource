.class public final Lc/c/a/n/r/m;
.super Ljava/lang/Object;
.source "MyBazaarFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Wa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/n/r/m;->b:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/m;->b:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/MyBazaarHelpButtonClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/MyBazaarHelpButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/r/m;->b:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/c/a/n/r/m;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
