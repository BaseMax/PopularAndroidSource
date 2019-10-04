.class final Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;
.super Lcom/google/gson/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->create(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/q<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;


# direct methods
.method constructor <init>(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    iput-object p2, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/gson/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/google/gson/internal/k;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v0}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    :goto_0
    const-string v1, "cannot deserialize "

    if-eqz v0, :cond_2

    .line 250
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/q;

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {v2, p1}, Lcom/google/gson/q;->fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    new-instance p1, Lcom/google/gson/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$200(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subtype named "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; did you forget to register a subtype?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_2
    new-instance p1, Lcom/google/gson/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$200(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it does not define a field named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    .line 248
    invoke-static {v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/q;

    const-string v2, "cannot serialize "

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {v1, p2}, Lcom/google/gson/q;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    .line 270
    iget-object v1, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$000(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {p2, p1}, Lcom/google/gson/internal/k;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    return-void

    .line 275
    :cond_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 277
    iget-object v3, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v3}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 281
    iget-object v2, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$300(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    invoke-static {v2}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v3, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 284
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-static {v1, p1}, Lcom/google/gson/internal/k;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    return-void

    .line 278
    :cond_2
    new-instance p1, Lcom/google/gson/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it already defines a field named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory$1;->c:Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;

    .line 279
    invoke-static {v0}, Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;->access$100(Lcom/google/gson/typeadapters/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_3
    new-instance p1, Lcom/google/gson/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; did you forget to register a subtype?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/gson/l;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
