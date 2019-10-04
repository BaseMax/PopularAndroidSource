.class public final Lc/c/a/c/f/a/d;
.super Ljava/lang/Object;
.source "Builder.kt"


# instance fields
.field public final a:Lc/c/a/c/f/a/c;

.field public final b:Lc/c/a/c/f/a/b;

.field public final c:Lc/c/a/c/f/a/a;

.field public d:Lc/c/a/c/f/a/c/a;

.field public e:Lc/c/a/c/f/a/b/a;

.field public f:Lc/c/a/c/f/a/a/a;

.field public final g:Lc/e/d/k;


# direct methods
.method public constructor <init>(Lc/e/d/k;)V
    .locals 1

    const-string v0, "gsonBuilder"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/c/f/a/d;->g:Lc/e/d/k;

    .line 2
    new-instance p1, Lc/c/a/c/f/a/c;

    invoke-direct {p1}, Lc/c/a/c/f/a/c;-><init>()V

    iput-object p1, p0, Lc/c/a/c/f/a/d;->a:Lc/c/a/c/f/a/c;

    .line 3
    new-instance p1, Lc/c/a/c/f/a/b;

    invoke-direct {p1}, Lc/c/a/c/f/a/b;-><init>()V

    iput-object p1, p0, Lc/c/a/c/f/a/d;->b:Lc/c/a/c/f/a/b;

    .line 4
    new-instance p1, Lc/c/a/c/f/a/a;

    invoke-direct {p1}, Lc/c/a/c/f/a/a;-><init>()V

    iput-object p1, p0, Lc/c/a/c/f/a/d;->c:Lc/c/a/c/f/a/a;

    .line 5
    iget-object p1, p0, Lc/c/a/c/f/a/d;->a:Lc/c/a/c/f/a/c;

    iput-object p1, p0, Lc/c/a/c/f/a/d;->d:Lc/c/a/c/f/a/c/a;

    .line 6
    iget-object p1, p0, Lc/c/a/c/f/a/d;->b:Lc/c/a/c/f/a/b;

    iput-object p1, p0, Lc/c/a/c/f/a/d;->e:Lc/c/a/c/f/a/b/a;

    .line 7
    iget-object p1, p0, Lc/c/a/c/f/a/d;->c:Lc/c/a/c/f/a/a;

    iput-object p1, p0, Lc/c/a/c/f/a/d;->f:Lc/c/a/c/f/a/a/a;

    return-void
.end method


# virtual methods
.method public final a()Lc/e/d/k;
    .locals 3

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;

    iget-object v1, p0, Lc/c/a/c/f/a/d;->d:Lc/c/a/c/f/a/c/a;

    iget-object v2, p0, Lc/c/a/c/f/a/d;->f:Lc/c/a/c/f/a/a/a;

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/common/sweep/gson/wrapper/WrapperTypeAdapterFactory;-><init>(Lc/c/a/c/f/a/c/a;Lc/c/a/c/f/a/a/a;)V

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;

    iget-object v2, p0, Lc/c/a/c/f/a/d;->e:Lc/c/a/c/f/a/b/a;

    invoke-direct {v1, v2}, Lcom/farsitel/bazaar/common/sweep/gson/unwrapper/UnwrapperTypeAdapterFactory;-><init>(Lc/c/a/c/f/a/b/a;)V

    .line 5
    iget-object v2, p0, Lc/c/a/c/f/a/d;->g:Lc/e/d/k;

    invoke-virtual {v2, v0}, Lc/e/d/k;->a(Lc/e/d/y;)Lc/e/d/k;

    .line 6
    iget-object v0, p0, Lc/c/a/c/f/a/d;->g:Lc/e/d/k;

    invoke-virtual {v0, v1}, Lc/e/d/k;->a(Lc/e/d/y;)Lc/e/d/k;

    .line 7
    iget-object v0, p0, Lc/c/a/c/f/a/d;->g:Lc/e/d/k;

    return-object v0
.end method

.method public final a(Lc/c/a/c/f/a/a/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/c/f/a/d;->f:Lc/c/a/c/f/a/a/a;

    return-void
.end method

.method public final a(Lc/c/a/c/f/a/b/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lc/c/a/c/f/a/d;->e:Lc/c/a/c/f/a/b/a;

    return-void
.end method
