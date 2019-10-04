.class public final Lcom/google/gson/internal/bind/TreeTypeAdapter;
.super Lc/e/d/x;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TreeTypeAdapter$a;,
        Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/d/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/d/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/v<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lc/e/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/d/j;

.field public final d:Lc/e/d/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lc/e/d/y;

.field public final f:Lcom/google/gson/internal/bind/TreeTypeAdapter$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public g:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/d/v;Lc/e/d/o;Lc/e/d/j;Lc/e/d/c/a;Lc/e/d/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/v<",
            "TT;>;",
            "Lc/e/d/o<",
            "TT;>;",
            "Lc/e/d/j;",
            "Lc/e/d/c/a<",
            "TT;>;",
            "Lc/e/d/y;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/bind/TreeTypeAdapter$a;-><init>(Lcom/google/gson/internal/bind/TreeTypeAdapter;Lc/e/d/b/a/l;)V

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    .line 3
    iput-object p1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lc/e/d/v;

    .line 4
    iput-object p2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lc/e/d/o;

    .line 5
    iput-object p3, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lc/e/d/j;

    .line 6
    iput-object p4, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/e/d/c/a;

    .line 7
    iput-object p5, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lc/e/d/y;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lc/e/d/o;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lc/e/d/b/z;->a(Lc/e/d/d/b;)Lc/e/d/p;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lc/e/d/p;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lc/e/d/o;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/e/d/c/a;

    invoke-virtual {v1}, Lc/e/d/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-interface {v0, p1, v1, v2}, Lc/e/d/o;->a(Lc/e/d/p;Ljava/lang/reflect/Type;Lc/e/d/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lc/e/d/v;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b()Lc/e/d/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lc/e/d/d/c;->C()Lc/e/d/d/c;

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/e/d/c/a;

    invoke-virtual {v1}, Lc/e/d/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$a;

    invoke-interface {v0, p2, v1, v2}, Lc/e/d/v;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc/e/d/u;)Lc/e/d/p;

    move-result-object p2

    .line 10
    invoke-static {p2, p1}, Lc/e/d/b/z;->a(Lc/e/d/p;Lc/e/d/d/c;)V

    return-void
.end method

.method public final b()Lc/e/d/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lc/e/d/x;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lc/e/d/j;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lc/e/d/y;

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/e/d/c/a;

    .line 3
    invoke-virtual {v0, v1, v2}, Lc/e/d/j;->a(Lc/e/d/y;Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lc/e/d/x;

    :goto_0
    return-object v0
.end method
