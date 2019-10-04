.class public abstract Lb/E/a/a/k$e;
.super Lb/E/a/a/k$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/E/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field public a:[Lb/i/c/b$b;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/E/a/a/k$d;-><init>(Lb/E/a/a/j;)V

    .line 2
    iput-object v0, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/E/a/a/k$e;->c:I

    return-void
.end method

.method public constructor <init>(Lb/E/a/a/k$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lb/E/a/a/k$d;-><init>(Lb/E/a/a/j;)V

    .line 5
    iput-object v0, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lb/E/a/a/k$e;->c:I

    .line 7
    iget-object v0, p1, Lb/E/a/a/k$e;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/E/a/a/k$e;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Lb/E/a/a/k$e;->d:I

    iput v0, p0, Lb/E/a/a/k$e;->d:I

    .line 9
    iget-object p1, p1, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    invoke-static {p1}, Lb/i/c/b;->a([Lb/i/c/b$b;)[Lb/i/c/b$b;

    move-result-object p1

    iput-object p1, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, Lb/i/c/b$b;->a([Lb/i/c/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lb/i/c/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/E/a/a/k$e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lb/i/c/b$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    invoke-static {v0, p1}, Lb/i/c/b;->a([Lb/i/c/b$b;[Lb/i/c/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lb/i/c/b;->a([Lb/i/c/b$b;)[Lb/i/c/b$b;

    move-result-object p1

    iput-object p1, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    invoke-static {v0, p1}, Lb/i/c/b;->b([Lb/i/c/b$b;[Lb/i/c/b$b;)V

    :goto_0
    return-void
.end method
