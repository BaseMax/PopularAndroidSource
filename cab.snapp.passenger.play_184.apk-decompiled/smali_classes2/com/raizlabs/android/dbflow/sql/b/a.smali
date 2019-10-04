.class public final Lcom/raizlabs/android/dbflow/sql/b/a;
.super Lcom/raizlabs/android/dbflow/sql/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/a<",
        "Lcom/raizlabs/android/dbflow/sql/b/a<",
        "TTModel;>;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/raizlabs/android/dbflow/sql/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private e:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private f:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private g:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$d<",
            "TTModel;>;"
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

    .line 27
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/b/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/a;-><init>(Ljava/lang/Class;)V

    .line 28
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->d:Lcom/raizlabs/android/dbflow/sql/b/d;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->d:Lcom/raizlabs/android/dbflow/sql/b/d;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;-><init>(Lcom/raizlabs/android/dbflow/sql/b/d;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->e:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    .line 60
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->queryResult(Lcom/raizlabs/android/dbflow/structure/b/a/f$b;)Lcom/raizlabs/android/dbflow/structure/b/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->f:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    .line 61
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->queryListResult(Lcom/raizlabs/android/dbflow/structure/b/a/f$c;)Lcom/raizlabs/android/dbflow/structure/b/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->g:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    .line 62
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->querySingleResult(Lcom/raizlabs/android/dbflow/structure/b/a/f$d;)Lcom/raizlabs/android/dbflow/structure/b/a/f$a;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/f$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/f;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/b/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    return-void
.end method

.method public final getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->d:Lcom/raizlabs/android/dbflow/sql/b/d;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/b/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final queryListResultCallback(Lcom/raizlabs/android/dbflow/structure/b/a/f$c;)Lcom/raizlabs/android/dbflow/sql/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$c<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/b/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->f:Lcom/raizlabs/android/dbflow/structure/b/a/f$c;

    return-object p0
.end method

.method public final queryResultCallback(Lcom/raizlabs/android/dbflow/structure/b/a/f$b;)Lcom/raizlabs/android/dbflow/sql/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$b<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/b/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->e:Lcom/raizlabs/android/dbflow/structure/b/a/f$b;

    return-object p0
.end method

.method public final querySingleResultCallback(Lcom/raizlabs/android/dbflow/structure/b/a/f$d;)Lcom/raizlabs/android/dbflow/sql/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/f$d<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/b/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/b/a;->g:Lcom/raizlabs/android/dbflow/structure/b/a/f$d;

    return-object p0
.end method
