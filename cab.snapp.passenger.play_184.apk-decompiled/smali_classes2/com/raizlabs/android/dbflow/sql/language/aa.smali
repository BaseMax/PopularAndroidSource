.class public final Lcom/raizlabs/android/dbflow/sql/language/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# static fields
.field public static final AFTER:Ljava/lang/String; = "AFTER"

.field public static final BEFORE:Ljava/lang/String; = "BEFORE"

.field public static final INSTEAD_OF:Ljava/lang/String; = "INSTEAD OF"


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->a:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/aa;
    .locals 1

    .line 47
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/aa;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/aa;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final after()Lcom/raizlabs/android/dbflow/sql/language/aa;
    .locals 1

    const-string v0, "AFTER"

    .line 74
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final before()Lcom/raizlabs/android/dbflow/sql/language/aa;
    .locals 1

    const-string v0, "BEFORE"

    .line 83
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final deleteOn(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/ab;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    const-string v2, "DELETE"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/ab;-><init>(Lcom/raizlabs/android/dbflow/sql/language/aa;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 4

    .line 138
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "CREATE "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 139
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "TEMP "

    .line 140
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_0
    const-string v1, "TRIGGER IF NOT EXISTS "

    .line 142
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->a:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendQuotedIfNeeded(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendOptional(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 146
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final insertOn(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/ab;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    const-string v2, "INSERT"

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/ab;-><init>(Lcom/raizlabs/android/dbflow/sql/language/aa;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public final insteadOf()Lcom/raizlabs/android/dbflow/sql/language/aa;
    .locals 1

    const-string v0, "INSTEAD OF"

    .line 92
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final temporary()Lcom/raizlabs/android/dbflow/sql/language/aa;
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/aa;->c:Z

    return-object p0
.end method

.method public final varargs updateOn(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/ab;

    const-string v1, "UPDATE"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/ab;-><init>(Lcom/raizlabs/android/dbflow/sql/language/aa;Ljava/lang/String;Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method
