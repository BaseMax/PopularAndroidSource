.class public final Lc/e/d/j;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/d/j$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/d/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lc/e/d/c/a<",
            "*>;",
            "Lc/e/d/j$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/e/d/c/a<",
            "*>;",
            "Lc/e/d/x<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Lc/e/d/b/p;

.field public final e:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/d/y;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/gson/internal/Excluder;

.field public final h:Lc/e/d/d;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lc/e/d/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:I

.field public final s:I

.field public final t:Lcom/google/gson/LongSerializationPolicy;

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/d/y;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/d/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lc/e/d/c/a;->a(Ljava/lang/Class;)Lc/e/d/c/a;

    move-result-object v0

    sput-object v0, Lc/e/d/j;->a:Lc/e/d/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/gson/internal/Excluder;->a:Lcom/google/gson/internal/Excluder;

    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v17}, Lc/e/d/j;-><init>(Lcom/google/gson/internal/Excluder;Lc/e/d/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/internal/Excluder;Lc/e/d/d;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/Excluder;",
            "Lc/e/d/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lc/e/d/l<",
            "*>;>;ZZZZZZZ",
            "Lcom/google/gson/LongSerializationPolicy;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lc/e/d/y;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/d/y;",
            ">;",
            "Ljava/util/List<",
            "Lc/e/d/y;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, v0, Lc/e/d/j;->b:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lc/e/d/j;->c:Ljava/util/Map;

    .line 9
    iput-object v1, v0, Lc/e/d/j;->g:Lcom/google/gson/internal/Excluder;

    .line 10
    iput-object v2, v0, Lc/e/d/j;->h:Lc/e/d/d;

    .line 11
    iput-object v3, v0, Lc/e/d/j;->i:Ljava/util/Map;

    .line 12
    new-instance v6, Lc/e/d/b/p;

    invoke-direct {v6, p3}, Lc/e/d/b/p;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Lc/e/d/j;->d:Lc/e/d/b/p;

    move v3, p4

    .line 13
    iput-boolean v3, v0, Lc/e/d/j;->j:Z

    .line 14
    iput-boolean v4, v0, Lc/e/d/j;->k:Z

    move/from16 v3, p6

    .line 15
    iput-boolean v3, v0, Lc/e/d/j;->l:Z

    move/from16 v3, p7

    .line 16
    iput-boolean v3, v0, Lc/e/d/j;->m:Z

    move/from16 v3, p8

    .line 17
    iput-boolean v3, v0, Lc/e/d/j;->n:Z

    move/from16 v3, p9

    .line 18
    iput-boolean v3, v0, Lc/e/d/j;->o:Z

    .line 19
    iput-boolean v5, v0, Lc/e/d/j;->p:Z

    move-object/from16 v3, p11

    .line 20
    iput-object v3, v0, Lc/e/d/j;->t:Lcom/google/gson/LongSerializationPolicy;

    move-object/from16 v6, p12

    .line 21
    iput-object v6, v0, Lc/e/d/j;->q:Ljava/lang/String;

    move/from16 v6, p13

    .line 22
    iput v6, v0, Lc/e/d/j;->r:I

    move/from16 v6, p14

    .line 23
    iput v6, v0, Lc/e/d/j;->s:I

    move-object/from16 v6, p15

    .line 24
    iput-object v6, v0, Lc/e/d/j;->u:Ljava/util/List;

    move-object/from16 v6, p16

    .line 25
    iput-object v6, v0, Lc/e/d/j;->v:Ljava/util/List;

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sget-object v7, Lc/e/d/b/a/T;->Y:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v7, Lc/e/d/b/a/h;->a:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p17

    .line 30
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    sget-object v7, Lc/e/d/b/a/T;->D:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v7, Lc/e/d/b/a/T;->m:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v7, Lc/e/d/b/a/T;->g:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v7, Lc/e/d/b/a/T;->i:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v7, Lc/e/d/b/a/T;->k:Lc/e/d/y;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static/range {p11 .. p11}, Lc/e/d/j;->a(Lcom/google/gson/LongSerializationPolicy;)Lc/e/d/x;

    move-result-object v3

    .line 37
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Long;

    invoke-static {v7, v8, v3}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Double;

    .line 39
    invoke-virtual {p0, v5}, Lc/e/d/j;->a(Z)Lc/e/d/x;

    move-result-object v9

    .line 40
    invoke-static {v7, v8, v9}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v8, Ljava/lang/Float;

    .line 42
    invoke-virtual {p0, v5}, Lc/e/d/j;->b(Z)Lc/e/d/x;

    move-result-object v5

    .line 43
    invoke-static {v7, v8, v5}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v5, Lc/e/d/b/a/T;->x:Lc/e/d/y;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v5, Lc/e/d/b/a/T;->o:Lc/e/d/y;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Lc/e/d/b/a/T;->q:Lc/e/d/y;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Lc/e/d/j;->a(Lc/e/d/x;)Lc/e/d/x;

    move-result-object v7

    invoke-static {v5, v7}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Lc/e/d/j;->b(Lc/e/d/x;)Lc/e/d/x;

    move-result-object v3

    invoke-static {v5, v3}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v3, Lc/e/d/b/a/T;->s:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v3, Lc/e/d/b/a/T;->z:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v3, Lc/e/d/b/a/T;->F:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v3, Lc/e/d/b/a/T;->H:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Lc/e/d/b/a/T;->B:Lc/e/d/x;

    invoke-static {v3, v5}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Lc/e/d/b/a/T;->C:Lc/e/d/x;

    invoke-static {v3, v5}, Lc/e/d/b/a/T;->a(Ljava/lang/Class;Lc/e/d/x;)Lc/e/d/y;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v3, Lc/e/d/b/a/T;->J:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Lc/e/d/b/a/T;->L:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Lc/e/d/b/a/T;->P:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Lc/e/d/b/a/T;->R:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Lc/e/d/b/a/T;->W:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Lc/e/d/b/a/T;->N:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Lc/e/d/b/a/T;->d:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Lc/e/d/b/a/b;->a:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Lc/e/d/b/a/T;->U:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lc/e/d/b/a/k;->a:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Lc/e/d/b/a/j;->a:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Lc/e/d/b/a/T;->S:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v3, Lc/e/d/b/a/a;->a:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v3, Lc/e/d/b/a/T;->b:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v3, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v5, v0, Lc/e/d/j;->d:Lc/e/d/b/p;

    invoke-direct {v3, v5}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lc/e/d/b/p;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v3, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v5, v0, Lc/e/d/j;->d:Lc/e/d/b/p;

    invoke-direct {v3, v5, p5}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lc/e/d/b/p;Z)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v4, v0, Lc/e/d/j;->d:Lc/e/d/b/p;

    invoke-direct {v3, v4}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lc/e/d/b/p;)V

    iput-object v3, v0, Lc/e/d/j;->e:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 72
    iget-object v3, v0, Lc/e/d/j;->e:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v3, Lc/e/d/b/a/T;->Z:Lc/e/d/y;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v4, v0, Lc/e/d/j;->d:Lc/e/d/b/p;

    iget-object v5, v0, Lc/e/d/j;->e:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v3, v4, p2, p1, v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lc/e/d/b/p;Lc/e/d/d;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lc/e/d/j;->f:Ljava/util/List;

    return-void
