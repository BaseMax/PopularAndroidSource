.class public Lcom/raizlabs/android/dbflow/sql/language/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/a/a;
.implements Lcom/raizlabs/android/dbflow/sql/language/m;
.implements Lcom/raizlabs/android/dbflow/sql/language/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/language/a/a<",
        "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
        "TT;>;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/m;",
        "Lcom/raizlabs/android/dbflow/sql/language/n<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WILDCARD:Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected b:Lcom/raizlabs/android/dbflow/sql/language/s;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-string v1, "*"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-string v1, "?"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->WILDCARD:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 51
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/sql/language/s;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-void
.end method

.method public static allProperty(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    const-string v1, "*"

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->withTable()Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 376
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v2

    .line 378
    invoke-virtual {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public asc()Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    .line 516
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/v;->fromProperty(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/v;->ascending()Lcom/raizlabs/android/dbflow/sql/language/v;

    move-result-object v0

    return-object v0
.end method

.method public between(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 1

    .line 31537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 275
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->between(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$a;

    move-result-object p1

    return-object p1
.end method

.method public between(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 1

    .line 14537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->between(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$a;

    move-result-object p1

    return-object p1
.end method

.method public between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$a<",
            "TT;>;"
        }
    .end annotation

    .line 48537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 448
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->between(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic concatenate(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->concatenate(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public concatenate(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 369
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 370
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "||"

    .line 369
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public concatenate(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 34537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->concatenate(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 50540
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 480
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->concatenate(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public desc()Lcom/raizlabs/android/dbflow/sql/language/v;
    .locals 1

    .line 522
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/v;->fromProperty(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/v;->descending()Lcom/raizlabs/android/dbflow/sql/language/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic distinct()Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->distinct()Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object v0

    return-object v0
.end method

.method public distinct()Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 385
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    .line 40529
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    .line 40530
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v2

    .line 40531
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->distinct()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v2

    .line 40532
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    .line 385
    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public bridge synthetic div(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->div(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 349
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 350
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "/"

    .line 349
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 37537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 311
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->div(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 50543
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->div(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 19537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->eq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 2537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->eq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 41537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 406
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public getCursorKey()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefinition()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->getFullQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public glob(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 26537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->glob(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public glob(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 6537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->glob(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
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

    .line 9537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->glob(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 27537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->greaterThan(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 10537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->greaterThan(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 44537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->greaterThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 28537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 11537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->greaterThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 45537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 430
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->greaterThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Lcom/raizlabs/android/dbflow/sql/language/b;[Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1

    .line 32537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->in(Lcom/raizlabs/android/dbflow/sql/language/b;[Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Lcom/raizlabs/android/dbflow/sql/language/m;[Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1

    .line 15537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->in(Lcom/raizlabs/android/dbflow/sql/language/m;[Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 49537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 455
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->in(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 50538
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 468
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->in(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public is(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 17537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->is(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public is(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 1537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->is(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 40537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->is(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 20537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->isNot(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 3537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->isNot(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 42537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->isNot(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public isNotNull()Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 21537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->isNotNull()Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 18537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->isNull()Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    return-object v0
.end method

.method public lessThan(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 29537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 263
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->lessThan(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 12537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->lessThan(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 46537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 436
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->lessThan(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 30537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 13537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->lessThanOrEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 47537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 442
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->lessThanOrEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public like(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 23537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->like(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public like(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->like(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
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

    .line 7537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->like(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->minus(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 342
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 343
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "-"

    .line 342
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 36537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->minus(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 50542
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->minus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 22537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 221
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notEq(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 4537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notEq(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 43537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 418
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notEq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn(Lcom/raizlabs/android/dbflow/sql/language/b;[Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1

    .line 33537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 287
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->notIn(Lcom/raizlabs/android/dbflow/sql/language/b;[Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn(Lcom/raizlabs/android/dbflow/sql/language/m;[Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1

    .line 16537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->notIn(Lcom/raizlabs/android/dbflow/sql/language/m;[Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 50537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 462
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t;->notIn(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 50539
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 474
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notIn(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/t$b;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 25537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notLike(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 24537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notLike(Lcom/raizlabs/android/dbflow/sql/language/m;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;
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

    .line 8537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->notLike(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->plus(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 336
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "+"

    .line 335
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 35537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->plus(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 50541
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->plus(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rem(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->rem(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 363
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "%"

    .line 362
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 39537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 323
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->rem(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 50545
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 509
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->rem(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic times(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->times(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 355
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->b:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 356
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "*"

    .line 355
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1

    .line 38537
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 317
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->times(Lcom/raizlabs/android/dbflow/sql/language/b;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;"
        }
    .end annotation

    .line 50544
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/t;->op(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object v0

    .line 503
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->times(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTable()Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->withTable()Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTable(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/a/a;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->withTable(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    return-object p1
.end method

.method public withTable()Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->withTable(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object v0

    return-object v0
.end method

.method public withTable(Lcom/raizlabs/android/dbflow/sql/language/s;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/s;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method
