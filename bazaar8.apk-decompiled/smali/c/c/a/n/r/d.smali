.class public final Lc/c/a/n/r/d;
.super Ljava/lang/Object;
.source "ChildMyBazaarFragment.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/r/f;->a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarSwitchItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/r/f;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lc/c/a/n/r/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/r/d;->a:Lc/c/a/n/r/f;

    iput-boolean p2, p0, Lc/c/a/n/r/d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-static {p0}, Lc/c/a/d/f/r$a;->b(Lc/c/a/d/f/r;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/n/r/d;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 3
    iget-object v0, p0, Lc/c/a/n/r/d;->a:Lc/c/a/n/r/f;

    invoke-static {v0, p1}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;Z)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/r/d;->a:Lc/c/a/n/r/f;

    invoke-static {v0}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;)Lc/c/a/n/r/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/n/r/g;->l()V

    .line 5
    iget-object v1, p0, Lc/c/a/n/r/d;->a:Lc/c/a/n/r/f;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/BazaarKidsDialogButtonClick;

    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/DialogButtonClickType;->OK:Lcom/farsitel/bazaar/analytics/model/what/DialogButtonClickType;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, p1, v3}, Lcom/farsitel/bazaar/analytics/model/what/BazaarKidsDialogButtonClick;-><init>(Lcom/farsitel/bazaar/analytics/model/what/DialogButtonClickType;ZLjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    sget-object p1, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/app/BazaarApp;->a(Z)V

    return-void
.end method

.method public onCancel()V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/d;->a:Lc/c/a/n/r/f;

    iget-boolean v1, p0, Lc/c/a/n/r/d;->b:Z

    invoke-static {v0, v1}, Lc/c/a/n/r/f;->a(Lc/c/a/n/r/f;Z)V

    .line 2
    iget-object v2, p0, Lc/c/a/n/r/d;->a:Lc/c/a/n/r/f;

    .line 3
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/BazaarKidsDialogButtonClick;

    .line 4
    sget-object v0, Lcom/farsitel/bazaar/analytics/model/what/DialogButtonClickType;->CANCEL:Lcom/farsitel/bazaar/analytics/model/what/DialogButtonClickType;

    .line 5
    iget-boolean v1, p0, Lc/c/a/n/r/d;->b:Z

    .line 6
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-direct {v3, v0, v1, v4}, Lcom/farsitel/bazaar/analytics/model/what/BazaarKidsDialogButtonClick;-><init>(Lcom/farsitel/bazaar/analytics/model/what/DialogButtonClickType;ZLjava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
