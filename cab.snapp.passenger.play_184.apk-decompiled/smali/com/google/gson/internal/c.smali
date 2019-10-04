.class public final Lcom/google/gson/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/internal/a/b;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/g<",
            "*>;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/gson/internal/a/b;->getInstance()Lcom/google/gson/internal/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/c;->b:Lcom/google/gson/internal/a/b;

    .line 54
    iput-object p1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/google/gson/internal/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/gson/internal/h<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/gson/internal/c;->b:Lcom/google/gson/internal/a/b;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/a/b;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 105
    :cond_0
    new-instance v0, Lcom/google/gson/internal/c$8;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/c$8;-><init>(Lcom/google/gson/internal/c;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final get(Lcom/google/gson/b/a;)Lcom/google/gson/internal/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/b/a<",
            "TT;>;)",
            "Lcom/google/gson/internal/h<",
            "TT;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/b/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/b/a;->getRawType()Ljava/lang/Class;

    move-result-object p1

    .line 64
    iget-object v1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/g;

    if-eqz v1, :cond_0

    .line 66
    new-instance p1, Lcom/google/gson/internal/c$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/google/gson/internal/c$1;-><init>(Lcom/google/gson/internal/c;Lcom/google/gson/g;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    .line 76
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/g;

    if-eqz v1, :cond_1

    .line 78
    new-instance p1, Lcom/google/gson/internal/c$7;

    invoke-direct {p1, p0, v1, v0}, Lcom/google/gson/internal/c$7;-><init>(Lcom/google/gson/internal/c;Lcom/google/gson/g;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 85
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;->a(Ljava/lang/Class;)Lcom/google/gson/internal/h;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 1136
    :cond_2
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1137
    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1138
    new-instance v1, Lcom/google/gson/internal/c$9;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$9;-><init>(Lcom/google/gson/internal/c;)V

    goto/16 :goto_0

    .line 1143
    :cond_3
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1144
    new-instance v1, Lcom/google/gson/internal/c$10;

    invoke-direct {v1, p0, v0}, Lcom/google/gson/internal/c$10;-><init>(Lcom/google/gson/internal/c;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 1159
    :cond_4
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1160
    new-instance v1, Lcom/google/gson/internal/c$11;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$11;-><init>(Lcom/google/gson/internal/c;)V

    goto/16 :goto_0

    .line 1165
    :cond_5
    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1166
    new-instance v1, Lcom/google/gson/internal/c$12;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$12;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    .line 1172
    :cond_6
    new-instance v1, Lcom/google/gson/internal/c$13;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$13;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    .line 1180
    :cond_7
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1181
    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1182
    new-instance v1, Lcom/google/gson/internal/c$14;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$14;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    .line 1187
    :cond_8
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1188
    new-instance v1, Lcom/google/gson/internal/c$2;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$2;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    .line 1193
    :cond_9
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1194
    new-instance v1, Lcom/google/gson/internal/c$3;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$3;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    .line 1199
    :cond_a
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    const-class v1, Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 1200
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/gson/b/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/b/a;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 1199
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1201
    new-instance v1, Lcom/google/gson/internal/c$4;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$4;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    .line 1207
    :cond_b
    new-instance v1, Lcom/google/gson/internal/c$5;

    invoke-direct {v1, p0}, Lcom/google/gson/internal/c$5;-><init>(Lcom/google/gson/internal/c;)V

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_d

    return-object v1

    .line 1220
    :cond_d
    new-instance v1, Lcom/google/gson/internal/c$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/gson/internal/c$6;-><init>(Lcom/google/gson/internal/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
