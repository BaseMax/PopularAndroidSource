.class public Lcom/koushikdutta/ion/FileCacheStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cache:Lcom/koushikdutta/async/e/c;

.field ion:Lcom/koushikdutta/ion/Ion;

.field rawKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/e/c;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    .line 31
    iput-object p2, p0, Lcom/koushikdutta/ion/FileCacheStore;->cache:Lcom/koushikdutta/async/e/c;

    .line 32
    iput-object p3, p0, Lcom/koushikdutta/ion/FileCacheStore;->rawKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/ion/FileCacheStore;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/koushikdutta/ion/FileCacheStore;->computeKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 98
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getIoExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/ion/FileCacheStore$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/koushikdutta/ion/FileCacheStore$2;-><init>(Lcom/koushikdutta/ion/FileCacheStore;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private computeKey()Ljava/lang/String;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/ion/FileCacheStore;->rawKey:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/koushikdutta/ion/FileCacheStore;->computeKey()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->cache:Lcom/koushikdutta/async/e/c;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/e/c;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    iget-object v2, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/Ion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/ion/Ion;->build(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/koushikdutta/ion/builder/LoadBuilder;->load(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/builder/Builders$Any$B;

    .line 126
    invoke-interface {v0, p1}, Lcom/koushikdutta/ion/builder/Builders$Any$B;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Lcom/koushikdutta/ion/future/ResponseFuture;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/koushikdutta/async/c/a<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 37
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->getIoExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/ion/FileCacheStore$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore$1;-><init>(Lcom/koushikdutta/ion/FileCacheStore;Lcom/koushikdutta/async/c/a;Ljava/lang/Object;Lcom/koushikdutta/async/b/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public as(Lcom/google/gson/b/a;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Lcom/google/gson/b/a;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/Class;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public asDocument()Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/koushikdutta/async/c/c;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    return-object v0
.end method

.method public asJsonArray()Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    return-object v0
.end method

.method public asJsonObject()Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    return-object v0
.end method

.method public asString()Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/async/b/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->as(Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/gson/b/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Lcom/google/gson/b/a;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 163
    new-instance v0, Lcom/koushikdutta/async/c/c;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getJsonArray()Lcom/google/gson/JsonArray;
    .locals 1

    .line 155
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method public getJsonObject()Lcom/google/gson/JsonObject;
    .locals 1

    .line 147
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 135
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/FileCacheStore;->get(Lcom/koushikdutta/async/c/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lcom/google/gson/b/a;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/gson/b/a<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Lcom/google/gson/b/a;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Class;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/async/b/e<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonSerializer;

    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->ion:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->configure()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion$Config;->getGson()Lcom/google/gson/e;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/koushikdutta/ion/gson/GsonSerializer;-><init>(Lcom/google/gson/e;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public putDocument(Lorg/w3c/dom/Document;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/koushikdutta/async/c/c;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/c;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public putJsonArray(Lcom/google/gson/JsonArray;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public putJsonObject(Lcom/google/gson/JsonObject;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonObjectParser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/FileCacheStore;->put(Ljava/lang/Object;Lcom/koushikdutta/async/c/a;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    return-object p1
.end method

.method public remove()V
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/koushikdutta/ion/FileCacheStore;->computeKey()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/koushikdutta/ion/FileCacheStore;->cache:Lcom/koushikdutta/async/e/c;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/e/c;->remove(Ljava/lang/String;)V

    return-void
.end method
