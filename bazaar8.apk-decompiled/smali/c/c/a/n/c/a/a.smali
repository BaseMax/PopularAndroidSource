.class public abstract Lc/c/a/n/c/a/a;
.super Lc/c/a/d/f/g;
.source "BaseAnalyticsDaggerDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/d/f/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final ta:Z

.field public final ua:Lc/c/a/c/h/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/g;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/c/h/h;

    invoke-direct {v0}, Lc/c/a/c/h/h;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/a/a;->ua:Lc/c/a/c/h/h;

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/c/a/a;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/a/a;->_a()Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, "user"

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/a/a;->a(Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendAnalyticsEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract _a()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
.end method

.method public final a(Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;)V
    .locals 2

    const-string v0, "eventWhat"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "agent"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    new-instance v1, Lc/c/a/a/a/a;

    invoke-direct {v1, p3, p1, p2}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "You are trying to send an event when its where is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ab()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/c/a/a;->ta:Z

    return v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/g;->qa()V

    invoke-virtual {p0}, Lc/c/a/d/f/l;->Qa()V

    return-void
.end method

.method public sa()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->sa()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/a/a;->ua:Lc/c/a/c/h/h;

    invoke-virtual {v0}, Lc/c/a/c/h/h;->d()J

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/a/a;->ab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/CloseEvent;

    iget-object v0, p0, Lc/c/a/n/c/a/a;->ua:Lc/c/a/c/h/h;

    invoke-virtual {v0}, Lc/c/a/c/h/h;->b()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/CloseEvent;-><init>(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/a;->a(Lc/c/a/n/c/a/a;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public ta()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ta()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/a/a;->ua:Lc/c/a/c/h/h;

    invoke-virtual {v0}, Lc/c/a/c/h/h;->c()V

    return-void
.end method
