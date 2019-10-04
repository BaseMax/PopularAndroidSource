.class public final Lcom/google/gson/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/gson/internal/Excluder;

.field private b:Lcom/google/gson/LongSerializationPolicy;

.field private c:Lcom/google/gson/d;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/r;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/r;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/f;->b:Lcom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/gson/f;->g:Z

    const/4 v1, 0x2

    .line 89
    iput v1, p0, Lcom/google/gson/f;->i:I

    .line 90
    iput v1, p0, Lcom/google/gson/f;->j:I

    .line 91
    iput-boolean v0, p0, Lcom/google/gson/f;->k:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/gson/f;->l:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/google/gson/f;->m:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/gson/f;->n:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/gson/f;->o:Z

    .line 96
    iput-boolean v0, p0, Lcom/google/gson/f;->p:Z

    return-void
.end method

.method constructor <init>(Lcom/google/gson/e;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/f;->b:Lcom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->d:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/f;->f:Ljava/util/List;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/gson/f;->g:Z

    const/4 v1, 0x2

    .line 89
    iput v1, p0, Lcom/google/gson/f;->i:I

    .line 90
    iput v1, p0, Lcom/google/gson/f;->j:I

    .line 91
    iput-boolean v0, p0, Lcom/google/gson/f;->k:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/gson/f;->l:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/google/gson/f;->m:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/gson/f;->n:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/gson/f;->o:Z

    .line 96
    iput-boolean v0, p0, Lcom/google/gson/f;->p:Z

    .line 114
    iget-object v0, p1, Lcom/google/gson/e;->b:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    .line 115
    iget-object v0, p1, Lcom/google/gson/e;->c:Lcom/google/gson/d;

    iput-object v0, p0, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    .line 116
    iget-object v0, p0, Lcom/google/gson/f;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/gson/e;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 117
    iget-boolean v0, p1, Lcom/google/gson/e;->e:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->g:Z

    .line 118
    iget-boolean v0, p1, Lcom/google/gson/e;->f:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->k:Z

    .line 119
    iget-boolean v0, p1, Lcom/google/gson/e;->g:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->o:Z

    .line 120
    iget-boolean v0, p1, Lcom/google/gson/e;->h:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->m:Z

    .line 121
    iget-boolean v0, p1, Lcom/google/gson/e;->i:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->n:Z

    .line 122
    iget-boolean v0, p1, Lcom/google/gson/e;->j:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->p:Z

    .line 123
    iget-boolean v0, p1, Lcom/google/gson/e;->k:Z

    iput-boolean v0, p0, Lcom/google/gson/f;->l:Z

    .line 124
    iget-object v0, p1, Lcom/google/gson/e;->o:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/f;->b:Lcom/google/gson/LongSerializationPolicy;

    .line 125
    iget-object v0, p1, Lcom/google/gson/e;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/f;->h:Ljava/lang/String;

    .line 126
    iget v0, p1, Lcom/google/gson/e;->m:I

    iput v0, p0, Lcom/google/gson/f;->i:I

    .line 127
    iget v0, p1, Lcom/google/gson/e;->n:I

    iput v0, p0, Lcom/google/gson/f;->j:I

    .line 128
    iget-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/google/gson/e;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lcom/google/gson/f;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/google/gson/e;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final addDeserializationExclusionStrategy(Lcom/google/gson/b;)Lcom/google/gson/f;
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/b;ZZ)Lcom/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final addSerializationExclusionStrategy(Lcom/google/gson/b;)Lcom/google/gson/f;
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/b;ZZ)Lcom/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final create()Lcom/google/gson/e;
    .locals 21

    move-object/from16 v0, p0

    .line 587
    new-instance v15, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/google/gson/f;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    iget-object v1, v0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 589
    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/gson/f;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 592
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 593
    invoke-interface {v15, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    iget-object v1, v0, Lcom/google/gson/f;->h:Ljava/lang/String;

    iget v2, v0, Lcom/google/gson/f;->i:I

    iget v3, v0, Lcom/google/gson/f;->j:I

    if-eqz v1, :cond_0

    .line 1611
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1612
    new-instance v2, Lcom/google/gson/a;

    const-class v3, Ljava/util/Date;

    invoke-direct {v2, v3, v1}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1613
    new-instance v3, Lcom/google/gson/a;

    const-class v4, Ljava/sql/Timestamp;

    invoke-direct {v3, v4, v1}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1614
    new-instance v4, Lcom/google/gson/a;

    const-class v5, Ljava/sql/Date;

    invoke-direct {v4, v5, v1}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    if-eq v3, v1, :cond_1

    .line 1616
    new-instance v1, Lcom/google/gson/a;

    const-class v4, Ljava/util/Date;

    invoke-direct {v1, v4, v2, v3}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    .line 1617
    new-instance v4, Lcom/google/gson/a;

    const-class v5, Ljava/sql/Timestamp;

    invoke-direct {v4, v5, v2, v3}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    .line 1618
    new-instance v5, Lcom/google/gson/a;

    const-class v6, Ljava/sql/Date;

    invoke-direct {v5, v6, v2, v3}, Lcom/google/gson/a;-><init>(Ljava/lang/Class;II)V

    move-object v3, v4

    move-object v4, v5

    .line 1623
    :goto_0
    const-class v2, Ljava/util/Date;

    invoke-static {v2, v1}, Lcom/google/gson/internal/bind/i;->newFactory(Ljava/lang/Class;Lcom/google/gson/q;)Lcom/google/gson/r;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1, v3}, Lcom/google/gson/internal/bind/i;->newFactory(Ljava/lang/Class;Lcom/google/gson/q;)Lcom/google/gson/r;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1625
    const-class v1, Ljava/sql/Date;

    invoke-static {v1, v4}, Lcom/google/gson/internal/bind/i;->newFactory(Ljava/lang/Class;Lcom/google/gson/q;)Lcom/google/gson/r;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_1
    new-instance v19, Lcom/google/gson/e;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    iget-object v3, v0, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    iget-object v4, v0, Lcom/google/gson/f;->d:Ljava/util/Map;

    iget-boolean v5, v0, Lcom/google/gson/f;->g:Z

    iget-boolean v6, v0, Lcom/google/gson/f;->k:Z

    iget-boolean v7, v0, Lcom/google/gson/f;->o:Z

    iget-boolean v8, v0, Lcom/google/gson/f;->m:Z

    iget-boolean v9, v0, Lcom/google/gson/f;->n:Z

    iget-boolean v10, v0, Lcom/google/gson/f;->p:Z

    iget-boolean v11, v0, Lcom/google/gson/f;->l:Z

    iget-object v12, v0, Lcom/google/gson/f;->b:Lcom/google/gson/LongSerializationPolicy;

    iget-object v13, v0, Lcom/google/gson/f;->h:Ljava/lang/String;

    iget v14, v0, Lcom/google/gson/f;->i:I

    move-object/from16 v16, v15

    iget v15, v0, Lcom/google/gson/f;->j:I

    move-object/from16 v18, v16

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/google/gson/f;->e:Ljava/util/List;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/gson/f;->f:Ljava/util/List;

    move-object/from16 v17, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/google/gson/e;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public final disableHtmlEscaping()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/google/gson/f;->m:Z

    return-object p0
