.class public final Lcom/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/j;


# instance fields
.field private final a:Lcom/b/a/r;

.field private final b:Lcom/b/a/b;

.field private final c:Lcom/b/a/e;

.field private final d:Lcom/b/a/p;

.field private final e:Lcom/b/a/m;


# direct methods
.method public constructor <init>(Lcom/b/a/h;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iget-object v0, p1, Lcom/b/a/h;->e:Lcom/b/a/e;

    if-nez v0, :cond_0

    .line 1093
    new-instance v0, Lcom/b/a/a;

    iget-object v1, p1, Lcom/b/a/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/b/a/h;->e:Lcom/b/a/e;

    .line 1094
    iget-object v0, p1, Lcom/b/a/h;->e:Lcom/b/a/e;

    invoke-interface {v0}, Lcom/b/a/e;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    new-instance v0, Lcom/b/a/n;

    invoke-direct {v0}, Lcom/b/a/n;-><init>()V

    iput-object v0, p1, Lcom/b/a/h;->e:Lcom/b/a/e;

    .line 1098
    :cond_0
    iget-object v0, p1, Lcom/b/a/h;->e:Lcom/b/a/e;

    .line 12
    iput-object v0, p0, Lcom/b/a/d;->c:Lcom/b/a/e;

    .line 2071
    iget-object v0, p1, Lcom/b/a/h;->b:Lcom/b/a/r;

    if-nez v0, :cond_1

    .line 2072
    new-instance v0, Lcom/b/a/q;

    iget-object v1, p1, Lcom/b/a/h;->a:Landroid/content/Context;

    const-string v2, "Hawk2"

    invoke-direct {v0, v1, v2}, Lcom/b/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/b/a/h;->b:Lcom/b/a/r;

    .line 2074
    :cond_1
    iget-object v0, p1, Lcom/b/a/h;->b:Lcom/b/a/r;

    .line 13
    iput-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    .line 2078
    iget-object v0, p1, Lcom/b/a/h;->c:Lcom/b/a/b;

    if-nez v0, :cond_3

    .line 2079
    new-instance v0, Lcom/b/a/i;

    .line 2085
    iget-object v1, p1, Lcom/b/a/h;->d:Lcom/b/a/o;

    if-nez v1, :cond_2

    .line 2086
    new-instance v1, Lcom/b/a/f;

    new-instance v2, Lcom/google/gson/e;

    invoke-direct {v2}, Lcom/google/gson/e;-><init>()V

    invoke-direct {v1, v2}, Lcom/b/a/f;-><init>(Lcom/google/gson/e;)V

    iput-object v1, p1, Lcom/b/a/h;->d:Lcom/b/a/o;

    .line 2088
    :cond_2
    iget-object v1, p1, Lcom/b/a/h;->d:Lcom/b/a/o;

    .line 2079
    invoke-direct {v0, v1}, Lcom/b/a/i;-><init>(Lcom/b/a/o;)V

    iput-object v0, p1, Lcom/b/a/h;->c:Lcom/b/a/b;

    .line 2081
    :cond_3
    iget-object v0, p1, Lcom/b/a/h;->c:Lcom/b/a/b;

    .line 14
    iput-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/b;

    .line 2102
    iget-object v0, p1, Lcom/b/a/h;->f:Lcom/b/a/p;

    if-nez v0, :cond_4

    .line 2103
    new-instance v0, Lcom/b/a/k;

    invoke-virtual {p1}, Lcom/b/a/h;->a()Lcom/b/a/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/k;-><init>(Lcom/b/a/m;)V

    iput-object v0, p1, Lcom/b/a/h;->f:Lcom/b/a/p;

    .line 2105
    :cond_4
    iget-object v0, p1, Lcom/b/a/h;->f:Lcom/b/a/p;

    .line 15
    iput-object v0, p0, Lcom/b/a/d;->d:Lcom/b/a/p;

    .line 16
    invoke-virtual {p1}, Lcom/b/a/h;->a()Lcom/b/a/m;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/d;->e:Lcom/b/a/m;

    .line 18
    iget-object p1, p0, Lcom/b/a/d;->e:Lcom/b/a/m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hawk.init -> Encryption : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/d;->c:Lcom/b/a/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/b/a/m;->onLog(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/b/a/d;->e:Lcom/b/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/m;->onLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    invoke-interface {v0, p1}, Lcom/b/a/r;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final count()J
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    invoke-interface {v0}, Lcom/b/a/r;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final delete(Ljava/lang/String;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    invoke-interface {v0, p1}, Lcom/b/a/r;->delete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final deleteAll()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    invoke-interface {v0}, Lcom/b/a/r;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hawk.get -> key: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Hawk.get -> null key, returning null value "

    .line 74
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    invoke-interface {v1, p1}, Lcom/b/a/r;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hawk.get -> Fetched from storage : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string p1, "Hawk.get -> Fetching from storage failed"

    .line 82
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return-object v0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/b/a/d;->d:Lcom/b/a/p;

    invoke-interface {v2, v1}, Lcom/b/a/p;->deserialize(Ljava/lang/String;)Lcom/b/a/c;

    move-result-object v1

    const-string v2, "Hawk.get -> Deserialized"

    .line 88
    invoke-direct {p0, v2}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string p1, "Hawk.get -> Deserialization failed"

    .line 90
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return-object v0

    .line 97
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/b/a/d;->c:Lcom/b/a/e;

    iget-object v3, v1, Lcom/b/a/c;->b:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/b/a/e;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "Hawk.get -> Decrypted to : "

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object p1, v0

    .line 100
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hawk.get -> Decrypt failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "Hawk.get -> Decrypt failed"

    .line 103
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return-object v0

    .line 110
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/b/a/d;->b:Lcom/b/a/b;

    invoke-interface {v2, p1, v1}, Lcom/b/a/b;->fromString(Ljava/lang/String;Lcom/b/a/c;)Ljava/lang/Object;

    move-result-object v0

    const-string p1, "Hawk.get -> Converted to : "

    .line 111
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p1, "Hawk.get -> Converter failed"

    .line 113
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/b/a/d;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public final isBuilt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    const-string v0, "Key"

    .line 23
    invoke-static {v0, p1}, Lcom/b/a/l;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hawk.put -> key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, "Hawk.put -> Value is null. Any existing value will be deleted with the given key"

    .line 28
    invoke-direct {p0, p2}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/b/a/d;->delete(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/b/a/d;->b:Lcom/b/a/b;

    invoke-interface {v0, p2}, Lcom/b/a/b;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hawk.put -> Converted to "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "Hawk.put -> Converter failed"

    .line 36
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/b/a/d;->c:Lcom/b/a/e;

    invoke-interface {v3, p1, v0}, Lcom/b/a/e;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Hawk.put -> Encrypted to  "

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_2

    const-string p1, "Hawk.put -> Encryption failed"

    .line 49
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return v1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/b/a/d;->d:Lcom/b/a/p;

    invoke-interface {v0, v2, p2}, Lcom/b/a/p;->serialize(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Hawk.put -> Serialized to"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    if-nez p2, :cond_3

    const-string p1, "Hawk.put -> Serialization failed"

    .line 57
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return v1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/b/a/d;->a:Lcom/b/a/r;

    invoke-interface {v0, p1, p2}, Lcom/b/a/r;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Hawk.put -> Stored successfully"

    .line 63
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    const-string p1, "Hawk.put -> Store operation failed"

    .line 66
    invoke-direct {p0, p1}, Lcom/b/a/d;->a(Ljava/lang/String;)V

    return v1
.end method
