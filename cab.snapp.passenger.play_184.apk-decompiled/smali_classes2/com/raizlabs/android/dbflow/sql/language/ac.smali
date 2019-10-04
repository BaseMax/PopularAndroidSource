.class public final Lcom/raizlabs/android/dbflow/sql/language/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    .line 28
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OR"

    .line 102
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->a:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->b:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 105
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 109
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final or(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/ConflictAction;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/ac;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;

    move-result-object p1

    return-object p1
.end method

.method public final orAbort()Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ABORT:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ac;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;

    move-result-object v0

    return-object v0
.end method

.method public final orFail()Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->FAIL:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ac;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;

    move-result-object v0

    return-object v0
.end method

.method public final orIgnore()Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->IGNORE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ac;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;

    move-result-object v0

    return-object v0
.end method

.method public final orReplace()Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->REPLACE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ac;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;

    move-result-object v0

    return-object v0
.end method

.method public final orRollback()Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->ROLLBACK:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/ac;->conflictAction(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)Lcom/raizlabs/android/dbflow/sql/language/ac;

    move-result-object v0

    return-object v0
.end method

.method public final varargs set([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/z<",
            "TTModel;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/z;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ac;->b:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/z;-><init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/z;->conditions([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/z;

    move-result-object p1

    return-object p1
.end method
