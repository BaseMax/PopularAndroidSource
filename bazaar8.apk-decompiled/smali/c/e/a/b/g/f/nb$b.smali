.class public final Lc/e/a/b/g/f/nb$b;
.super Lc/e/a/b/g/f/Ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/e/a/b/g/f/nb<",
        "TT;*>;>",
        "Lc/e/a/b/g/f/Ea<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lc/e/a/b/g/f/nb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/nb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Ea;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/nb$b;->b:Lc/e/a/b/g/f/nb;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/e/a/b/g/f/Ua;Lc/e/a/b/g/f/cb;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$b;->b:Lc/e/a/b/g/f/nb;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/nb;->a(Lc/e/a/b/g/f/nb;Lc/e/a/b/g/f/Ua;Lc/e/a/b/g/f/cb;)Lc/e/a/b/g/f/nb;

    move-result-object p1

    return-object p1
.end method
