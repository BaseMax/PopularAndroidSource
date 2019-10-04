.class public final Lc/c/a/n/c/d/l;
.super Ljava/lang/Object;
.source "EmptyViewData.kt"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lh/f/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/a<",
            "Lh/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILh/f/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/n/c/d/l;->a:I

    iput p2, p0, Lc/c/a/n/c/d/l;->b:I

    iput p3, p0, Lc/c/a/n/c/d/l;->c:I

    iput-object p4, p0, Lc/c/a/n/c/d/l;->d:Lh/f/a/a;

    return-void
.end method

.method public synthetic constructor <init>(IIILh/f/a/a;ILh/f/b/f;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 2
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/n/c/d/l;-><init>(IIILh/f/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lh/f/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/d/l;->d:Lh/f/a/a;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/l;->c:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/l;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/c/d/l;->a:I

    return v0
.end method
