.class public final Lcom/raizlabs/android/dbflow/sql/language/l;
.super Lcom/raizlabs/android/dbflow/sql/language/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/e<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/b;

.field private b:Lcom/raizlabs/android/dbflow/sql/language/s;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/Join;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/sql/language/e;-><init>(Ljava/lang/Class;)V

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Lcom/raizlabs/android/dbflow/sql/b;

    return-void
.end method

.method private a()Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-object v0
.end method


# virtual methods
.method public final as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTModel;>;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->a()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-object p0
.end method

.method public final crossJoin(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Lcom/raizlabs/android/dbflow/sql/b/d;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final crossJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->CROSS:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final getAssociatedTables()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/Join;

    .line 245
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/Join;->getTable()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Lcom/raizlabs/android/dbflow/sql/b;

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/sql/language/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 3

    .line 205
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Lcom/raizlabs/android/dbflow/sql/b;

    .line 206
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/b;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Lcom/raizlabs/android/dbflow/sql/b;

    instance-of v1, v1, Lcom/raizlabs/android/dbflow/sql/language/ac;

    if-nez v1, :cond_0

    const-string v1, "FROM "

    .line 208
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/l;->a()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 213
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Lcom/raizlabs/android/dbflow/sql/b;

    instance-of v1, v1, Lcom/raizlabs/android/dbflow/sql/language/y;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/Join;

    .line 218
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/Join;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 224
    :cond_3
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->a:Lcom/raizlabs/android/dbflow/sql/b;

    return-object v0
.end method

.method public final indexedBy(Lcom/raizlabs/android/dbflow/sql/language/a/b;)Lcom/raizlabs/android/dbflow/sql/language/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/p<",
            "TTModel;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/p;

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/p;-><init>(Lcom/raizlabs/android/dbflow/sql/language/a/b;Lcom/raizlabs/android/dbflow/sql/language/ae;)V

    return-object v0
.end method

.method public final innerJoin(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Lcom/raizlabs/android/dbflow/sql/b/d;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final innerJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->INNER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final join(Lcom/raizlabs/android/dbflow/sql/b/d;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTJoin;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join;

    invoke-direct {v0, p0, p2, p1}, Lcom/raizlabs/android/dbflow/sql/language/Join;-><init>(Lcom/raizlabs/android/dbflow/sql/language/l;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;Lcom/raizlabs/android/dbflow/sql/b/d;)V

    .line 94
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Join;

    invoke-direct {v0, p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/Join;-><init>(Lcom/raizlabs/android/dbflow/sql/language/l;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)V

    .line 80
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/l;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final leftOuterJoin(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Lcom/raizlabs/android/dbflow/sql/b/d;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final leftOuterJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->LEFT_OUTER:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final naturalJoin(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Lcom/raizlabs/android/dbflow/sql/b/d;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method

.method public final naturalJoin(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TJoin:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTJoin;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTJoin;TTModel;>;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/l;->join(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)Lcom/raizlabs/android/dbflow/sql/language/Join;

    move-result-object p1

    return-object p1
.end method
