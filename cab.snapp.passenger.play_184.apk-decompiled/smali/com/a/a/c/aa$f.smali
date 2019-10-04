.class final Lcom/a/a/c/aa$f;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Lcom/a/a/c/aa$l;Lcom/a/a/c/aa$k;Lcom/a/a/c/aa$k;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 302
    invoke-direct {p0, p2, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    return-void
.end method
