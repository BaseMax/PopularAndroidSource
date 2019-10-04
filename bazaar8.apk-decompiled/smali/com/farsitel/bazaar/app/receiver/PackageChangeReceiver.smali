.class public final Lcom/farsitel/bazaar/app/receiver/PackageChangeReceiver;
.super Ld/a/e;
.source "PackageChangeReceiver.kt"


# instance fields
.field public a:Lc/c/a/b/d/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ld/a/e;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_5

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x304ed112

    if-eq v0, v1, :cond_3

    const v1, 0x1f50b9c2

    if-eq v0, v1, :cond_2

    const v1, 0x5c1076e2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 4
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->ADD:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->REMOVE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    sget-object p2, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->REPLACE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/app/receiver/PackageChangeReceiver;->a:Lc/c/a/b/d/b;

    if-eqz v0, :cond_4

    .line 10
    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-direct {v1, p1, p2}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;)V

    .line 11
    invoke-virtual {v0, v1}, Lc/c/a/b/d/b;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V

    .line 12
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    .line 13
    new-instance v1, Lc/c/a/a/a/a;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/PackageChangeEvent;

    invoke-direct {v2, p1, p2}, Lcom/farsitel/bazaar/analytics/model/what/PackageChangeEvent;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;)V

    new-instance p1, Lcom/farsitel/bazaar/analytics/model/where/PackageChangeReceiver;

    invoke-direct {p1}, Lcom/farsitel/bazaar/analytics/model/where/PackageChangeReceiver;-><init>()V

    const-string p2, "user"

    invoke-direct {v1, p2, v2, p1}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    .line 14
    invoke-virtual {v0, v1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void

    :cond_4
    const-string p1, "appManager"

    .line 15
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
