.class public final Lcom/google/gson/JsonObject;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# instance fields
.field private final members:Lcom/google/gson/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/g<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/google/gson/internal/g;

    invoke-direct {v0}, Lcom/google/gson/internal/g;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 1

    if-nez p1, :cond_0

    .line 126
    sget-object p1, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 1

    if-nez p2, :cond_0

    .line 59
    sget-object p2, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 105
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 0

    .line 116
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 94
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p2}, Lcom/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public final bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->deepCopy()Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public final deepCopy()Lcom/google/gson/JsonObject;
    .locals 4

    .line 42
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v1}, Lcom/google/gson/internal/g;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->deepCopy()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0}, Lcom/google/gson/internal/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 210
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    .line 211
    invoke-virtual {p1, v0}, Lcom/google/gson/internal/g;->equals(Ljava/lang/Object;)Z

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

.method public final get(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    return-object p1
.end method

.method public final getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    return-object p1
.end method

.method public final getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public final getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonPrimitive;

    return-object p1
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/g;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0}, Lcom/google/gson/internal/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0}, Lcom/google/gson/internal/g;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/g;

    invoke-virtual {v0}, Lcom/google/gson/internal/g;->size()I

    move-result v0

    return v0
.end method
