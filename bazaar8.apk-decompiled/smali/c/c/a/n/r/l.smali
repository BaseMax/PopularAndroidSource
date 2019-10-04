.class public final Lc/c/a/n/r/l;
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
.field public final synthetic a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/r/l;->a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/l;->a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/MyBazaarSettingsButtonClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/MyBazaarSettingsButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/r/l;->a:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    sget-object v0, Lc/c/a/n/r/o;->a:Lc/c/a/n/r/o$a;

    invoke-virtual {v0}, Lc/c/a/n/r/o$a;->a()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
