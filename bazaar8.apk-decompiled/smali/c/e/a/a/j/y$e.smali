.class public final Lc/e/a/a/j/y$e;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Lc/e/a/a/j/y;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/y;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/y$e;->b:Lc/e/a/a/j/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lc/e/a/a/j/y$e;->a:I

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/y$e;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/j/y$e;->a:I

    return p0
.end method


# virtual methods
.method public a(Lc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/y$e;->b:Lc/e/a/a/j/y;

    iget v1, p0, Lc/e/a/a/j/y$e;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lc/e/a/a/j/y;->a(ILc/e/a/a/E;Lc/e/a/a/c/f;Z)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/y$e;->b:Lc/e/a/a/j/y;

    invoke-virtual {v0}, Lc/e/a/a/j/y;->p()V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y$e;->b:Lc/e/a/a/j/y;

    iget v1, p0, Lc/e/a/a/j/y$e;->a:I

    invoke-virtual {v0, v1}, Lc/e/a/a/j/y;->a(I)Z

    move-result v0

    return v0
.end method

.method public d(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y$e;->b:Lc/e/a/a/j/y;

    iget v1, p0, Lc/e/a/a/j/y$e;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lc/e/a/a/j/y;->a(IJ)I

    move-result p1

    return p1
.end method
