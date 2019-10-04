.class public final Lcom/bumptech/glide/e/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/b/d$b;,
        Lcom/bumptech/glide/e/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/e/b/g$a;

.field private b:Lcom/bumptech/glide/e/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b/b<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    new-instance v0, Lcom/bumptech/glide/e/b/d$b;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/b/d$b;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/b/d;-><init>(Lcom/bumptech/glide/e/b/g$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/bumptech/glide/e/b/d$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/e/b/d$a;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/b/d;-><init>(Lcom/bumptech/glide/e/b/g$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/e/b/g$a;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/e/b/d;->a:Lcom/bumptech/glide/e/b/g$a;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/e/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lcom/bumptech/glide/e/b/b<",
            "TR;>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/e/b/d;->b:Lcom/bumptech/glide/e/b/b;

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Lcom/bumptech/glide/e/b/g;

    iget-object p2, p0, Lcom/bumptech/glide/e/b/d;->a:Lcom/bumptech/glide/e/b/g$a;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/e/b/g;-><init>(Lcom/bumptech/glide/e/b/g$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/e/b/d;->b:Lcom/bumptech/glide/e/b/b;

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/e/b/d;->b:Lcom/bumptech/glide/e/b/b;

    return-object p1

    .line 43
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/e/b/a;->get()Lcom/bumptech/glide/e/b/b;

    move-result-object p1

    return-object p1
.end method
