.class public final Lf/a/a/a/a/c;
.super Ljava/lang/Object;
.source "Mapper.kt"


# direct methods
.method public static final a(Lf/a/a/a/a/a;)Lc/c/a/a/a/a;
    .locals 4

    const-string v0, "$this$toEvent"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/a/a/a;

    .line 2
    invoke-virtual {p0}, Lf/a/a/a/a/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "agent"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;

    invoke-direct {v2, p0}, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;-><init>(Lf/a/a/a/a/a;)V

    .line 4
    new-instance v3, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$2;

    invoke-direct {v3, p0}, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$2;-><init>(Lf/a/a/a/a/a;)V

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    return-object v0
.end method
