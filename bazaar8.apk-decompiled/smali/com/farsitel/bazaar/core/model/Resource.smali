.class public final Lcom/farsitel/bazaar/core/model/Resource;
.super Ljava/lang/Object;
.source "Resource.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

.field public final resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/ResourceState;",
            "TT;",
            "Lcom/farsitel/bazaar/data/entity/ErrorModel;",
            ")V"
        }
    .end annotation

    const-string v0, "resourceState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/core/model/Resource;->resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;

    iput-object p2, p0, Lcom/farsitel/bazaar/core/model/Resource;->data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final c()Lcom/farsitel/bazaar/data/entity/ErrorModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    return-object v0
.end method

.method public final d()Lcom/farsitel/bazaar/core/model/ResourceState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/core/model/Resource;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;

    iget-object v1, p1, Lcom/farsitel/bazaar/core/model/Resource;->resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->data:Ljava/lang/Object;

    iget-object v1, p1, Lcom/farsitel/bazaar/core/model/Resource;->data:Ljava/lang/Object;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    iget-object p1, p1, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

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

    iget-object v0, p0, Lcom/farsitel/bazaar/core/model/Resource;->resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/core/model/Resource;->data:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

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

    const-string v1, "Resource(resourceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/core/model/Resource;->resourceState:Lcom/farsitel/bazaar/core/model/ResourceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/core/model/Resource;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/core/model/Resource;->failure:Lcom/farsitel/bazaar/data/entity/ErrorModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
