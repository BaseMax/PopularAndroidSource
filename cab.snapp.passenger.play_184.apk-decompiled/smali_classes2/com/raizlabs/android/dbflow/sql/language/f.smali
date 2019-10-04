.class public final Lcom/raizlabs/android/dbflow/sql/language/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TReturn:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/g<",
            "TTReturn;>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTReturn;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->f:Z

    .line 26
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    .line 28
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->g:Z

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->f:Z

    .line 26
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    .line 28
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->g:Z

    .line 34
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final _else(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTReturn;)",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->f:Z

    return-object p0
.end method

.method public final end()Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/f;->end(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final end(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->g:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->d:Ljava/lang/String;

    .line 93
    :cond_0
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/f;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object p1
.end method

.method public final endAsOperator()Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/f;->end()Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 5

    .line 119
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, " CASE"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 1114
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->b:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {v3, v2}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->c:Ljava/util/List;

    const-string v3, ""

    invoke-static {v3, v1}, Lcom/raizlabs/android/dbflow/sql/c;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 126
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->f:Z

    if-eqz v1, :cond_1

    const-string v1, " ELSE "

    .line 127
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->e:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 129
    :cond_1
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->g:Z

    if-eqz v1, :cond_3

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " END "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final when(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/g<",
            "TTReturn;>;"
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/g;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/g;-><init>(Lcom/raizlabs/android/dbflow/sql/language/f;Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    .line 69
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When not using the efficient CASE method, you must pass in the SQLOperator as a parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final when(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/g<",
            "TTReturn;>;"
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/g;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/g;-><init>(Lcom/raizlabs/android/dbflow/sql/language/f;Lcom/raizlabs/android/dbflow/sql/language/w;)V

    .line 47
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When using the efficient CASE method,you must pass in value only, not condition."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final when(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTReturn;)",
            "Lcom/raizlabs/android/dbflow/sql/language/g<",
            "TTReturn;>;"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/g;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/g;-><init>(Lcom/raizlabs/android/dbflow/sql/language/f;Ljava/lang/Object;)V

    .line 58
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/f;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "When not using the efficient CASE method, you must pass in the SQLOperator as a parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
