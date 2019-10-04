.class public final Lcom/raizlabs/android/dbflow/sql/language/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Lcom/raizlabs/android/dbflow/sql/language/w;


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/language/ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/k;->a:Lcom/raizlabs/android/dbflow/sql/language/ad;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/ad;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXISTS"

    invoke-virtual {p1, v1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendQualifier(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/c;

    return-void
.end method

.method public final columnName()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method not valid for ExistenceOperator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 63
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 64
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/k;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 65
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasSeparator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final operation()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/w;
    .locals 1

    .line 37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Method not valid for ExistenceOperator"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final separator()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method not valid for ExistenceOperator"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final value()Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/k;->a:Lcom/raizlabs/android/dbflow/sql/language/ad;

    return-object v0
.end method

.method public final where(Lcom/raizlabs/android/dbflow/sql/language/ad;)Lcom/raizlabs/android/dbflow/sql/language/k;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/k;->a:Lcom/raizlabs/android/dbflow/sql/language/ad;

    return-object p0
.end method
