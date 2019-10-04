.class public Landroidx/room/RoomDatabase$a;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/room/RoomDatabase$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/Executor;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Lb/C/a/c$c;

.field public h:Z

.field public i:Landroidx/room/RoomDatabase$JournalMode;

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Landroidx/room/RoomDatabase$c;

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/room/RoomDatabase$a;->a:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Landroidx/room/RoomDatabase$a;->b:Ljava/lang/String;

    .line 5
    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->i:Landroidx/room/RoomDatabase$JournalMode;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/room/RoomDatabase$a;->k:Z

    .line 7
    new-instance p1, Landroidx/room/RoomDatabase$c;

    invoke-direct {p1}, Landroidx/room/RoomDatabase$c;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->m:Landroidx/room/RoomDatabase$c;

    return-void
.end method


# virtual methods
.method public a()Landroidx/room/RoomDatabase$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->h:Z

    return-object p0
.end method

.method public a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase$b;",
            ")",
            "Landroidx/room/RoomDatabase$a<",
            "TT;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->d:Ljava/util/ArrayList;

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs a([Lb/z/a/a;)Landroidx/room/RoomDatabase$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lb/z/a/a;",
            ")",
            "Landroidx/room/RoomDatabase$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->o:Ljava/util/Set;

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Landroidx/room/RoomDatabase$a;->o:Ljava/util/Set;

    iget v4, v2, Lb/z/a/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Landroidx/room/RoomDatabase$a;->o:Ljava/util/Set;

    iget v2, v2, Lb/z/a/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->m:Landroidx/room/RoomDatabase$c;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase$c;->a([Lb/z/a/a;)V

    return-object p0
.end method

.method public b()Landroidx/room/RoomDatabase;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->c:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lb/c/a/a/c;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->f:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/room/RoomDatabase$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 6
    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    .line 8
    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/concurrent/Executor;

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->o:Ljava/util/Set;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/room/RoomDatabase$a;->n:Ljava/util/Set;

    if-eqz v1, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 11
    iget-object v2, p0, Landroidx/room/RoomDatabase$a;->n:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->g:Lb/C/a/c$c;

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lb/C/a/a/e;

    invoke-direct {v0}, Lb/C/a/a/e;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->g:Lb/C/a/c$c;

    .line 15
    :cond_5
    new-instance v0, Lb/z/c;

    iget-object v2, p0, Landroidx/room/RoomDatabase$a;->c:Landroid/content/Context;

    iget-object v3, p0, Landroidx/room/RoomDatabase$a;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/RoomDatabase$a;->g:Lb/C/a/c$c;

    iget-object v5, p0, Landroidx/room/RoomDatabase$a;->m:Landroidx/room/RoomDatabase$c;

    iget-object v6, p0, Landroidx/room/RoomDatabase$a;->d:Ljava/util/ArrayList;

    iget-boolean v7, p0, Landroidx/room/RoomDatabase$a;->h:Z

    iget-object v1, p0, Landroidx/room/RoomDatabase$a;->i:Landroidx/room/RoomDatabase$JournalMode;

    .line 16
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$JournalMode;->a(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v8

    iget-object v9, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Landroidx/room/RoomDatabase$a;->f:Ljava/util/concurrent/Executor;

    iget-boolean v11, p0, Landroidx/room/RoomDatabase$a;->j:Z

    iget-boolean v12, p0, Landroidx/room/RoomDatabase$a;->k:Z

    iget-boolean v13, p0, Landroidx/room/RoomDatabase$a;->l:Z

    iget-object v14, p0, Landroidx/room/RoomDatabase$a;->n:Ljava/util/Set;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lb/z/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lb/C/a/c$c;Landroidx/room/RoomDatabase$c;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V

    .line 17
    iget-object v1, p0, Landroidx/room/RoomDatabase$a;->a:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v1, v2}, Lb/z/u;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase;

    .line 18
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->b(Lb/z/c;)V

    return-object v1

    .line 19
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public c()Landroidx/room/RoomDatabase$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->k:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->l:Z

    return-object p0
.end method
