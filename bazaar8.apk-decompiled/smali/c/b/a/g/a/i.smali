.class public abstract Lc/b/a/g/a/i;
.super Lc/b/a/g/a/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/g/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/g/a/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static b:Z

.field public static c:Ljava/lang/Integer;


# instance fields
.field public final d:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final e:Lc/b/a/g/a/i$a;

.field public f:Landroid/view/View$OnAttachStateChangeListener;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/b/a/g/a/a;-><init>()V

    .line 2
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    .line 3
    new-instance v0, Lc/b/a/g/a/i$a;

    invoke-direct {v0, p1}, Lc/b/a/g/a/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc/b/a/g/a/i;->e:Lc/b/a/g/a/i$a;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/g/a/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g/a/i;->e:Lc/b/a/g/a/i$a;

    invoke-virtual {v0, p1}, Lc/b/a/g/a/i$a;->b(Lc/b/a/g/a/g;)V

    return-void
.end method

.method public a(Lc/b/a/g/c;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/b/a/g/a/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 3
    sget-object v0, Lc/b/a/g/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lc/b/a/g/a/i;->b:Z

    .line 5
    iget-object v0, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/b/a/g/a/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Lc/b/a/g/a/i;->d()V

    return-void
.end method

.method public b(Lc/b/a/g/a/g;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/g/a/i;->e:Lc/b/a/g/a/i$a;

    invoke-virtual {v0, p1}, Lc/b/a/g/a/i$a;->a(Lc/b/a/g/a/g;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    .line 5
    sget-object v0, Lc/b/a/g/a/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/b/a/g/a/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lc/b/a/g/a/i;->e:Lc/b/a/g/a/i$a;

    invoke-virtual {p1}, Lc/b/a/g/a/i$a;->b()V

    .line 3
    iget-boolean p1, p0, Lc/b/a/g/a/i;->g:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/b/a/g/a/i;->e()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/g/a/i;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lc/b/a/g/a/i;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/b/a/g/a/i;->h:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/g/a/i;->f:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lc/b/a/g/a/i;->h:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/b/a/g/a/i;->h:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getRequest()Lc/b/a/g/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/b/a/g/a/i;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lc/b/a/g/c;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lc/b/a/g/c;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/g/a/i;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
