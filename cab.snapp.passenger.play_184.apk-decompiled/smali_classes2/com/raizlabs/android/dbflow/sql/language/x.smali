.class public final Lcom/raizlabs/android/dbflow/sql/language/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _case(Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TReturn:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/f;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/f;-><init>(Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public static _case(Lcom/raizlabs/android/dbflow/sql/language/a/c;)Lcom/raizlabs/android/dbflow/sql/language/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TReturn:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TTReturn;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/f<",
            "TTReturn;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/f;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/f;-><init>(Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public static caseWhen(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TReturn:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/g<",
            "TTReturn;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/f;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/f;-><init>()V

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/f;->when(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/g;

    move-result-object p0

    return-object p0
.end method

.method public static createTrigger(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/aa;
    .locals 0

    .line 96
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/aa;->create(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/aa;

    move-result-object p0

    return-object p0
.end method

.method public static delete()Lcom/raizlabs/android/dbflow/sql/language/j;
    .locals 1

    .line 61
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/j;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/j;-><init>()V

    return-object v0
.end method

.method public static delete(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;
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

    .line 73
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/x;->delete()Lcom/raizlabs/android/dbflow/sql/language/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/j;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/l;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/o<",
            "TTModel;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/o;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static insert(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/q<",
            "TTModel;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs select([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;
    .locals 1

    .line 21
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/y;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/y;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public static varargs selectCountOf([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/y;
    .locals 3

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/y;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/r;->count([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/r;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/y;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    return-object v0
.end method

.method public static update(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/ac<",
            "TTModel;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/ac;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/ac;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
