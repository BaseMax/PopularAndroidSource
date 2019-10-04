.class public final Lcom/raizlabs/android/dbflow/c/c;
.super Lcom/raizlabs/android/dbflow/d/d;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/c/d;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/d/d;",
        "Lcom/raizlabs/android/dbflow/c/d<",
        "TTModel;>;",
        "Ljava/util/List<",
        "TTModel;>;"
    }
.end annotation


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final b:Lcom/raizlabs/android/dbflow/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/c/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field private final d:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

.field private final l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/c/c;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/raizlabs/android/dbflow/c/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/d/d;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    .line 57
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    .line 59
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->g:Z

    .line 600
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$1;-><init>(Lcom/raizlabs/android/dbflow/c/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->h:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    .line 608
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$2;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$2;-><init>(Lcom/raizlabs/android/dbflow/c/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->i:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    .line 616
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$3;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$3;-><init>(Lcom/raizlabs/android/dbflow/c/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    .line 624
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$4;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$4;-><init>(Lcom/raizlabs/android/dbflow/c/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 634
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$5;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$5;-><init>(Lcom/raizlabs/android/dbflow/c/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 649
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$6;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/c$6;-><init>(Lcom/raizlabs/android/dbflow/c/c;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->m:Ljava/lang/Runnable;

    .line 1659
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/c/c$a;->b:Z

    .line 63
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    .line 2659
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/c/c$a;->c:Z

    .line 64
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    .line 3659
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/c$a;->h:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 65
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 4659
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/c/c$a;->i:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 66
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->d:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 67
    new-instance v0, Lcom/raizlabs/android/dbflow/c/b$a;

    .line 5659
    iget-object v1, p1, Lcom/raizlabs/android/dbflow/c/c$a;->a:Ljava/lang/Class;

    .line 67
    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;-><init>(Ljava/lang/Class;)V

    .line 6659
    iget-object v1, p1, Lcom/raizlabs/android/dbflow/c/c$a;->d:Landroid/database/Cursor;

    .line 68
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    .line 7659
    iget-boolean v1, p1, Lcom/raizlabs/android/dbflow/c/c$a;->e:Z

    .line 69
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->cacheModels(Z)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    .line 8659
    iget-object v1, p1, Lcom/raizlabs/android/dbflow/c/c$a;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 70
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/b$a;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object v0

    .line 9659
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/c/c$a;->g:Lcom/raizlabs/android/dbflow/structure/a/c;

    .line 71
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/c/b$a;->modelCache(Lcom/raizlabs/android/dbflow/structure/a/c;)Lcom/raizlabs/android/dbflow/c/b$a;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b$a;->build()Lcom/raizlabs/android/dbflow/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/c/c$a;B)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/c/c;-><init>(Lcom/raizlabs/android/dbflow/c/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/raizlabs/android/dbflow/c/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/c/c;->d:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method static synthetic b(Lcom/raizlabs/android/dbflow/c/c;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/c/c;->isInTransaction:Z

    return p0
.end method

.method static synthetic c(Lcom/raizlabs/android/dbflow/c/c;)Z
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/raizlabs/android/dbflow/c/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/c/c;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method

.method static synthetic e(Lcom/raizlabs/android/dbflow/c/c;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->g:Z

    return v0
.end method


# virtual methods
.method final a()Lcom/raizlabs/android/dbflow/structure/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    .line 10098
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/c/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/f;

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTModel;)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/c/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->h:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 227
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object p1

    .line 226
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 228
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 229
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 231
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TTModel;>;)Z"
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/c/c;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTModel;>;)Z"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->h:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 269
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->addAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object p1

    .line 268
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 270
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 271
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 273
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final addOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/c/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/b$b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/c/b;->addOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/c/b$b;)V

    return-void
.end method

.method public final changeInTransaction()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    return v0
.end method

.method public final clear()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;

    .line 288
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/x;->delete()Lcom/raizlabs/android/dbflow/sql/language/j;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/j;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;-><init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/f;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 289
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 290
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object v0

    .line 293
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    return-void

    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->close()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    .line 11093
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/c/b;->a:Lcom/raizlabs/android/dbflow/structure/b;

    .line 312
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b;->exists(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 326
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 328
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 329
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/c/c;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final cursor()Landroid/database/Cursor;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->cursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final cursorList()Lcom/raizlabs/android/dbflow/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    return-object v0
.end method

.method public final endTransactionAndNotify()V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    .line 199
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/c;->refresh()V

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/raizlabs/android/dbflow/d/d;->endTransactionAndNotify()V

    return-void
.end method

.method public final error()Lcom/raizlabs/android/dbflow/structure/b/a/g$b;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->d:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTModel;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/c/b;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCopy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCount()J
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItem(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/c/b;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 371
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "We cannot determine which index in the table this item exists at efficiently"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->isEmpty()Z

    move-result v0

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

    .line 387
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

    .line 393
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;IJ)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/c;->iterator()Lcom/raizlabs/android/dbflow/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 398
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "We cannot determine which index in the table this item exists at efficiently"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 409
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/raizlabs/android/dbflow/c/a;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;I)V

    return-object v0
.end method

.method public final newBuilder()Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c$a;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/c/c$a;-><init>(Lcom/raizlabs/android/dbflow/c/b;B)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 168
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/c$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/c/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->d:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 169
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/c$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/c/c$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    .line 170
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/c$a;->changeInTransaction(Z)Lcom/raizlabs/android/dbflow/c/c$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    .line 171
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/c/c$a;->transact(Z)Lcom/raizlabs/android/dbflow/c/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final onChange(Z)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/d/d;->onChange(Z)V

    .line 102
    iget-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c;->isInTransaction:Z

    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/c;->refreshAsync()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/d/d;->onChange(ZLandroid/net/Uri;)V

    .line 113
    iget-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c;->isInTransaction:Z

    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/c/c;->refreshAsync()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c;->f:Z

    return-void
.end method

.method public final refresh()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->refresh()V

    return-void
.end method

.method public final refreshAsync()V
    .locals 2

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->g:Z

    if-eqz v0, :cond_0

    .line 188
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->g:Z

    .line 191
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    sget-object v0, Lcom/raizlabs/android/dbflow/c/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 191
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final registerForContentChanges(Landroid/content/Context;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/raizlabs/android/dbflow/d/d;->registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public final registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 94
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This method is not to be used in the FlowQueryList. We should only ever receive notifications for one class here. Call registerForContentChanges(Context) instead"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTModel;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/c/b;->getItem(J)Ljava/lang/Object;

    move-result-object p1

    .line 435
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 437
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 438
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 439
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object v0

    .line 441
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 466
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object p1

    .line 465
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 467
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 468
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 470
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 496
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->addAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object p1

    .line 495
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 497
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 498
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 500
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final removeOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/c/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/b$b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/c/b;->removeOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/c/b$b;)V

    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getAll()Ljava/util/List;

    move-result-object v0

    .line 519
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 520
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object p1

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->j:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v0, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 522
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 521
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 523
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 524
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object p1

    .line 526
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTModel;)TTModel;"
        }
    .end annotation

    .line 543
    invoke-virtual {p0, p2}, Lcom/raizlabs/android/dbflow/c/c;->set(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)TTModel;"
        }
    .end annotation

    .line 554
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/c;->i:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    invoke-direct {v1, v2}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    .line 556
    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v1

    .line 557
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v1

    .line 555
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/config/c;->beginTransactionAsync(Lcom/raizlabs/android/dbflow/structure/b/a/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->k:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    .line 558
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/c/c;->l:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    .line 559
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/g;

    move-result-object v0

    .line 561
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    if-eqz v1, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->execute()V

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/g;->executeSync()V

    :goto_0
    return-object p1
.end method

.method public final size()I
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getCount()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getAll()Ljava/util/List;

    move-result-object v0

    .line 578
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final success()Lcom/raizlabs/android/dbflow/structure/b/a/g$c;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->c:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getAll()Ljava/util/List;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c;->b:Lcom/raizlabs/android/dbflow/c/b;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/c/b;->getAll()Ljava/util/List;

    move-result-object v0

    .line 592
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final transact()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c;->e:Z

    return v0
.end method
