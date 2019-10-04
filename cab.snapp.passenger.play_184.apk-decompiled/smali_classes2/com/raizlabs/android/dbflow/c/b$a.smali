.class public final Lcom/raizlabs/android/dbflow/c/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/c/b;
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

.field b:Lcom/raizlabs/android/dbflow/structure/b/j;

.field c:Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lcom/raizlabs/android/dbflow/structure/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b$a;->d:Z

    .line 323
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/b/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/c/b$a;->a:Ljava/lang/Class;

    .line 324
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/c/b$a;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/b$a;

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

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/c/b$a;->d:Z

    .line 319
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/b$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final build()Lcom/raizlabs/android/dbflow/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/c/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/raizlabs/android/dbflow/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/c/b;-><init>(Lcom/raizlabs/android/dbflow/c/b$a;B)V

    return-object v0
.end method

.method public final cacheModels(Z)Lcom/raizlabs/android/dbflow/c/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/c/b$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 343
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/c/b$a;->d:Z

    return-object p0
.end method

.method public final cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/c/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/raizlabs/android/dbflow/c/b$a<",
            "TTModel;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/b$a;->b:Lcom/raizlabs/android/dbflow/structure/b/j;

    :cond_0
    return-object p0
.end method

.method public final modelCache(Lcom/raizlabs/android/dbflow/structure/a/c;)Lcom/raizlabs/android/dbflow/c/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/a/c<",
            "TTModel;*>;)",
            "Lcom/raizlabs/android/dbflow/c/b$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/b$a;->e:Lcom/raizlabs/android/dbflow/structure/a/c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 351
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/c/b$a;->cacheModels(Z)Lcom/raizlabs/android/dbflow/c/b$a;

    :cond_0
    return-object p0
.end method

.method public final modelQueriable(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/c/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/c/b$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/b$a;->c:Lcom/raizlabs/android/dbflow/sql/b/d;

    return-object p0
.end method
