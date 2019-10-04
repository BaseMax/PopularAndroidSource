.class public final Lc/e/a/a/b/l$a;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/e/a/a/b/l$a;->a:I

    .line 3
    iput v0, p0, Lc/e/a/a/b/l$a;->b:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lc/e/a/a/b/l$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lc/e/a/a/b/l;
    .locals 5

    .line 1
    new-instance v0, Lc/e/a/a/b/l;

    iget v1, p0, Lc/e/a/a/b/l$a;->a:I

    iget v2, p0, Lc/e/a/a/b/l$a;->b:I

    iget v3, p0, Lc/e/a/a/b/l$a;->c:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lc/e/a/a/b/l;-><init>(IIILc/e/a/a/b/k;)V

    return-object v0
.end method