.end method

.method public final disableInnerClassSerialization()Lcom/google/gson/f;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final enableComplexMapKeySerialization()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/google/gson/f;->k:Z

    return-object p0
.end method

.method public final varargs excludeFieldsWithModifiers([I)Lcom/google/gson/f;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/Excluder;->withModifiers([I)Lcom/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/f;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method

.method public final generateNonExecutableJson()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/google/gson/f;->o:Z

    return-object p0
.end method

.method public final registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/f;
    .locals 3

    .line 497
    instance-of v0, p2, Lcom/google/gson/o;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/google/gson/i;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/gson/g;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/gson/q;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/gson/internal/a;->checkArgument(Z)V

    .line 501
    instance-of v1, p2, Lcom/google/gson/g;

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/google/gson/f;->d:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/google/gson/g;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 504
    instance-of v0, p2, Lcom/google/gson/i;

    if-eqz v0, :cond_4

    .line 505
    :cond_3
    invoke-static {p1}, Lcom/google/gson/b/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/google/gson/b/a;Ljava/lang/Object;)Lcom/google/gson/r;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_4
    instance-of v0, p2, Lcom/google/gson/q;

    if-eqz v0, :cond_5

    .line 509
    iget-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/gson/b/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/b/a;

    move-result-object p1

    check-cast p2, Lcom/google/gson/q;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/i;->newFactory(Lcom/google/gson/b/a;Lcom/google/gson/q;)Lcom/google/gson/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public final registerTypeAdapterFactory(Lcom/google/gson/r;)Lcom/google/gson/f;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/f;"
        }
    .end annotation

    .line 543
    instance-of v0, p2, Lcom/google/gson/o;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/google/gson/i;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/gson/q;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/gson/internal/a;->checkArgument(Z)V

    .line 546
    instance-of v1, p2, Lcom/google/gson/i;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/google/gson/f;->f:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_3
    instance-of v0, p2, Lcom/google/gson/q;

    if-eqz v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/google/gson/f;->e:Ljava/util/List;

    check-cast p2, Lcom/google/gson/q;

    invoke-static {p1, p2}, Lcom/google/gson/internal/bind/i;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/q;)Lcom/google/gson/r;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public final serializeNulls()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/google/gson/f;->g:Z

    return-object p0
.end method

.method public final serializeSpecialFloatingPointValues()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/google/gson/f;->l:Z

    return-object p0
.end method

.method public final setDateFormat(I)Lcom/google/gson/f;
    .locals 0

    .line 452
    iput p1, p0, Lcom/google/gson/f;->i:I

    const/4 p1, 0x0

    .line 453
    iput-object p1, p0, Lcom/google/gson/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateFormat(II)Lcom/google/gson/f;
    .locals 0

    .line 473
    iput p1, p0, Lcom/google/gson/f;->i:I

    .line 474
    iput p2, p0, Lcom/google/gson/f;->j:I

    const/4 p1, 0x0

    .line 475
    iput-object p1, p0, Lcom/google/gson/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final setDateFormat(Ljava/lang/String;)Lcom/google/gson/f;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/google/gson/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final varargs setExclusionStrategies([Lcom/google/gson/b;)Lcom/google/gson/f;
    .locals 5

    .line 339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 340
    iget-object v3, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/google/gson/b;ZZ)Lcom/google/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/f;
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    return-object p0
.end method

.method public final setFieldNamingStrategy(Lcom/google/gson/d;)Lcom/google/gson/f;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    return-object p0
.end method

.method public final setLenient()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/google/gson/f;->p:Z

    return-object p0
.end method

.method public final setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/f;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/google/gson/f;->b:Lcom/google/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public final setPrettyPrinting()Lcom/google/gson/f;
    .locals 1

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/google/gson/f;->n:Z

    return-object p0
.end method

.method public final setVersion(D)Lcom/google/gson/f;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->withVersion(D)Lcom/google/gson/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    return-object p0
.end method
