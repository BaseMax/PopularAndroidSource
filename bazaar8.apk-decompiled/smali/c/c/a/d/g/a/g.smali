.class public final Lc/c/a/d/g/a/g;
.super Ljava/lang/Object;
.source "ImageLoader.kt"

# interfaces
.implements Lc/b/a/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/g/a/h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/g/f<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/d/g/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/d/g/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lc/b/a/g/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "Lc/b/a/g/a/h<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 10
    new-instance p2, Lb/i/a/n$b;

    invoke-direct {p2}, Lb/i/a/n$b;-><init>()V

    .line 11
    iget-object p3, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p3, p3, Lc/c/a/d/g/a/h;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lb/i/a/n$b;->a(Ljava/lang/CharSequence;)Lb/i/a/n$b;

    .line 12
    invoke-virtual {p2, p1}, Lb/i/a/n$b;->b(Landroid/graphics/Bitmap;)Lb/i/a/n$b;

    .line 13
    iget-object p1, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p3, p1, Lc/c/a/d/g/a/h;->e:Lb/i/a/n$d;

    iget-object p1, p1, Lc/c/a/d/g/a/h;->f:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 14
    iget-object p1, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p1, p1, Lc/c/a/d/g/a/h;->e:Lb/i/a/n$d;

    invoke-virtual {p1, p2}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    invoke-virtual {p1}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p3, p2, Lc/c/a/d/g/a/h;->g:Lb/i/a/q;

    .line 16
    iget p2, p2, Lc/c/a/d/g/a/h;->h:I

    .line 17
    invoke-virtual {p3, p2, p1}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lc/b/a/g/a/h;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lc/b/a/g/a/h<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Lb/i/a/n$c;

    invoke-direct {p1}, Lb/i/a/n$c;-><init>()V

    .line 3
    iget-object p2, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p2, p2, Lc/c/a/d/g/a/h;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lb/i/a/n$c;->b(Ljava/lang/CharSequence;)Lb/i/a/n$c;

    .line 4
    iget-object p2, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p2, p2, Lc/c/a/d/g/a/h;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lb/i/a/n$c;->a(Ljava/lang/CharSequence;)Lb/i/a/n$c;

    .line 5
    iget-object p2, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p3, p2, Lc/c/a/d/g/a/h;->e:Lb/i/a/n$d;

    iget-object p2, p2, Lc/c/a/d/g/a/h;->f:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lb/i/a/n$d;->b(Ljava/lang/CharSequence;)Lb/i/a/n$d;

    .line 6
    iget-object p2, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p2, p2, Lc/c/a/d/g/a/h;->e:Lb/i/a/n$d;

    invoke-virtual {p2, p1}, Lb/i/a/n$d;->a(Lb/i/a/n$e;)Lb/i/a/n$d;

    invoke-virtual {p2}, Lb/i/a/n$d;->a()Landroid/app/Notification;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lc/c/a/d/g/a/g;->a:Lc/c/a/d/g/a/h;

    iget-object p3, p2, Lc/c/a/d/g/a/h;->g:Lb/i/a/q;

    .line 8
    iget p2, p2, Lc/c/a/d/g/a/h;->h:I

    .line 9
    invoke-virtual {p3, p2, p1}, Lb/i/a/q;->a(ILandroid/app/Notification;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lc/b/a/g/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lc/c/a/d/g/a/g;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lc/b/a/g/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
