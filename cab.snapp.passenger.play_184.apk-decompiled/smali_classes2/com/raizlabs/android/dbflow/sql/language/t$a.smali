.class public final Lcom/raizlabs/android/dbflow/sql/language/t$a;
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
    name = "a"
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
.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/t<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 774
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/t;->c:Lcom/raizlabs/android/dbflow/sql/language/s;

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/c;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "BETWEEN"

    aput-object v3, v1, v2

    const-string v2, " %1s "

    .line 775
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$a;->a:Ljava/lang/String;

    .line 776
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/t$a;->b:Ljava/lang/Object;

    .line 777
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t$a;->f:Z

    .line 778
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/t;->postArgument()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;B)V
    .locals 0

    .line 762
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/t$a;-><init>(Lcom/raizlabs/android/dbflow/sql/language/t;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final and(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/t$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/t$a<",
            "TT;>;"
        }
    .end annotation

    .line 783
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/t$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public final appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V
    .locals 2

    .line 794
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->columnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->operation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    .line 795
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->value()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    const-string v0, "AND"

    .line 796
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    .line 797
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->secondValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    .line 798
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->postArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendOptional(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    return-void
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 803
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 804
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/t$a;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 805
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final secondValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/t$a;->g:Ljava/lang/Object;

    return-object v0
.end method
