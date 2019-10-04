.class public final Lcom/raizlabs/android/dbflow/structure/a;
.super Lcom/raizlabs/android/dbflow/sql/a;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/a<",
        "Lcom/raizlabs/android/dbflow/structure/a<",
        "TTModel;>;>;",
        "Lcom/raizlabs/android/dbflow/structure/e;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTModel;"
        }
    .end annotation
.end field

.field private transient e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/raizlabs/android/dbflow/structure/a$a<",
            "TTModel;>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/raizlabs/android/dbflow/structure/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/sql/a;-><init>(Ljava/lang/Class;)V

    .line 38
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()Lcom/raizlabs/android/dbflow/structure/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/f<",
            "TTModel;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->f:Lcom/raizlabs/android/dbflow/structure/f;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->f:Lcom/raizlabs/android/dbflow/structure/f;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->f:Lcom/raizlabs/android/dbflow/structure/f;

    return-object v0
.end method

.method public final async()Lcom/raizlabs/android/dbflow/structure/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/a<",
            "+",
            "Lcom/raizlabs/android/dbflow/structure/e;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public final delete()Z
    .locals 2

    .line 83
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/a$2;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/a$2;-><init>(Lcom/raizlabs/android/dbflow/structure/a;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final delete(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->delete()Z

    move-result p1

    return p1
.end method

.method public final exists()Z
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->a()Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/f;->exists(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final exists(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->exists()Z

    move-result p1

    return p1
.end method

.method public final insert()J
    .locals 2

    .line 117
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/a$4;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/a$4;-><init>(Lcom/raizlabs/android/dbflow/structure/a;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    .line 123
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final insert(Lcom/raizlabs/android/dbflow/structure/b/i;)J
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->insert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final load()V
    .locals 2

    .line 134
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/a$5;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/a$5;-><init>(Lcom/raizlabs/android/dbflow/structure/a;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    .line 140
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    return-void
.end method

.method public final load(Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->load()V

    return-void
.end method

.method public final onSuccess$100ded9()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/a$a;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/raizlabs/android/dbflow/structure/a$a;->onModelChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final save()Z
    .locals 2

    .line 66
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/a$1;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/a$1;-><init>(Lcom/raizlabs/android/dbflow/structure/a;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    .line 72
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final save(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->save()Z

    move-result p1

    return p1
.end method

.method public final update()Z
    .locals 2

    .line 100
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/a$3;

    invoke-direct {v1, p0}, Lcom/raizlabs/android/dbflow/structure/a$3;-><init>(Lcom/raizlabs/android/dbflow/structure/a;)V

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/e$c;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/a;->d:Ljava/lang/Object;

    .line 106
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->add(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/structure/b/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/b/a/e$a;->build()Lcom/raizlabs/android/dbflow/structure/b/a/e;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/structure/a;->a(Lcom/raizlabs/android/dbflow/structure/b/a/c;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final update(Lcom/raizlabs/android/dbflow/structure/b/i;)Z
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/a;->update()Z

    move-result p1

    return p1
.end method

.method public final withListener(Lcom/raizlabs/android/dbflow/structure/a$a;)Lcom/raizlabs/android/dbflow/structure/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/a$a<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
