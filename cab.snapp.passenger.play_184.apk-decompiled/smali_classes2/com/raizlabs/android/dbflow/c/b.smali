.class public final Lcom/raizlabs/android/dbflow/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/c/d;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/c/b$a;,
        Lcom/raizlabs/android/dbflow/c/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/c/d<",
        "TTModel;>;",
        "Ljava/lang/Iterable<",
        "TTModel;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x32

.field public static final MIN_CACHE_SIZE:I = 0x14


# instance fields
.field a:Lcom/raizlabs/android/dbflow/structure/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/structure/b/j;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private d:Lcom/raizlabs/android/dbflow/structure/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/c/b$b<",
            "TTModel;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/c/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/b$a<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    .line 1310
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->a:Ljava/lang/Class;

    .line 66
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->c:Ljava/lang/Class;

    .line 2310
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->c:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 67
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 3310
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->c:Lcom/raizlabs/android/dbflow/sql/b/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4310
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 69
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 71
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    .line 72
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/x;->select([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;

    move-result-object v0

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/b;->c:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/y;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 73
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/b/d;->query()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    goto :goto_0

    .line 5310
    :cond_0
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->c:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 76
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/b/d;->query()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 6310
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->d:Z

    .line 78
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    .line 79
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    if-eqz v0, :cond_2

    .line 7310
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/b$a;->e:Lcom/raizlabs/android/dbflow/structure/a/c;

    .line 80
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    .line 81
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    if-nez v0, :cond_2

    .line 83
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/structure/a/d;->newInstance(I)Lcom/raizlabs/android/dbflow/structure/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    .line 8310
    :cond_2
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/c/b$a;->a:Ljava/lang/Class;

    .line 86
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 88
    iget-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/c/b;->a(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/c/b$a;B)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/c/b;-><init>(Lcom/raizlabs/android/dbflow/c/b$a;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor has been closed for FlowCursorList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/b;->clearCache()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "Cursor was null for FlowCursorList"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/c/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/b$b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cachingEnabled()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    return v0
.end method

.method public final clearCache()V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/a/c;->clear()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 261
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    return-void
.end method

.method public final cursor()Landroid/database/Cursor;
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->a()V

    .line 271
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 272
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    return-object v0
.end method

.method public final getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->a()V

    .line 214
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 215
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->c:Ljava/lang/Class;

    .line 217
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/f;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/b/b;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 219
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/b;->iterator()Lcom/raizlabs/android/dbflow/c/a;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 221
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getCount()J
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->a()V

    .line 242
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 243
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->getCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItem(J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->a()V

    .line 192
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 195
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/raizlabs/android/dbflow/structure/a/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v3, :cond_0

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/structure/b/j;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object v0

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0, v3, v2, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 199
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/raizlabs/android/dbflow/structure/a/c;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_2

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/b/j;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/c/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/b/f;

    move-result-object p1

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {p1, p2, v2, v1}, Lcom/raizlabs/android/dbflow/sql/b/f;->convertToData(Lcom/raizlabs/android/dbflow/structure/b/j;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final isEmpty()Z
    .locals 5

    .line 231
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->a()V

    .line 232
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 233
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/b;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/raizlabs/android/dbflow/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;)V

    return-object v0
.end method

.method public final iterator(IJ)Lcom/raizlabs/android/dbflow/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/raizlabs/android/dbflow/c/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;IJ)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/b;->iterator()Lcom/raizlabs/android/dbflow/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final modelCache()Lcom/raizlabs/android/dbflow/structure/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    return-object v0
.end method

.method public final modelQueriable()Lcom/raizlabs/android/dbflow/sql/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    return-object v0
.end method

.method public final newBuilder()Lcom/raizlabs/android/dbflow/c/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/b$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/raizlabs/android/dbflow/c/b$a;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->c:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 299
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 300
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    .line 301
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->cacheModels(Z)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    .line 302
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->modelCache(Lcom/raizlabs/android/dbflow/structure/a/c;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized refresh()V
    .locals 3

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/b;->b()V

    .line 155
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/j;->close()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/b/d;->query()Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    .line 164
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b;->e:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->d:Lcom/raizlabs/android/dbflow/structure/a/c;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/a/c;->clear()V

    const/4 v0, 0x1

    .line 166
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/c/b;->a(Z)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/c/b$b;

    .line 171
    invoke-interface {v2, p0}, Lcom/raizlabs/android/dbflow/c/b$b;->onCursorRefreshed(Lcom/raizlabs/android/dbflow/c/b;)V

    goto :goto_0

    .line 173
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 159
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refresh this FlowCursorList. This list was instantiated from a Cursor. Once closed, we cannot reopen it. Construct a new instance and swap with this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final removeOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/c/b$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/b$b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/b;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final table()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/b;->c:Ljava/lang/Class;

    return-object v0
.end method
