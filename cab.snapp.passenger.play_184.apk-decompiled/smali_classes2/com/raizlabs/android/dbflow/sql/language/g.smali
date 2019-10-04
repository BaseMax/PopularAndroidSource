.class public final Lcom/raizlabs/android/dbflow/sql/language/g;
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
.field private final a:Lcom/raizlabs/android/dbflow/sql/language/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTReturn;"
        }
    .end annotation
.end field

.field private c:Lcom/raizlabs/android/dbflow/sql/language/w;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTReturn;"
        }
    .end annotation
.end field

.field private e:Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field private f:Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/f;Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    .line 37
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->e:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/f;Lcom/raizlabs/android/dbflow/sql/language/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    .line 27
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->c:Lcom/raizlabs/android/dbflow/sql/language/w;

    return-void
.end method

.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/f;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;TTReturn;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    .line 32
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getQuery()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, " WHEN "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    .line 1114
    iget-boolean v1, v1, Lcom/raizlabs/android/dbflow/sql/language/f;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->e:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->b:Ljava/lang/Object;

    :goto_0
    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_1

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->c:Lcom/raizlabs/android/dbflow/sql/language/w;

    invoke-interface {v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/w;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    :goto_1
    const-string v1, " THEN "

    .line 65
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-boolean v3, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->g:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->f:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->d:Ljava/lang/Object;

    .line 66
    :goto_2
    invoke-static {v3, v2}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 68
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final then(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->f:Lcom/raizlabs/android/dbflow/sql/language/a/a;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->g:Z

    .line 54
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    return-object p1
.end method

.method public final then(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTReturn;)",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->d:Ljava/lang/Object;

    .line 46
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/g;->a:Lcom/raizlabs/android/dbflow/sql/language/f;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/g;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
