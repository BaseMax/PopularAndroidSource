.class public final Lj/a/e/k$c;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:I

.field public final synthetic e:Lj/a/e/k;


# direct methods
.method public constructor <init>(Lj/a/e/k;ZII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lj/a/e/k$c;->e:Lj/a/e/k;

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lj/a/e/k;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Lj/a/e/k$c;->b:Z

    .line 4
    iput p3, p0, Lj/a/e/k$c;->c:I

    .line 5
    iput p4, p0, Lj/a/e/k$c;->d:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/a/e/k$c;->e:Lj/a/e/k;

    iget-boolean v1, p0, Lj/a/e/k$c;->b:Z

    iget v2, p0, Lj/a/e/k$c;->c:I

    iget v3, p0, Lj/a/e/k$c;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lj/a/e/k;->a(ZII)V

    return-void
.end method
