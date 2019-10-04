.class final Lcom/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/b;


# instance fields
.field private final a:Lcom/b/a/o;


# direct methods
.method public constructor <init>(Lcom/b/a/o;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Parser should not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    new-instance v2, Lcom/b/a/i$2;

    invoke-direct {v2, p0}, Lcom/b/a/i$2;-><init>(Lcom/b/a/i;)V

    .line 89
    invoke-virtual {v2}, Lcom/b/a/i$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 88
    invoke-interface {v1, p1, v2}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 91
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v2, v1}, Lcom/b/a/o;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v2, v1, p2}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    new-instance v2, Lcom/b/a/i$3;

    invoke-direct {v2, p0}, Lcom/b/a/i$3;-><init>(Lcom/b/a/i;)V

    .line 106
    invoke-virtual {v2}, Lcom/b/a/i$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 105
    invoke-interface {v1, p1, v2}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 108
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    iget-object v2, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/b/a/o;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v3, v2, p2}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/b/a/o;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v3, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v3, v1, p3}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final fromString(Ljava/lang/String;Lcom/b/a/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/b/a/c;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "data info"

    .line 41
    invoke-static {v1, p2}, Lcom/b/a/l;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    iget-object v1, p2, Lcom/b/a/c;->c:Ljava/lang/Class;

    .line 44
    iget-object v2, p2, Lcom/b/a/c;->d:Ljava/lang/Class;

    .line 46
    iget-char p2, p2, Lcom/b/a/c;->a:C

    packed-switch p2, :pswitch_data_0

    return-object v0

    .line 54
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/b/a/i;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_1
    invoke-direct {p0, p1, v1, v2}, Lcom/b/a/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    if-nez v1, :cond_1

    .line 1067
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1069
    :cond_1
    iget-object p2, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    new-instance v0, Lcom/b/a/i$1;

    invoke-direct {v0, p0}, Lcom/b/a/i$1;-><init>(Lcom/b/a/i;)V

    .line 1072
    invoke-virtual {v0}, Lcom/b/a/i$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1069
    invoke-interface {p2, p1, v0}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1075
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1077
    iget-object v2, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/b/a/o;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 1061
    :pswitch_3
    iget-object p2, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {p2, p1, v1}, Lcom/b/a/o;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/b/a/i;->a:Lcom/b/a/o;

    invoke-interface {v0, p1}, Lcom/b/a/o;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
