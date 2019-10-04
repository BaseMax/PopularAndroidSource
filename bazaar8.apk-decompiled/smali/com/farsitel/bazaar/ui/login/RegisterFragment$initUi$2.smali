.class public final Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RegisterFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/RegisterFragment;->_a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lb/a/d;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;->this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lb/a/d;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;->a(Lb/a/d;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lb/a/d;)V
    .locals 7

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;->this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/BackPressedEvent;

    invoke-direct {v2}, Lcom/farsitel/bazaar/analytics/model/what/BackPressedEvent;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$initUi$2;->this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->b(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)Lc/c/a/n/p/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/n/p/a;->l()V

    :cond_0
    return-void
.end method
