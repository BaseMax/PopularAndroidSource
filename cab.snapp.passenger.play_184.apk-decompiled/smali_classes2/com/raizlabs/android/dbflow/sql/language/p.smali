.class public final Lcom/raizlabs/android/dbflow/sql/language/p;
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
.field private final a:Lcom/raizlabs/android/dbflow/sql/language/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/raizlabs/android/dbflow/sql/language/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/ae<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/a/b;Lcom/raizlabs/android/dbflow/sql/language/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/b<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/ae<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 26
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/e;-><init>(Ljava/lang/Class;)V

    .line 27
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/p;->a:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    .line 28
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/p;->b:Lcom/raizlabs/android/dbflow/sql/language/ae;

    return-void
.end method


# virtual methods
.method public final getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/p;->b:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/p;->b:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    const-string v1, " INDEXED BY "

    .line 40
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/p;->a:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->getIndexName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/p;->b:Lcom/raizlabs/android/dbflow/sql/language/ae;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/ae;->getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;

    move-result-object v0

    return-object v0
.end method
