.class public final Lcom/bumptech/glide/e/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/e/b/f$a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/e/b/f$a;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/e/b/f;->a:Lcom/bumptech/glide/e/b/f$a;

    return-void
.end method


# virtual methods
.method public final transition(Ljava/lang/Object;Lcom/bumptech/glide/e/b/b$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/e/b/b$a;",
            ")Z"
        }
    .end annotation

    .line 39
    invoke-interface {p2}, Lcom/bumptech/glide/e/b/b$a;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/bumptech/glide/e/b/f;->a:Lcom/bumptech/glide/e/b/f$a;

    invoke-interface {p2}, Lcom/bumptech/glide/e/b/b$a;->getView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/bumptech/glide/e/b/f$a;->animate(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
