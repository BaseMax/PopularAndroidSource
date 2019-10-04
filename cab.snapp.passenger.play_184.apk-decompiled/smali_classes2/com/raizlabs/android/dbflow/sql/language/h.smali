.class public final Lcom/raizlabs/android/dbflow/sql/language/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/b;"
    }
.end annotation


# instance fields
.field private a:Lcom/raizlabs/android/dbflow/sql/language/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/language/ab;Lcom/raizlabs/android/dbflow/sql/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/language/ab<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/language/ab;

    .line 31
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final and(Lcom/raizlabs/android/dbflow/sql/b;)Lcom/raizlabs/android/dbflow/sql/language/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/b;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/h<",
            "TTModel;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final disable()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/language/ab;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/language/ab;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/language/ab;

    iget-object v1, v1, Lcom/raizlabs/android/dbflow/sql/language/ab;->a:Lcom/raizlabs/android/dbflow/sql/language/aa;

    iget-object v1, v1, Lcom/raizlabs/android/dbflow/sql/language/aa;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/sql/d;->dropTrigger(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final enable()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/language/ab;

    iget-object v0, v0, Lcom/raizlabs/android/dbflow/sql/language/ab;->b:Ljava/lang/Class;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/c;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/c;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/h;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/i;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->a:Lcom/raizlabs/android/dbflow/sql/language/ab;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/language/ab;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    const-string v1, "\nBEGIN"

    .line 46
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    const-string v2, "\n"

    .line 47
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/h;->b:Ljava/util/List;

    const-string v3, ";\n"

    invoke-static {v3, v2}, Lcom/raizlabs/android/dbflow/sql/c;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    move-result-object v1

    const-string v2, "\nEND"

    .line 48
    invoke-virtual {v1, v2}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 49
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
