.class public final Lcom/raizlabs/android/dbflow/sql/language/u;
.super Lcom/raizlabs/android/dbflow/sql/language/c;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/sql/language/c;",
        "Lcom/raizlabs/android/dbflow/sql/b;",
        "Ljava/lang/Iterable<",
        "Lcom/raizlabs/android/dbflow/sql/language/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/raizlabs/android/dbflow/sql/c;

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/u;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/c;-><init>(Lcom/raizlabs/android/dbflow/sql/language/s;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->k:Z

    const-string p1, "AND"

    .line 63
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 0

    if-eqz p2, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->a(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->i:Z

    :cond_0
    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/sql/language/w;

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/w;->separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/w;

    :cond_0
    return-void
.end method

.method private b()Lcom/raizlabs/android/dbflow/sql/c;
    .locals 1

    .line 237
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 238
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/u;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    return-object v0
.end method

.method public static clause()Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1

    .line 25
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/u;-><init>()V

    return-object v0
.end method

.method public static varargs clause([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/u;-><init>()V

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p0

    return-object p0
.end method

.method public static nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 2

    .line 41
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/u;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/u;->setUseParenthesis(Z)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object v0

    return-object v0
.end method

.method public static varargs nonGroupingClause([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 2

    .line 48
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/language/u;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/u;->setUseParenthesis(Z)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1

    const-string v0, "AND"

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->a(Ljava/lang/String;Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    return-object p1
.end method

.method public final andAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/u;"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 135
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/u;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 3

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 123
    invoke-virtual {p0, v2}, Lcom/raizlabs/android/dbflow/sql/language/u;->and(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->k:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const-string v1, "("

    .line 181
    invoke-virtual {p1, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 184
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 185
    invoke-interface {v2, p1}, Lcom/raizlabs/android/dbflow/sql/language/w;->appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/c;)V

    .line 186
    iget-boolean v3, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->j:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/w;->hasSeparator()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_1

    .line 187
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/sql/language/w;->separator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    .line 189
    invoke-virtual {p1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_3
    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->k:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    const-string v0, ")"

    .line 193
    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    :cond_4
    return-void
.end method

.method public final getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->i:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/u;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->h:Lcom/raizlabs/android/dbflow/sql/c;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->h:Lcom/raizlabs/android/dbflow/sql/c;

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final or(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1

    const-string v0, "OR"

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->a(Ljava/lang/String;Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    return-object p1
.end method

.method public final orAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ">;)",
            "Lcom/raizlabs/android/dbflow/sql/language/u;"
        }
    .end annotation

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/sql/language/w;

    .line 159
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/u;->or(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final varargs orAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 3

    .line 146
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 147
    invoke-virtual {p0, v2}, Lcom/raizlabs/android/dbflow/sql/language/u;->or(Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final setAllCommaSeparated(Z)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->j:Z

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->i:Z

    return-object p0
.end method

.method public final setUseParenthesis(Z)Lcom/raizlabs/android/dbflow/sql/language/u;
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->k:Z

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->i:Z

    return-object p0
.end method

.method public final size()I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/u;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 219
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/u;->b()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
