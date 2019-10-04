.class public final Lcom/raizlabs/android/dbflow/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Landroid/database/Cursor;

.field e:Z

.field f:Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field g:Lcom/raizlabs/android/dbflow/structure/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation
.end field

.field h:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

.field i:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/b<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 666
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c$a;->e:Z

    .line 674
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b;->table()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$a;->a:Ljava/lang/Class;

    .line 675
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b;->cursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$a;->d:Landroid/database/Cursor;

    .line 676
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b;->cachingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c$a;->e:Z

    .line 677
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b;->modelQueriable()Lcom/raizlabs/android/dbflow/sql/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$a;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    .line 678
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/c/b;->modelCache()Lcom/raizlabs/android/dbflow/structure/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->g:Lcom/raizlabs/android/dbflow/structure/a/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/c/b;B)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/c/c$a;-><init>(Lcom/raizlabs/android/dbflow/c/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 686
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/b/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/c/c$a;-><init>(Ljava/lang/Class;)V

    .line 687
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/c/c$a;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 666
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/c$a;->e:Z

    .line 682
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build()Lcom/raizlabs/android/dbflow/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/c<",
            "TTModel;>;"
        }
    .end annotation

    .line 734
    new-instance v0, Lcom/raizlabs/android/dbflow/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/c/c;-><init>(Lcom/raizlabs/android/dbflow/c/c$a;B)V

    return-object v0
.end method

.method public final cacheModels(Z)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 719
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->e:Z

    return-object p0
.end method

.method public final changeInTransaction(Z)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 714
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->c:Z

    return-object p0
.end method

.method public final cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 691
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->d:Landroid/database/Cursor;

    return-object p0
.end method

.method public final error(Lcom/raizlabs/android/dbflow/structure/b/a/g$b;)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g$b;",
            ")",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->i:Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    return-object p0
.end method

.method public final modelCache(Lcom/raizlabs/android/dbflow/structure/a/c;)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;)",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 706
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->g:Lcom/raizlabs/android/dbflow/structure/a/c;

    return-object p0
.end method

.method public final modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 696
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->f:Lcom/raizlabs/android/dbflow/sql/b/d;

    return-object p0
.end method

.method public final success(Lcom/raizlabs/android/dbflow/structure/b/a/g$c;)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/g$c;",
            ")",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->h:Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    return-object p0
.end method

.method public final transact(Z)Lcom/raizlabs/android/dbflow/c/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/c/c$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 701
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/c$a;->b:Z

    return-object p0
.end method
