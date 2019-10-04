.class public final Lc/e/a/a/e/e/d$d;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lc/e/a/a/e/e/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lc/e/a/a/o/v;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/e/c$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lc/e/a/a/e/e/c$b;->gb:Lc/e/a/a/o/v;

    iput-object p1, p0, Lc/e/a/a/e/e/d$d;->c:Lc/e/a/a/o/v;

    .line 3
    iget-object p1, p0, Lc/e/a/a/e/e/d$d;->c:Lc/e/a/a/o/v;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->e(I)V

    .line 4
    iget-object p1, p0, Lc/e/a/a/e/e/d$d;->c:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->y()I

    move-result p1

    iput p1, p0, Lc/e/a/a/e/e/d$d;->a:I

    .line 5
    iget-object p1, p0, Lc/e/a/a/e/e/d$d;->c:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->y()I

    move-result p1

    iput p1, p0, Lc/e/a/a/e/e/d$d;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/e/d$d;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/e/d$d;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/e/e/d$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/e/e/d$d;->c:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->y()I

    move-result v0

    :cond_0
    return v0
.end method
