.class public final Lcom/raizlabs/android/dbflow/sql/language/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/b;


# static fields
.field public static final ALL:I = 0x1

.field public static final DISTINCT:I = 0x0

.field public static final NONE:I = -0x1


# instance fields
.field private a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->a:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->b:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->b:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->b:Ljava/util/List;

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/language/a/c;->ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/a/c;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final distinct()Lcom/raizlabs/android/dbflow/sql/language/y;
    .locals 1

    const/4 v0, 0x0

    .line 1104
    iput v0, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->a:I

    return-object p0
.end method

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

    .line 60
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/l;

    invoke-direct {v0, p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/l;-><init>(Lcom/raizlabs/android/dbflow/sql/b;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/c;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;-><init>(Ljava/lang/Object;)V

    .line 82
    iget v1, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_0

    const-string v1, "DISTINCT"

    .line 84
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "ALL"

    .line 86
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/y;->b:Ljava/util/List;

    const-string v2, ","

    invoke-static {v2, v1}, Lcom/raizlabs/android/dbflow/sql/c;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/c;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/c;

    .line 92
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->appendSpace()Lcom/raizlabs/android/dbflow/sql/c;

    .line 93
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/c;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/y;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
