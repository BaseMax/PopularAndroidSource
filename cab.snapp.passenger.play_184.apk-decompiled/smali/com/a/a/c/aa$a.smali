.class final Lcom/a/a/c/aa$a;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/c/aa$f;Lcom/a/a/c/aa$k;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x3

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    return-void
.end method
