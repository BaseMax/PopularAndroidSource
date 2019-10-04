.class public final Lcom/raizlabs/android/dbflow/sql/language/ab;
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


# static fields
.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final INSERT:Ljava/lang/String; = "INSERT"

.field public static final UPDATE:Ljava/lang/String; = "UPDATE"


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/sql/language/aa;

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field c:Z

.field private d:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

.field private final e:Ljava/lang/String;

.field private f:Lcom/raizlabs/android/dbflow/sql/language/w;


# direct methods
.method varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/aa;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/aa;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->c:Z

    .line 31
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->a:Lcom/raizlabs/android/dbflow/sql/language/aa;

    .line 32
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->e:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->b:Ljava/lang/Class;

    if-eqz p4, :cond_1

    .line 34
    array-length p1, p4

    if-lez p1, :cond_1

    aget-object p1, p4, v0

    if-eqz p1, :cond_1

    const-string p1, "UPDATE"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iput-object p4, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->d:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An Trigger OF can only be used with an UPDATE method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final begin(Lcom/raizlabs/android/dbflow/sql/b;)Lcom/raizlabs/android/dbflow/sql/language/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/h<",
            "TTModel;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/h;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/h;-><init>(Lcom/raizlabs/android/dbflow/sql/language/ab;Lcom/raizlabs/android/dbflow/sql/b;)V

    return-object v0
.end method

.method public final forEachRow()Lcom/raizlabs/android/dbflow/sql/language/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->c:Z

    return-object p0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->a:Lcom/raizlabs/android/dbflow/sql/language/aa;

    .line 76
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/aa;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->e:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->d:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, "OF"

    .line 79
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->d:[Lcom/raizlabs/android/dbflow/sql/language/a/a;

    check-cast v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendArray([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_0
    const-string v1, "ON"

    .line 82
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->b:Ljava/lang/Class;

    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 84
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "FOR EACH ROW"

    .line 85
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->f:Lcom/raizlabs/android/dbflow/sql/language/w;

    if-eqz v1, :cond_2

    const-string v1, " WHEN "

    .line 89
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 90
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->f:Lcom/raizlabs/android/dbflow/sql/language/w;

    invoke-interface {v1, v0}, Lcom/raizlabs/android/dbflow/sql/language/w;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 91
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 96
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final when(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ab;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/ab;->f:Lcom/raizlabs/android/dbflow/sql/language/w;

    return-object p0
.end method
