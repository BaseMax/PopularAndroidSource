.class public Lc/e/a/a/e/h/I$a;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lc/e/a/a/e/h/C;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/h/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/o/u;

.field public final synthetic b:Lc/e/a/a/e/h/I;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/h/I;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc/e/a/a/e/h/I$a;->b:Lc/e/a/a/e/h/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lc/e/a/a/o/u;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lc/e/a/a/o/u;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/h/I$a;->a:Lc/e/a/a/o/u;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/o/F;Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V
    .locals 0

    return-void
.end method

.method public a(Lc/e/a/a/o/v;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lc/e/a/a/o/v;->u()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->f(I)V

    .line 3
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    iget-object v4, p0, Lc/e/a/a/e/h/I$a;->a:Lc/e/a/a/o/u;

    invoke-virtual {p1, v4, v1}, Lc/e/a/a/o/v;->a(Lc/e/a/a/o/u;I)V

    .line 5
    iget-object v4, p0, Lc/e/a/a/e/h/I$a;->a:Lc/e/a/a/o/u;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lc/e/a/a/o/u;->a(I)I

    move-result v4

    .line 6
    iget-object v5, p0, Lc/e/a/a/e/h/I$a;->a:Lc/e/a/a/o/u;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lc/e/a/a/o/u;->c(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    .line 7
    iget-object v4, p0, Lc/e/a/a/e/h/I$a;->a:Lc/e/a/a/o/u;

    invoke-virtual {v4, v5}, Lc/e/a/a/o/u;->c(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lc/e/a/a/e/h/I$a;->a:Lc/e/a/a/o/u;

    invoke-virtual {v4, v5}, Lc/e/a/a/o/u;->a(I)I

    move-result v4

    .line 9
    iget-object v5, p0, Lc/e/a/a/e/h/I$a;->b:Lc/e/a/a/e/h/I;

    invoke-static {v5}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lc/e/a/a/e/h/D;

    new-instance v7, Lc/e/a/a/e/h/I$b;

    iget-object v8, p0, Lc/e/a/a/e/h/I$a;->b:Lc/e/a/a/e/h/I;

    invoke-direct {v7, v8, v4}, Lc/e/a/a/e/h/I$b;-><init>(Lc/e/a/a/e/h/I;I)V

    invoke-direct {v6, v7}, Lc/e/a/a/e/h/D;-><init>(Lc/e/a/a/e/h/C;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v4, p0, Lc/e/a/a/e/h/I$a;->b:Lc/e/a/a/e/h/I;

    invoke-static {v4}, Lc/e/a/a/e/h/I;->d(Lc/e/a/a/e/h/I;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lc/e/a/a/e/h/I$a;->b:Lc/e/a/a/e/h/I;

    invoke-static {p1}, Lc/e/a/a/e/h/I;->e(Lc/e/a/a/e/h/I;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 12
    iget-object p1, p0, Lc/e/a/a/e/h/I$a;->b:Lc/e/a/a/e/h/I;

    invoke-static {p1}, Lc/e/a/a/e/h/I;->a(Lc/e/a/a/e/h/I;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method
