.class public final Lcom/raizlabs/android/dbflow/sql/language/t;
.super Lcom/raizlabs/android/dbflow/sql/language/c;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/t$b;,
        Lcom/raizlabs/android/dbflow/sql/language/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/c;",
        "Lcom/raizlabs/android/dbflow/sql/language/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private g:Lcom/raizlabs/android/dbflow/a/h;

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/c;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-void
.end method

.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s;Lcom/raizlabs/android/dbflow/a/h;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/c;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    .line 55
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->g:Lcom/raizlabs/android/dbflow/a/h;

    .line 56
    iput-boolean p3, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->h:Z

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 629
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 630
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public static convertValueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/t;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static op(Lcom/raizlabs/android/dbflow/sql/language/s;Lcom/raizlabs/android/dbflow/a/h;Z)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            "Lcom/raizlabs/android/dbflow/a/h;",
            "Z)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;Lcom/raizlabs/android/dbflow/a/h;Z)V

    return-object v0
.end method


# virtual methods
.method public final appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->operation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 72
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->f:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->value()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/t;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->postArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->postArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_1
    return-void
.end method

.method public final between(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 2

    .line 523
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/t$a;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;B)V

    return-object v0
.end method

.method public final between(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 2

    .line 368
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/t$a;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;B)V

    return-object v0
.end method

.method public final between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$a<",
            "TT;>;"
        }
    .end annotation

    .line 582
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/raizlabs/android/dbflow/sql/language/t$a;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;B)V

    return-object v0
.end method

.method public final collate(Lcom/raizlabs/android/dbflow/annotation/Collate;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/annotation/Collate;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/raizlabs/android/dbflow/annotation/Collate;->NONE:Lcom/raizlabs/android/dbflow/annotation/Collate;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/annotation/Collate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->d:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/annotation/Collate;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->collate(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    :goto_0
    return-object p0
.end method

.method public final collate(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 247
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "COLLATE "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final concatenate(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 570
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "="

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->columnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->g:Lcom/raizlabs/android/dbflow/a/h;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 550
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->h:Z

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/a/h;->getDBValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 553
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "%1s %1s "

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/raizlabs/android/dbflow/sql/language/n;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 556
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    .line 557
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "+"

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    goto :goto_2

    .line 559
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "null"

    :goto_0
    aput-object p1, v1, v3

    const-string p1, "Cannot concatenate the %1s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 555
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "||"

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 562
    :goto_2
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->b:Ljava/lang/Object;

    .line 563
    iput-boolean v4, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->f:Z

    return-object p0
.end method

.method public final convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->g:Lcom/raizlabs/android/dbflow/a/h;

    if-eqz v0, :cond_1

    .line 617
    :try_start_0
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/a/h;->getDBValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 620
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 622
    invoke-static {p1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 624
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final div(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "/"

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final div(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "/"

    .line 476
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "/"

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final eq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "="

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final eq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "="

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 535
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 536
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 537
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final glob(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "GLOB"

    .line 437
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final glob(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 337
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/m;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "GLOB"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 154
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThan(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">"

    .line 443
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThan(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">"

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">"

    .line 173
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">="

    .line 449
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">="

    .line 349
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, ">="

    .line 180
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final varargs in(Lcom/raizlabs/android/dbflow/sql/language/b;[Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 7

    .line 530
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V

    return-object v6
.end method

.method public final varargs in(Lcom/raizlabs/android/dbflow/sql/language/m;[Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 7

    .line 375
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V

    return-object v6
.end method

.method public final varargs in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 589
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V

    return-object v6
.end method

.method public final in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 602
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/util/Collection;ZB)V

    return-object v0
.end method

.method public final is(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "="

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final is(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "="

    .line 307
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "="

    .line 84
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final isNot(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "!="

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final isNot(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "!="

    .line 319
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "!="

    .line 97
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final isNotNull()Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "IS NOT NULL"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 287
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final isNull()Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "IS NULL"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 280
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final lessThan(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<"

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final lessThan(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<"

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<"

    .line 187
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<="

    .line 461
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<="

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<="

    .line 194
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 195
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final like(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "LIKE"

    .line 419
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final like(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/m;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/language/m;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "LIKE"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 120
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final minus(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "-"

    .line 498
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final minus(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "-"

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "-"

    .line 207
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final notEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "!="

    .line 413
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final notEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "!="

    .line 325
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final notIn(Lcom/raizlabs/android/dbflow/sql/language/b;[Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 7

    .line 389
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-object v4, p2

    check-cast v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V

    return-object v6
.end method

.method public final varargs notIn(Lcom/raizlabs/android/dbflow/sql/language/m;[Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 7

    .line 382
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V

    return-object v6
.end method

.method public final varargs notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 596
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V

    return-object v6
.end method

.method public final notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/t$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/util/Collection;ZB)V

    return-object v0
.end method

.method public final notLike(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "NOT LIKE"

    .line 431
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final notLike(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "NOT LIKE"

    .line 425
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "NOT LIKE"

    aput-object v2, v0, v1

    const-string v1, " %1s "

    .line 137
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final operation(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final plus(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "+"

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "+"

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "+"

    .line 201
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final postfix(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 273
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final rem(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "%"

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final rem(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "%"

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "%"

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/w;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final times(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "*"

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final times(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    const-string v0, "*"

    .line 481
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "*"

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public final value(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t;->f:Z

    return-object p0
.end method
