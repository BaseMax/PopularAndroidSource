.class public final Lc/e/d/r;
.super Lc/e/d/p;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Lc/e/d/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/e/d/p;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lc/e/d/p;
    .locals 1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lc/e/d/q;->a:Lc/e/d/q;

    goto :goto_0

    :cond_0
    new-instance v0, Lc/e/d/t;

    invoke-direct {v0, p1}, Lc/e/d/t;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;)Lc/e/d/p;
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/d/p;

    return-object p1
.end method

.method public a(Ljava/lang/String;Lc/e/d/p;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lc/e/d/q;->a:Lc/e/d/q;

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p2}, Lc/e/d/r;->a(Ljava/lang/Object;)Lc/e/d/p;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc/e/d/r;->a(Ljava/lang/String;Lc/e/d/p;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lc/e/d/r;->a(Ljava/lang/Object;)Lc/e/d/p;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc/e/d/r;->a(Ljava/lang/String;Lc/e/d/p;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lc/e/d/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/d/r;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lc/e/d/r;

    if-eqz v0, :cond_0

    check-cast p1, Lc/e/d/r;

    iget-object p1, p1, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lc/e/d/p;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/d/r;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
