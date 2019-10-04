.class public Lc/e/a/c/k/e$c;
.super Lc/e/a/c/k/e$f;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lc/e/a/c/k/e;


# direct methods
.method public constructor <init>(Lc/e/a/c/k/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc/e/a/c/k/e$c;->e:Lc/e/a/c/k/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/e/a/c/k/e$f;-><init>(Lc/e/a/c/k/e;Lc/e/a/c/k/b;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/k/e$c;->e:Lc/e/a/c/k/e;

    iget v1, v0, Lc/e/a/c/k/e;->u:F

    iget v0, v0, Lc/e/a/c/k/e;->w:F

    add-float/2addr v1, v0

    return v1
.end method
