.class public Lc/e/a/b/g/f/nb$a;
.super Lc/e/a/b/g/f/Da;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/e/a/b/g/f/nb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lc/e/a/b/g/f/nb$a<",
        "TMessageType;TBuilderType;>;>",
        "Lc/e/a/b/g/f/Da<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/b/g/f/nb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lc/e/a/b/g/f/nb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/nb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Da;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/g/f/nb$a;->a:Lc/e/a/b/g/f/nb;

    .line 3
    sget v0, Lc/e/a/b/g/f/nb$e;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lc/e/a/b/g/f/nb;

    iput-object p1, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lc/e/a/b/g/f/nb$a;->c:Z

    return-void
.end method

.method public static a(Lc/e/a/b/g/f/nb;Lc/e/a/b/g/f/nb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lc/e/a/b/g/f/dc;->a()Lc/e/a/b/g/f/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/a/b/g/f/dc;->a(Ljava/lang/Object;)Lc/e/a/b/g/f/hc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lc/e/a/b/g/f/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/e/a/b/g/f/Ca;)Lc/e/a/b/g/f/Da;
    .locals 0

    .line 4
    check-cast p1, Lc/e/a/b/g/f/nb;

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/nb$a;->a(Lc/e/a/b/g/f/nb;)Lc/e/a/b/g/f/nb$a;

    return-object p0
.end method

.method public final synthetic a()Lc/e/a/b/g/f/Sb;
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->a:Lc/e/a/b/g/f/nb;

    return-object v0
.end method

.method public final a(Lc/e/a/b/g/f/nb;)Lc/e/a/b/g/f/nb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/nb$a;->a(Lc/e/a/b/g/f/nb;Lc/e/a/b/g/f/nb;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->a:Lc/e/a/b/g/f/nb;

    .line 2
    sget v1, Lc/e/a/b/g/f/nb$e;->e:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lc/e/a/b/g/f/nb$a;

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->n()Lc/e/a/b/g/f/Sb;

    move-result-object v1

    check-cast v1, Lc/e/a/b/g/f/nb;

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/nb$a;->a(Lc/e/a/b/g/f/nb;)Lc/e/a/b/g/f/nb$a;

    return-object v0
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/g/f/nb$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    sget v1, Lc/e/a/b/g/f/nb$e;->d:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lc/e/a/b/g/f/nb;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lc/e/a/b/g/f/nb;

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    invoke-static {v0, v1}, Lc/e/a/b/g/f/nb$a;->a(Lc/e/a/b/g/f/nb;Lc/e/a/b/g/f/nb;)V

    .line 6
    iput-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/e/a/b/g/f/nb$a;->c:Z

    :cond_0
    return-void
.end method

.method public h()Lc/e/a/b/g/f/nb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/g/f/nb$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->i()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/b/g/f/nb$a;->c:Z

    .line 5
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    return-object v0
.end method

.method public final i()Lc/e/a/b/g/f/nb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->n()Lc/e/a/b/g/f/Sb;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/nb;

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/g/f/nb;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Lc/e/a/b/g/f/Sb;)V

    .line 4
    throw v1
.end method

.method public synthetic n()Lc/e/a/b/g/f/Sb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->h()Lc/e/a/b/g/f/nb;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lc/e/a/b/g/f/Sb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->i()Lc/e/a/b/g/f/nb;

    move-result-object v0

    return-object v0
.end method
