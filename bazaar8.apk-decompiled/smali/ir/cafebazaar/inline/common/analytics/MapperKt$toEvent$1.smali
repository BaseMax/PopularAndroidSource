.class public final Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;
.super Lcom/farsitel/bazaar/analytics/model/what/WhatType;
.source "Mapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/a/c;->a(Lf/a/a/a/a/a;)Lc/c/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_toEvent:Lf/a/a/a/a/a;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf/a/a/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;->$this_toEvent:Lf/a/a/a/a/a;

    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/model/what/WhatType;-><init>()V

    .line 2
    iget-object p1, p0, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;->$this_toEvent:Lf/a/a/a/a/a;

    invoke-virtual {p1}, Lf/a/a/a/a/a;->g()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/common/analytics/MapperKt$toEvent$1;->$this_toEvent:Lf/a/a/a/a/a;

    invoke-virtual {v0}, Lf/a/a/a/a/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "this@toEvent.whatDetails"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/g/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
