.class public final Lc/c/a/n/s/a/a/b;
.super Ljava/lang/Object;
.source "CreditOptionsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/s/a/a/b;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lc/c/a/n/s/a/a/b;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->a()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lc/c/a/n/s/a/a/b;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/BuyCreditClick;

    invoke-direct {v3, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/BuyCreditClick;-><init>(J)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/s/a/a/b;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->b(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)Lc/c/a/n/s/a/a/g;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/s/a/a/b;->a:Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/c/a/n/s/a/a/g;->a(J)V

    return-void
.end method
