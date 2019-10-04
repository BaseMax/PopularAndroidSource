.class public final Li/a/la;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Li/a/ma;


# instance fields
.field public final a:Li/a/Da;


# direct methods
.method public constructor <init>(Li/a/Da;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/la;->a:Li/a/Da;

    return-void
.end method


# virtual methods
.method public b()Li/a/Da;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/la;->a:Li/a/Da;

    return-object v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Li/a/K;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/a/la;->b()Li/a/Da;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Li/a/Da;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
