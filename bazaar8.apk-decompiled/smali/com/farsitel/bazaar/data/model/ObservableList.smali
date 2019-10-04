.class public final Lcom/farsitel/bazaar/data/model/ObservableList;
.super Ljava/util/ArrayList;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final observableListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/g/e;",
            ">;"
        }
    .end annotation
.end field

.field public final observableLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList;->observableListeners:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList;->observableLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;)Ljava/util/List;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/farsitel/bazaar/data/model/ObservableList;->observableListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;II)V
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;ILjava/util/Collection;)Z
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/util/Collection;)Z
    .locals 0

    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/util/Collection;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge a()I
    .locals 1

    .line 8
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$removeAt$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList$removeAt$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;I)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lh/f/a/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/f/a/a<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 11
    invoke-interface {p1}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$callObservableChange$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/data/model/ObservableList$callObservableChange$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->b(Lh/f/a/a;)V

    return-object p1
.end method

.method public final a(Lc/c/a/e/g/e;)V
    .locals 1

    const-string v0, "observableListener"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;Lc/c/a/e/g/e;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->b(Lh/f/a/a;)V

    return-void
.end method

.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$add$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/farsitel/bazaar/data/model/ObservableList$add$2;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$add$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList$add$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;ILjava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final b(Lh/f/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList;->observableLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Lh/f/a/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$remove$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList$remove$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$removeAll$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/model/ObservableList$removeAll$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public removeRange(II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;-><init>(Lcom/farsitel/bazaar/data/model/ObservableList;II)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a()I

    move-result v0

    return v0
.end method
