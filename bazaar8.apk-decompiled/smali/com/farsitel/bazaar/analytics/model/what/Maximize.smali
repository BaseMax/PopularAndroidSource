.class public final Lcom/farsitel/bazaar/analytics/model/what/Maximize;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "OtherEvent.kt"


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    const-string v0, "maximize"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/Maximize;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/model/what/Maximize;->name:Ljava/lang/String;

    return-object v0
.end method
