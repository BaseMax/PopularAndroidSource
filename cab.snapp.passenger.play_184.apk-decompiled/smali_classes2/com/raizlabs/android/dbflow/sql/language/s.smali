.class public final Lcom/raizlabs/android/dbflow/sql/language/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/s$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s$a;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->d:Z

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->a:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    goto :goto_0

    .line 3222
    :cond_0
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->a:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    .line 4222
    :goto_0
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->h:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/lang/String;

    .line 5222
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->e:Z

    if-eqz v0, :cond_1

    .line 6222
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->b:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    goto :goto_1

    .line 7222
    :cond_1
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->b:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    .line 8222
    :goto_1
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->c:Ljava/lang/String;

    .line 85
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9222
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->c:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/lang/String;

    .line 10222
    :goto_2
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->d:Z

    .line 90
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->e:Z

    .line 11222
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->e:Z

    .line 91
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:Z

    .line 12222
    iget-boolean v0, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->f:Z

    .line 92
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->g:Z

    .line 13222
    iget-boolean p1, p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;->g:Z

    .line 93
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/s$a;B)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s$a;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 1

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs joinNames(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    return-object p0
.end method

.method public static ofTable(Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s;
    .locals 0

    .line 61
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/s;->builder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p0

    return-object p0
.end method

.method public static rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 1

    .line 44
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 45
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldStripIdentifier(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldAddIdentifierToName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final aliasName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final aliasNameRaw()Ljava/lang/String;
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final fullName()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->tableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getFullQuery()Ljava/lang/String;
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AS "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->aliasName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getNameAsKey()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->aliasNameRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->nameRaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->aliasName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->fullName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final keyword()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->isNotNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final nameRaw()Ljava/lang/String;
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/c;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;
    .locals 2

    .line 211
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->d:Ljava/lang/String;

    .line 212
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->keyword(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->b:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:Z

    .line 214
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldStripAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->e:Z

    .line 215
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldStripIdentifier(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->g:Z

    .line 216
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldAddIdentifierToName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->h:Z

    .line 217
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->shouldAddIdentifierToAliasName(Z)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->withTable(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    return-object v0
.end method

.method public final shouldStripAliasName()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->f:Z

    return v0
.end method

.method public final shouldStripIdentifier()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->e:Z

    return v0
.end method

.method public final tableName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/s;->getFullQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
