.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/internal/c;

.field private final b:Lcom/google/gson/d;

.field private final c:Lcom/google/gson/internal/Excluder;

.field private final d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field private final e:Lcom/google/gson/internal/a/b;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/c;Lcom/google/gson/d;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/gson/internal/a/b;->getInstance()Lcom/google/gson/internal/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e:Lcom/google/gson/internal/a/b;

    .line 58
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lcom/google/gson/internal/c;

    .line 59
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:Lcom/google/gson/d;

    .line 60
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/Excluder;

    .line 61
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->d:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    const-class v0, Lcom/google/gson/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/a/c;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->b:Lcom/google/gson/d;

    invoke-interface {v0, p1}, Lcom/google/gson/d;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-interface {v0}, Lcom/google/gson/a/c;->value()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-interface {v0}, Lcom/google/gson/a/c;->alternate()[Ljava/lang/String;

    move-result-object v0

    .line 82
    array-length v1, v0

    if-nez v1, :cond_1

    .line 83
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 86
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(Lcom/google/gson/e;Lcom/google/gson/b/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 145
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 146
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v13

    .line 150
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/gson/b/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v14

    move-object/from16 v16, p2

    move-object/from16 v15, p3

    .line 151
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v15, v0, :cond_b

    .line 152
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 153
    array-length v9, v10

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_a

    aget-object v6, v10, v7

    const/4 v5, 0x1

    .line 154
    invoke-virtual {v11, v6, v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 155
    invoke-virtual {v11, v6, v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    if-nez v0, :cond_2

    if-eqz v17, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v30, v7

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p2, v15

    const/16 v22, 0x0

    goto/16 :goto_8

    .line 159
    :cond_2
    :goto_2
    iget-object v1, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->e:Lcom/google/gson/internal/a/b;

    invoke-virtual {v1, v6}, Lcom/google/gson/internal/a/b;->makeAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 160
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/b/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v15, v2}, Lcom/google/gson/internal/b;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 161
    invoke-direct {v11, v6}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/16 v19, 0x0

    move-object/from16 v1, v19

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_8

    .line 164
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p2, v15

    move-object/from16 v15, v20

    check-cast v15, Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v20, 0x0

    goto :goto_4

    :cond_3
    move/from16 v20, v0

    .line 167
    :goto_4
    invoke-static/range {v18 .. v18}, Lcom/google/gson/b/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Lcom/google/gson/b/a;->getRawType()Ljava/lang/Class;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/gson/internal/j;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v21

    .line 1110
    const-class v5, Lcom/google/gson/a/b;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/google/gson/a/b;

    if-eqz v5, :cond_4

    .line 1113
    iget-object v8, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lcom/google/gson/internal/c;

    invoke-static {v8, v12, v0, v5}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a(Lcom/google/gson/internal/c;Lcom/google/gson/e;Lcom/google/gson/b/a;Lcom/google/gson/a/b;)Lcom/google/gson/q;

    move-result-object v5

    goto :goto_5

    :cond_4
    move-object/from16 v5, v19

    :goto_5
    if-eqz v5, :cond_5

    const/4 v8, 0x1

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_6
    if-nez v5, :cond_6

    .line 1117
    invoke-virtual {v12, v0}, Lcom/google/gson/e;->getAdapter(Lcom/google/gson/b/a;)Lcom/google/gson/q;

    move-result-object v5

    :cond_6
    move-object/from16 v23, v5

    .line 1120
    new-instance v5, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object/from16 v24, v0

    move-object v0, v5

    move-object v11, v1

    move-object/from16 v1, p0

    move/from16 v25, v2

    move-object v2, v15

    move/from16 v26, v3

    move/from16 v3, v20

    move-object/from16 v27, v4

    move/from16 v4, v17

    move-object v12, v5

    const/16 v28, 0x1

    move-object v5, v6

    move-object/from16 v29, v6

    move v6, v8

    move/from16 v30, v7

    move-object/from16 v7, v23

    const/16 v22, 0x0

    move-object/from16 v8, p1

    move/from16 v23, v9

    move-object/from16 v9, v24

    move-object/from16 v24, v10

    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/q;Lcom/google/gson/e;Lcom/google/gson/b/a;Z)V

    .line 168
    invoke-interface {v13, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;

    if-nez v11, :cond_7

    move-object v1, v0

    goto :goto_7

    :cond_7
    move-object v1, v11

    :goto_7
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    move/from16 v0, v20

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v3, v26

    move-object/from16 v4, v27

    move-object/from16 v6, v29

    move/from16 v7, v30

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_8
    move-object v11, v1

    move/from16 v30, v7

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 p2, v15

    const/16 v22, 0x0

    if-nez v11, :cond_9

    :goto_8
    add-int/lit8 v7, v30, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    move/from16 v9, v23

    move-object/from16 v10, v24

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 172
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 p2, v15

    .line 176
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/b/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Lcom/google/gson/internal/b;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/b/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v16

    .line 177
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/b/a;->getRawType()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    goto/16 :goto_0

    :cond_b
    return-object v13
.end method


# virtual methods
.method public final create(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a<",
            "TT;>;)",
            "Lcom/google/gson/q<",
            "TT;>;"
        }
    .end annotation

    .line 95
    invoke-virtual {p2}, Lcom/google/gson/b/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 97
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a:Lcom/google/gson/internal/c;

    invoke-virtual {v1, p2}, Lcom/google/gson/internal/c;->get(Lcom/google/gson/b/a;)Lcom/google/gson/internal/h;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;-><init>(Lcom/google/gson/internal/h;Ljava/util/Map;)V

    return-object v2
.end method

.method public final excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->c:Lcom/google/gson/internal/Excluder;

    .line 1069
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
