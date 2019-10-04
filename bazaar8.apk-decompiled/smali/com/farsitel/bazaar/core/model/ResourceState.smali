.class public abstract Lcom/farsitel/bazaar/core/model/ResourceState;
.super Ljava/lang/Object;
.source "ResourceState.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/core/model/ResourceState$UnKnown;,
        Lcom/farsitel/bazaar/core/model/ResourceState$Success;,
        Lcom/farsitel/bazaar/core/model/ResourceState$Loading;,
        Lcom/farsitel/bazaar/core/model/ResourceState$Error;,
        Lcom/farsitel/bazaar/core/model/ResourceState$CustomState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/core/model/ResourceState;-><init>()V

    return-void
.end method
