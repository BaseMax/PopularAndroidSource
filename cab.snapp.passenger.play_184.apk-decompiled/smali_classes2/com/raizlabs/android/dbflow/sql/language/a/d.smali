.class public final Lcom/raizlabs/android/dbflow/sql/language/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(B)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(C)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(D)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(F)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(I)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(J)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TTModel;>;"
        }
    .end annotation

    .line 126
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/b/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/b/d;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/d;->from(Ljava/lang/Class;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Class;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 139
    new-instance p0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object p0
.end method

.method public static from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    .line 113
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/t;->convertValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method

.method public static from(S)Lcom/raizlabs/android/dbflow/sql/language/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/raizlabs/android/dbflow/sql/language/a/c<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/a/c;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/s;)V

    return-object v0
.end method
