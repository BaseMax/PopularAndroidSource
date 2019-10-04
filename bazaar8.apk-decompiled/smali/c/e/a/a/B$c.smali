.class public final Lc/e/a/a/B$c;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public a:Lc/e/a/a/J;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/A;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/a/B$c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/B$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/B$c;->b:I

    return p0
.end method

.method public static synthetic b(Lc/e/a/a/B$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lc/e/a/a/B$c;->c:Z

    return p0
.end method

.method public static synthetic c(Lc/e/a/a/B$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/B$c;->d:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 3
    iget v0, p0, Lc/e/a/a/B$c;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/e/a/a/B$c;->b:I

    return-void
.end method

.method public a(Lc/e/a/a/J;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/B$c;->a:Lc/e/a/a/J;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lc/e/a/a/B$c;->b:I

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lc/e/a/a/B$c;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(I)V
    .locals 3

    .line 5
    iget-boolean v0, p0, Lc/e/a/a/B$c;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lc/e/a/a/B$c;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-static {v1}, Lc/e/a/a/o/e;->a(Z)V

    return-void

    .line 7
    :cond_1
    iput-boolean v1, p0, Lc/e/a/a/B$c;->c:Z

    .line 8
    iput p1, p0, Lc/e/a/a/B$c;->d:I

    return-void
.end method

.method public b(Lc/e/a/a/J;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/B$c;->a:Lc/e/a/a/J;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lc/e/a/a/B$c;->b:I

    .line 4
    iput-boolean p1, p0, Lc/e/a/a/B$c;->c:Z

    return-void
.end method
