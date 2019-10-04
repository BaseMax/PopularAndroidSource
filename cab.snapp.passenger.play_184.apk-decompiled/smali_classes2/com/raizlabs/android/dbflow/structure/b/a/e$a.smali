.class public final Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field b:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$b<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Ljava/util/List;

    .line 102
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Ljava/util/List;

    .line 111
    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->a:Lcom/raizlabs/android/dbflow/structure/b/a/e$c;

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAll(Ljava/util/Collection;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public final varargs addAll([Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TTModel;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/raizlabs/android/dbflow/structure/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e<",
            "TTModel;>;"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/a/e;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$a;)V

    return-object v0
.end method

.method public final processListener(Lcom/raizlabs/android/dbflow/structure/b/a/e$b;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$b<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a/e$b;

    return-object p0
.end method

.method public final runProcessListenerOnSameThread(Z)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/structure/b/a/e$a<",
            "TTModel;>;"
        }
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->d:Z

    return-object p0
.end method
