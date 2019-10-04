.class public final Lc/c/a/a/a/a;
.super Ljava/lang/Object;
.source "Event.kt"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

.field public d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V
    .locals 1

    const-string v0, "agent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatType"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whereType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    iput-object p3, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lc/c/a/a/a/a;->a:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/c/a/a/b/a/a/a/a;
    .locals 12

    const-string v0, "who"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/a/b/a/a/a/a;

    .line 2
    iget-wide v4, p0, Lc/c/a/a/a/a;->a:J

    .line 3
    iget-object v6, p0, Lc/c/a/a/a/a;->b:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/where/WhereType;->a()Ljava/lang/String;

    move-result-object v8

    .line 5
    iget-object v1, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;->a()Ljava/lang/String;

    move-result-object v10

    .line 6
    iget-object v1, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/where/WhereType;->b()Ljava/util/Map;

    move-result-object v9

    .line 7
    iget-object v1, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;->b()Ljava/util/Map;

    move-result-object v11

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-object v7, p1

    .line 8
    invoke-direct/range {v1 .. v11}, Lc/c/a/a/b/a/a/a/a;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final a()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/analytics/model/where/WhereType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    iget-object v2, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lc/c/a/c/b/g;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 12
    iget-object v2, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/analytics/model/where/WhereType;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lc/c/a/c/b/g;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 13
    invoke-static {v0, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/a/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/a/a/a;

    iget-object v0, p0, Lc/c/a/a/a/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    iget-object v1, p1, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    iget-object p1, p1, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/a/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event(agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", whatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/a/a;->c:Lcom/farsitel/bazaar/analytics/model/what/WhatType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", whereType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/a/a;->d:Lcom/farsitel/bazaar/analytics/model/where/WhereType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
