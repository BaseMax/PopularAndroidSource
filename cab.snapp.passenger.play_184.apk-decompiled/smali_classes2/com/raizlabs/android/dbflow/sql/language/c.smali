.class public abstract Lcom/raizlabs/android/dbflow/sql/language/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/w;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/Object;

.field protected c:Lcom/raizlabs/android/dbflow/sql/language/s;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 173
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->a:Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->c:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-void
.end method

.method public static convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-static {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertValueToString(Ljava/lang/Object;ZZ)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTypeConverterForClass(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/a/h;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {p2, p0}, Lcom/raizlabs/android/dbflow/a/h;->getDBValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 63
    :cond_1
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_2

    .line 64
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 65
    :cond_2
    instance-of p2, p0, Ljava/lang/Enum;

    if-eqz p2, :cond_3

    .line 66
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 68
    instance-of p1, p0, Lcom/raizlabs/android/dbflow/sql/language/b;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 69
    check-cast p0, Lcom/raizlabs/android/dbflow/sql/language/b;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/b;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "(%1s)"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 70
    :cond_4
    instance-of p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;

    if-eqz p1, :cond_5

    .line 71
    check-cast p0, Lcom/raizlabs/android/dbflow/sql/language/s;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->getQuery()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 72
    :cond_5
    instance-of p1, p0, Lcom/raizlabs/android/dbflow/sql/language/w;

    if-eqz p1, :cond_6

    .line 73
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {p1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 74
    check-cast p0, Lcom/raizlabs/android/dbflow/sql/language/w;

    invoke-interface {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/w;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 75
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/c;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 76
    :cond_6
    instance-of p1, p0, Lcom/raizlabs/android/dbflow/sql/b;

    if-eqz p1, :cond_7

    .line 77
    check-cast p0, Lcom/raizlabs/android/dbflow/sql/b;

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/b;->getQuery()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 78
    :cond_7
    instance-of p1, p0, Lcom/raizlabs/android/dbflow/b/a;

    if-nez p1, :cond_9

    instance-of p2, p0, [B

    if-eqz p2, :cond_8

    goto :goto_0

    .line 87
    :cond_8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "?"

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 89
    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_9
    :goto_0
    if-eqz p1, :cond_a

    .line 81
    check-cast p0, Lcom/raizlabs/android/dbflow/b/a;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/b/a;->getBlob()[B

    move-result-object p0

    goto :goto_1

    .line 83
    :cond_a
    check-cast p0, [B

    check-cast p0, [B

    .line 85
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "X"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/d;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_b
    :goto_2
    return-object p0
.end method

.method public static joinArguments(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 165
    :goto_1
    invoke-static {v3, v4, v1}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joinArguments(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/raizlabs/android/dbflow/sql/language/c;)Ljava/lang/String;
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 119
    :goto_1
    invoke-virtual {p2, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static joinArguments(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v6, p1, v4

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 142
    :goto_1
    invoke-static {v6, v2, v3}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->c:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-object v0
.end method

.method public columnName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->c:Lcom/raizlabs/android/dbflow/sql/language/s;

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertObjectToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    .line 266
    invoke-static {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/c;->convertValueToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasSeparator()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public operation()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public postArgument()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/w;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public separator()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/c;->b:Ljava/lang/Object;

    return-object v0
.end method
