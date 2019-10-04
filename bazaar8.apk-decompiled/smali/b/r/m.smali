.class public Lb/r/m;
.super Landroidx/lifecycle/Lifecycle;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/r/m$a;
    }
.end annotation


# instance fields
.field public b:Lb/c/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/b/a<",
            "Lb/r/j;",
            "Lb/r/m$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/Lifecycle$State;

.field public final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/r/k;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/r/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/Lifecycle;-><init>()V

    .line 2
    new-instance v0, Lb/c/a/b/a;

    invoke-direct {v0}, Lb/c/a/b/a;-><init>()V

    iput-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/r/m;->e:I

    .line 4
    iput-boolean v0, p0, Lb/r/m;->f:Z

    .line 5
    iput-boolean v0, p0, Lb/r/m;->g:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/r/m;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/r/m;->d:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method public static a(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .locals 3

    .line 23
    sget-object v0, Lb/r/l;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 26
    :cond_1
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 27
    :cond_2
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 28
    :cond_3
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 29
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    .line 17
    sget-object v0, Lb/r/l;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_0
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    return-object p0

    .line 20
    :pswitch_1
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    return-object p0

    .line 22
    :pswitch_3
    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method public static e(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;
    .locals 3

    .line 1
    sget-object v0, Lb/r/l;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_2
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0

    .line 6
    :cond_4
    :goto_0
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    return-object p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 16
    iget-object v0, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public a(Lb/r/j;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    .line 2
    :goto_0
    new-instance v0, Lb/r/m$a;

    invoke-direct {v0, p1, v1}, Lb/r/m$a;-><init>(Lb/r/j;Landroidx/lifecycle/Lifecycle$State;)V

    .line 3
    iget-object v1, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v1, p1, v0}, Lb/c/a/b/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/r/m$a;

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lb/r/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/r/k;

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v2, p0, Lb/r/m;->e:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lb/r/m;->f:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 6
    :goto_2
    invoke-virtual {p0, p1}, Lb/r/m;->c(Lb/r/j;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    .line 7
    iget v5, p0, Lb/r/m;->e:I

    add-int/2addr v5, v3

    iput v5, p0, Lb/r/m;->e:I

    .line 8
    :goto_3
    iget-object v5, v0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Lb/r/m;->b:Lb/c/a/b/a;

    .line 9
    invoke-virtual {v4, p1}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    iget-object v4, v0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v4}, Lb/r/m;->c(Landroidx/lifecycle/Lifecycle$State;)V

    .line 11
    iget-object v4, v0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v4}, Lb/r/m;->e(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lb/r/m$a;->a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 12
    invoke-virtual {p0}, Lb/r/m;->c()V

    .line 13
    invoke-virtual {p0, p1}, Lb/r/m;->c(Lb/r/j;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 14
    invoke-virtual {p0}, Lb/r/m;->d()V

    .line 15
    :cond_6
    iget p1, p0, Lb/r/m;->e:I

    sub-int/2addr p1, v3

    iput p1, p0, Lb/r/m;->e:I

    return-void
.end method

.method public final a(Lb/r/k;)V
    .locals 5

    .line 30
    iget-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    .line 31
    invoke-virtual {v0}, Lb/c/a/b/b;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lb/r/m;->g:Z

    if-nez v1, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/m$a;

    .line 35
    :goto_0
    iget-object v3, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lb/r/m;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/r/m;->b:Lb/c/a/b/a;

    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    .line 38
    invoke-static {v3}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    invoke-virtual {p0, v4}, Lb/r/m;->c(Landroidx/lifecycle/Lifecycle$State;)V

    .line 39
    invoke-virtual {v2, p1, v3}, Lb/r/m$a;->a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 40
    invoke-virtual {p0}, Lb/r/m;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final b(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    .line 5
    iget-boolean p1, p0, Lb/r/m;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lb/r/m;->e:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v0, p0, Lb/r/m;->f:Z

    .line 7
    invoke-virtual {p0}, Lb/r/m;->d()V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lb/r/m;->f:Z

    return-void

    .line 9
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lb/r/m;->g:Z

    return-void
.end method

.method public b(Lb/r/j;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v0, p1}, Lb/c/a/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lb/r/k;)V
    .locals 5

    .line 15
    iget-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    .line 16
    invoke-virtual {v0}, Lb/c/a/b/b;->b()Lb/c/a/b/b$d;

    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lb/r/m;->g:Z

    if-nez v1, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/m$a;

    .line 20
    :goto_0
    iget-object v3, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v4, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lb/r/m;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lb/r/m;->b:Lb/c/a/b/a;

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    iget-object v3, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v3}, Lb/r/m;->c(Landroidx/lifecycle/Lifecycle$State;)V

    .line 23
    iget-object v3, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v3}, Lb/r/m;->e(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lb/r/m$a;->a(Lb/r/k;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 24
    invoke-virtual {p0}, Lb/r/m;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 3

    .line 10
    iget-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v0}, Lb/c/a/b/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v0}, Lb/c/a/b/b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/m$a;

    iget-object v0, v0, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    iget-object v2, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v2}, Lb/c/a/b/b;->c()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/m$a;

    iget-object v2, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    .line 13
    iget-object v0, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c(Lb/r/j;)Landroidx/lifecycle/Lifecycle$State;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v0, p1}, Lb/c/a/b/a;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/r/m$a;

    iget-object p1, p1, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Lb/r/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lb/r/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    .line 4
    :cond_1
    iget-object v1, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, p1}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-static {p1, v0}, Lb/r/m;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 2

    .line 5
    iget-object v0, p0, Lb/r/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/r/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lb/r/m;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/k;

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/r/m;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 4
    iput-boolean v2, p0, Lb/r/m;->g:Z

    .line 5
    iget-object v1, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v2}, Lb/c/a/b/b;->a()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/m$a;

    iget-object v2, v2, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lb/r/m;->a(Lb/r/k;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lb/r/m;->b:Lb/c/a/b/a;

    invoke-virtual {v1}, Lb/c/a/b/b;->c()Ljava/util/Map$Entry;

    move-result-object v1

    .line 8
    iget-boolean v2, p0, Lb/r/m;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lb/r/m;->c:Landroidx/lifecycle/Lifecycle$State;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/r/m$a;

    iget-object v1, v1, Lb/r/m$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lb/r/m;->b(Lb/r/k;)V

    goto :goto_0

    .line 11
    :cond_2
    iput-boolean v2, p0, Lb/r/m;->g:Z

    return-void

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public d(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/r/m;->b(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
