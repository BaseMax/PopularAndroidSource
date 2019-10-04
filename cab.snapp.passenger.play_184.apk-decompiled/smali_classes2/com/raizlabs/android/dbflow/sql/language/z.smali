.class public final Lcom/raizlabs/android/dbflow/sql/language/z;
.super Lcom/raizlabs/android/dbflow/sql/language/e;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/language/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/e<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/language/ae<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/language/u;

.field private b:Lcom/raizlabs/android/dbflow/sql/b;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p2}, Lcom/raizlabs/android/dbflow/sql/language/e;-><init>(Ljava/lang/Class;)V

    .line 22
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->b:Lcom/raizlabs/android/dbflow/sql/b;

    .line 23
    invoke-static {}, Lcom/raizlabs/android/dbflow/sql/language/u;->nonGroupingClause()Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/sql/language/u;->setAllCommaSeparated(Z)Lcom/raizlabs/android/dbflow/sql/language/u;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->a:Lcom/raizlabs/android/dbflow/sql/language/u;

    return-void
.end method


# virtual methods
.method public final conditionValues(Landroid/content/ContentValues;)Lcom/raizlabs/android/dbflow/sql/language/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/z<",
            "TTModel;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->a:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/sql/d;->addContentValues(Landroid/content/ContentValues;Lcom/raizlabs/android/dbflow/sql/language/u;)V

    return-object p0
.end method

.method public final varargs conditions([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/raizlabs/android/dbflow/sql/language/w;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/z<",
            "TTModel;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->a:Lcom/raizlabs/android/dbflow/sql/language/u;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/u;->andAll([Lcom/raizlabs/android/dbflow/sql/language/w;)Lcom/raizlabs/android/dbflow/sql/language/u;

    return-object p0
.end method

.method public final getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
    .locals 1

    .line 62
    sget-object v0, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->b:Lcom/raizlabs/android/dbflow/sql/b;

    .line 47
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/sql/b;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    const-string v1, "SET "

    .line 48
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->a:Lcom/raizlabs/android/dbflow/sql/language/u;

    .line 49
    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/u;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getQueryBuilderBase()Lcom/raizlabs/android/dbflow/sql/b;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/z;->b:Lcom/raizlabs/android/dbflow/sql/b;

    return-object v0
.end method
