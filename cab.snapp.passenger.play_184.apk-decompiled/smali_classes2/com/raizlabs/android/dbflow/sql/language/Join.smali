.class public final Lcom/raizlabs/android/dbflow/sql/language/Join;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        "TFromModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

.field private c:Lcom/raizlabs/android/dbflow/sql/language/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTFromModel;>;"
        }
    .end annotation
.end field

.field private d:Lcom/raizlabs/android/dbflow/sql/language/s;

.field private e:Lcom/raizlabs/android/dbflow/sql/language/u;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/l;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;Lcom/raizlabs/android/dbflow/sql/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTFromModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            "Lcom/raizlabs/android/dbflow/sql/b/d<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->f:Ljava/util/List;

    .line 94
    invoke-interface {p3}, Lcom/raizlabs/android/dbflow/sql/b/d;->getTable()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->a:Ljava/lang/Class;

    .line 95
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/l;

    .line 96
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->b:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 97
    invoke-static {p3}, Lcom/raizlabs/android/dbflow/sql/language/a/d;->from(Lcom/raizlabs/android/dbflow/sql/b/d;)Lcom/raizlabs/android/dbflow/sql/language/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/a/c;->getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/l;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTFromModel;>;",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->f:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/l;

    .line 87
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->a:Ljava/lang/Class;

    .line 88
    iput-object p3, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->b:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    .line 89
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/language/s$a;

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/s$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-void
.end method

.method private a()V
    .locals 2

    .line 183
    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->b:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify a clause for this join if its NATURAL. Specifying a clause would have no effect. Call end() to continue the query."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Join;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/Join<",
            "TTModel;TTFromModel;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 109
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->newBuilder()Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->as(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/s$a;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/s$a;->build()Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Lcom/raizlabs/android/dbflow/sql/language/s;

    return-object p0
.end method

.method public final end()Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTFromModel;>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/c;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->b:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "JOIN"

    .line 156
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->d:Lcom/raizlabs/android/dbflow/sql/language/s;

    .line 158
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/s;->getFullQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 162
    sget-object v1, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->NATURAL:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->b:Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/Join$JoinType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    if-eqz v1, :cond_0

    const-string v1, "ON"

    .line 164
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 166
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/language/u;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_0

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "USING ("

    .line 169
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->f:Ljava/util/List;

    .line 170
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->appendList(Ljava/util/List;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    const-string v2, ")"

    .line 171
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final varargs on([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTFromModel;>;"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/Join;->a()V

    .line 124
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/u;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 125
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->e:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 126
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-object p1
.end method

.method public final varargs using([Lcom/raizlabs/android/dbflow/sql/language/a/a;)Lcom/raizlabs/android/dbflow/sql/language/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/l<",
            "TTFromModel;>;"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/Join;->a()V

    .line 138
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->f:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Join;->c:Lcom/raizlabs/android/dbflow/sql/language/l;

    return-object p1
.end method
