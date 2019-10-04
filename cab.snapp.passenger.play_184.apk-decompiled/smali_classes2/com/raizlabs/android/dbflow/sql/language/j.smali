.class public final Lcom/raizlabs/android/dbflow/sql/language/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs table(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;[",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/j;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/j;-><init>()V

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/j;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/l;->where([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/ad;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/ad;->executeUpdateDelete()J

    return-void
.end method

.method public static varargs tables([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 31
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    new-array v4, v1, [Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 32
    invoke-static {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/j;->table(Ljava/lang/Class;[Lcom/raizlabs/android/dbflow/sql/language/w;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTModel;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/l;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/l;-><init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    const-string v1, "DELETE"

    .line 51
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
