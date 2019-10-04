.class final Lcom/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/a/a/a/e;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/a/e;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/c;->b:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    iget-object v1, p0, Lcom/a/a/a/c;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/e;->isFullMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/a/a/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    const-string v1, "key"

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    const-string v1, "value"

    invoke-virtual {v0, p2, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/a/e;->limitStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    const-string v1, "key"

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    const-string v1, "value"

    invoke-virtual {v0, p2, v1}, Lcom/a/a/a/e;->isNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/a/e;->limitStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/a/a/a/c;->a:Lcom/a/a/a/e;

    invoke-virtual {v0, p2}, Lcom/a/a/a/e;->limitStringLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Lorg/a/c;

    iget-object v1, p0, Lcom/a/a/a/c;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