.end method

.method public static a(Lc/e/d/x;)Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/x<",
            "Ljava/lang/Number;",
            ">;)",
            "Lc/e/d/x<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lc/e/d/h;

    invoke-direct {v0, p0}, Lc/e/d/h;-><init>(Lc/e/d/x;)V

    .line 9
    invoke-virtual {v0}, Lc/e/d/x;->a()Lc/e/d/x;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/gson/LongSerializationPolicy;)Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Lc/e/d/x<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    if-ne p0, v0, :cond_0

    .line 6
    sget-object p0, Lc/e/d/b/a/T;->t:Lc/e/d/x;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lc/e/d/g;

    invoke-direct {p0}, Lc/e/d/g;-><init>()V

    return-object p0
.end method

.method public static a(D)V
    .locals 2

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Lc/e/d/d/b;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lc/e/d/d/b;->K()Lcom/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object p1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p0, Lcom/google/gson/JsonIOException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Lcom/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 95
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lc/e/d/x;)Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/x<",
            "Ljava/lang/Number;",
            ">;)",
            "Lc/e/d/x<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lc/e/d/i;

    invoke-direct {v0, p0}, Lc/e/d/i;-><init>(Lc/e/d/x;)V

    .line 4
    invoke-virtual {v0}, Lc/e/d/x;->a()Lc/e/d/x;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/Reader;)Lc/e/d/d/b;
    .locals 1

    .line 68
    new-instance v0, Lc/e/d/d/b;

    invoke-direct {v0, p1}, Lc/e/d/d/b;-><init>(Ljava/io/Reader;)V

    .line 69
    iget-boolean p1, p0, Lc/e/d/j;->o:Z

    invoke-virtual {v0, p1}, Lc/e/d/d/b;->b(Z)V

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lc/e/d/d/c;
    .locals 1

    .line 62
    iget-boolean v0, p0, Lc/e/d/j;->l:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 63
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance v0, Lc/e/d/d/c;

    invoke-direct {v0, p1}, Lc/e/d/d/c;-><init>(Ljava/io/Writer;)V

    .line 65
    iget-boolean p1, p0, Lc/e/d/j;->n:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 66
    invoke-virtual {v0, p1}, Lc/e/d/d/c;->f(Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-boolean p1, p0, Lc/e/d/j;->j:Z

    invoke-virtual {v0, p1}, Lc/e/d/d/c;->c(Z)V

    return-object v0
.end method

.method public a(Lc/e/d/c/a;)Lc/e/d/x;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/c/a<",
            "TT;>;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lc/e/d/j;->c:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lc/e/d/j;->a:Lc/e/d/c/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/d/x;

    if-eqz v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    iget-object v0, p0, Lc/e/d/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v1, p0, Lc/e/d/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 14
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/d/j$a;

    if-eqz v2, :cond_3

    return-object v2

    .line 15
    :cond_3
    :try_start_0
    new-instance v2, Lc/e/d/j$a;

    invoke-direct {v2}, Lc/e/d/j$a;-><init>()V

    .line 16
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Lc/e/d/j;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/d/y;

    .line 18
    invoke-interface {v4, p0, p1}, Lc/e/d/y;->a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v2, v4}, Lc/e/d/j$a;->a(Lc/e/d/x;)V

    .line 20
    iget-object v2, p0, Lc/e/d/j;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 22
    iget-object p1, p0, Lc/e/d/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 23
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.5) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 25
    iget-object p1, p0, Lc/e/d/j;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public a(Lc/e/d/y;Lc/e/d/c/a;)Lc/e/d/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/y;",
            "Lc/e/d/c/a<",
            "TT;>;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lc/e/d/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object p1, p0, Lc/e/d/j;->e:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    :cond_0
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lc/e/d/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/d/y;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {v2, p0, p2}, Lc/e/d/y;->a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lc/e/d/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lc/e/d/c/a;->a(Ljava/lang/Class;)Lc/e/d/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/d/j;->a(Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lc/e/d/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/e/d/x<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lc/e/d/b/a/T;->v:Lc/e/d/x;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lc/e/d/e;

    invoke-direct {p1, p0}, Lc/e/d/e;-><init>(Lc/e/d/j;)V

    return-object p1
.end method

.method public a(Lc/e/d/d/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/d/b;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lc/e/d/d/b;->A()Z

    move-result v0

    const/4 v1, 0x1

    .line 97
    invoke-virtual {p1, v1}, Lc/e/d/d/b;->b(Z)V

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lc/e/d/d/b;->K()Lcom/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    .line 99
    invoke-static {p2}, Lc/e/d/c/a;->a(Ljava/lang/reflect/Type;)Lc/e/d/c/a;

    move-result-object p2

    .line 100
    invoke-virtual {p0, p2}, Lc/e/d/j;->a(Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p2

    .line 101
    invoke-virtual {p2, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p1, v0}, Lc/e/d/d/b;->b(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 103
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 104
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 105
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 106
    invoke-virtual {p1, v0}, Lc/e/d/d/b;->b(Z)V

    return-object p2

    .line 107
    :cond_0
    :try_start_2
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :goto_0
    invoke-virtual {p1, v0}, Lc/e/d/d/b;->b(Z)V

    throw p2
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lc/e/d/j;->a(Ljava/io/Reader;)Lc/e/d/d/b;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1, p2}, Lc/e/d/j;->a(Lc/e/d/d/b;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 91
    invoke-static {p2, p1}, Lc/e/d/j;->a(Ljava/lang/Object;Lc/e/d/d/b;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lc/e/d/j;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 86
    invoke-static {p2}, Lc/e/d/b/y;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0, p2}, Lc/e/d/j;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/p;)Ljava/lang/String;
    .locals 1

    .line 56
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 57
    invoke-virtual {p0, p1, v0}, Lc/e/d/j;->a(Lc/e/d/p;Ljava/lang/Appendable;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 32
    sget-object p1, Lc/e/d/q;->a:Lc/e/d/q;

    invoke-virtual {p0, p1}, Lc/e/d/j;->a(Lc/e/d/p;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/e/d/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 34
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 35
    invoke-virtual {p0, p1, p2, v0}, Lc/e/d/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/p;Lc/e/d/d/c;)V
    .locals 6

    .line 70
    invoke-virtual {p2}, Lc/e/d/d/c;->A()Z

    move-result v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p2, v1}, Lc/e/d/d/c;->b(Z)V

    .line 72
    invoke-virtual {p2}, Lc/e/d/d/c;->z()Z

    move-result v1

    .line 73
    iget-boolean v2, p0, Lc/e/d/j;->m:Z

    invoke-virtual {p2, v2}, Lc/e/d/d/c;->a(Z)V

    .line 74
    invoke-virtual {p2}, Lc/e/d/d/c;->y()Z

    move-result v2

    .line 75
    iget-boolean v3, p0, Lc/e/d/j;->j:Z

    invoke-virtual {p2, v3}, Lc/e/d/d/c;->c(Z)V

    .line 76
    :try_start_0
    invoke-static {p1, p2}, Lc/e/d/b/z;->a(Lc/e/d/p;Lc/e/d/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p2, v0}, Lc/e/d/d/c;->b(Z)V

    .line 78
    invoke-virtual {p2, v1}, Lc/e/d/d/c;->a(Z)V

    .line 79
    invoke-virtual {p2, v2}, Lc/e/d/d/c;->c(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 81
    new-instance v3, Lcom/google/gson/JsonIOException;

    invoke-direct {v3, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    invoke-virtual {p2, v0}, Lc/e/d/d/c;->b(Z)V

    .line 83
    invoke-virtual {p2, v1}, Lc/e/d/d/c;->a(Z)V

    .line 84
    invoke-virtual {p2, v2}, Lc/e/d/d/c;->c(Z)V

    throw p1
.end method

.method public a(Lc/e/d/p;Ljava/lang/Appendable;)V
    .locals 0

    .line 59
    :try_start_0
    invoke-static {p2}, Lc/e/d/b/z;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/e/d/j;->a(Ljava/io/Writer;)Lc/e/d/d/c;

    move-result-object p2

    .line 60
    invoke-virtual {p0, p1, p2}, Lc/e/d/j;->a(Lc/e/d/p;Lc/e/d/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lcom/google/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc/e/d/d/c;)V
    .locals 5

    .line 40
    invoke-static {p2}, Lc/e/d/c/a;->a(Ljava/lang/reflect/Type;)Lc/e/d/c/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lc/e/d/j;->a(Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p2

    .line 41
    invoke-virtual {p3}, Lc/e/d/d/c;->A()Z

    move-result v0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p3, v1}, Lc/e/d/d/c;->b(Z)V

    .line 43
    invoke-virtual {p3}, Lc/e/d/d/c;->z()Z

    move-result v1

    .line 44
    iget-boolean v2, p0, Lc/e/d/j;->m:Z

    invoke-virtual {p3, v2}, Lc/e/d/d/c;->a(Z)V

    .line 45
    invoke-virtual {p3}, Lc/e/d/d/c;->y()Z

    move-result v2

    .line 46
    iget-boolean v3, p0, Lc/e/d/j;->j:Z

    invoke-virtual {p3, v3}, Lc/e/d/d/c;->c(Z)V

    .line 47
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p3, v0}, Lc/e/d/d/c;->b(Z)V

    .line 49
    invoke-virtual {p3, v1}, Lc/e/d/d/c;->a(Z)V

    .line 50
    invoke-virtual {p3, v2}, Lc/e/d/d/c;->c(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 52
    new-instance p2, Lcom/google/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-virtual {p3, v0}, Lc/e/d/d/c;->b(Z)V

    .line 54
    invoke-virtual {p3, v1}, Lc/e/d/d/c;->a(Z)V

    .line 55
    invoke-virtual {p3, v2}, Lc/e/d/d/c;->c(Z)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    .line 37
    :try_start_0
    invoke-static {p3}, Lc/e/d/b/z;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lc/e/d/j;->a(Ljava/io/Writer;)Lc/e/d/d/c;

    move-result-object p3

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lc/e/d/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc/e/d/d/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Lcom/google/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Ljava/lang/Object;)Lc/e/d/p;
    .locals 1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lc/e/d/q;->a:Lc/e/d/q;

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/e/d/j;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lc/e/d/p;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lc/e/d/p;
    .locals 1

    .line 7
    new-instance v0, Lc/e/d/b/a/f;

    invoke-direct {v0}, Lc/e/d/b/a/f;-><init>()V

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lc/e/d/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc/e/d/d/c;)V

    .line 9
    invoke-virtual {v0}, Lc/e/d/b/a/f;->F()Lc/e/d/p;

    move-result-object p1

    return-object p1
.end method

.method public final b(Z)Lc/e/d/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/e/d/x<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lc/e/d/b/a/T;->u:Lc/e/d/x;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lc/e/d/f;

    invoke-direct {p1, p0}, Lc/e/d/f;-><init>(Lc/e/d/j;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/e/d/j;->j:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/e/d/j;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/e/d/j;->d:Lc/e/d/b/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
