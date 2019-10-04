.class public Lc/b/a/g;
.super Landroid/content/ContextWrapper;
.source "GlideContext.java"


# static fields
.field public static final a:Lc/b/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/o<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Lc/b/a/c/b/a/b;

.field public final d:Lcom/bumptech/glide/Registry;

.field public final e:Lc/b/a/g/a/e;

.field public final f:Lc/b/a/g/g;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/o<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final h:Lc/b/a/c/b/r;

.field public final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/d;

    invoke-direct {v0}, Lc/b/a/d;-><init>()V

    sput-object v0, Lc/b/a/g;->a:Lc/b/a/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/b/a/c/b/a/b;Lcom/bumptech/glide/Registry;Lc/b/a/g/a/e;Lc/b/a/g/g;Ljava/util/Map;Lc/b/a/c/b/r;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/c/b/a/b;",
            "Lcom/bumptech/glide/Registry;",
            "Lc/b/a/g/a/e;",
            "Lc/b/a/g/g;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/o<",
            "**>;>;",
            "Lc/b/a/c/b/r;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lc/b/a/g;->c:Lc/b/a/c/b/a/b;

    .line 3
    iput-object p3, p0, Lc/b/a/g;->d:Lcom/bumptech/glide/Registry;

    .line 4
    iput-object p4, p0, Lc/b/a/g;->e:Lc/b/a/g/a/e;

    .line 5
    iput-object p5, p0, Lc/b/a/g;->f:Lc/b/a/g/g;

    .line 6
    iput-object p6, p0, Lc/b/a/g;->g:Ljava/util/Map;

    .line 7
    iput-object p7, p0, Lc/b/a/g;->h:Lc/b/a/c/b/r;

    .line 8
    iput p8, p0, Lc/b/a/g;->i:I

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lc/b/a/g;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/c/b/a/b;
    .locals 1

    .line 7
    iget-object v0, p0, Lc/b/a/g;->c:Lc/b/a/c/b/a/b;

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/b/a/g/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lc/b/a/g/a/i<",
            "Landroid/widget/ImageView;",
            "TX;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lc/b/a/g;->e:Lc/b/a/g/a/e;

    invoke-virtual {v0, p1, p2}, Lc/b/a/g/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/b/a/g/a/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lc/b/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/b/a/o<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/o;

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, Lc/b/a/g;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/o;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lc/b/a/g;->a:Lc/b/a/o;

    :cond_2
    return-object v0
.end method

.method public b()Lc/b/a/g/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->f:Lc/b/a/g/g;

    return-object v0
.end method

.method public c()Lc/b/a/c/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->h:Lc/b/a/c/b/r;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/g;->i:I

    return v0
.end method

.method public e()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/Registry;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->d:Lcom/bumptech/glide/Registry;

    return-object v0
.end method
