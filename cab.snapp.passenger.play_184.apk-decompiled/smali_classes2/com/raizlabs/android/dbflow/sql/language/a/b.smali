.class public final Lcom/raizlabs/android/dbflow/sql/language/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/sql/language/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;ZLjava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/x;->index(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/o;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    .line 22
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {p1, p3, p4}, Lcom/raizlabs/android/dbflow/sql/language/o;->on(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/o;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/o;->unique(Z)Lcom/raizlabs/android/dbflow/sql/language/o;

    return-void
.end method


# virtual methods
.method public final createIfNotExists()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->enable()V

    return-void
.end method

.method public final createIfNotExists(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/o;->enable(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public final drop()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->disable()V

    return-void
.end method

.method public final drop(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/o;->disable(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public final getIndex()Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TT;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    return-object v0
.end method

.method public final getIndexName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/b;->a:Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/o;->getIndexName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
