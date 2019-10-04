.class public final Lcom/raizlabs/android/dbflow/sql/language/t$b;
.super Lcom/raizlabs/android/dbflow/sql/language/c;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/language/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/c;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;TT;Z[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 827
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->a()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/c;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    .line 815
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    .line 828
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    invoke-static {p1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p2, "IN"

    goto :goto_0

    :cond_0
    const-string p2, "NOT IN"

    :goto_0
    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, " %1s "

    .line 830
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;B)V
    .locals 0

    .line 813
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 834
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->a()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/c;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    .line 815
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    .line 835
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p2, "IN"

    goto :goto_0

    :cond_0
    const-string p2, "NOT IN"

    :goto_0
    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, " %1s "

    .line 836
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/util/Collection;ZB)V
    .locals 0

    .line 813
    invoke-direct {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/sql/language/t$b;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/util/Collection;Z)V

    return-void
.end method


# virtual methods
.method public final and(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$b<",
            "TT;>;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V
    .locals 2

    .line 854
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$b;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$b;->operation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    const-string v0, "("

    .line 855
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t$b;->g:Ljava/util/List;

    const-string v1, ","

    invoke-static {v1, v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/u;->joinArguments(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/raizlabs/android/dbflow/sql/language/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    return-void
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 860
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 861
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/t$b;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 862
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
