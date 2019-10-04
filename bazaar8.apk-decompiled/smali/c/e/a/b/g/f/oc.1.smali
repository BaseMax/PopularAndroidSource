.class public final Lc/e/a/b/g/f/oc;
.super Lc/e/a/b/g/f/uc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/uc;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lc/e/a/b/g/f/lc;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/lc;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/oc;->b:Lc/e/a/b/g/f/lc;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/e/a/b/g/f/uc;-><init>(Lc/e/a/b/g/f/lc;Lc/e/a/b/g/f/mc;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/lc;Lc/e/a/b/g/f/mc;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/b/g/f/oc;-><init>(Lc/e/a/b/g/f/lc;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/g/f/nc;

    iget-object v1, p0, Lc/e/a/b/g/f/oc;->b:Lc/e/a/b/g/f/lc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/e/a/b/g/f/nc;-><init>(Lc/e/a/b/g/f/lc;Lc/e/a/b/g/f/mc;)V

    return-object v0
.end method
