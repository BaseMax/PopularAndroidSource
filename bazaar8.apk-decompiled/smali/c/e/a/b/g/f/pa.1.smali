.class public final synthetic Lc/e/a/b/g/f/pa;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/g/f/na;


# instance fields
.field public final a:Lc/e/a/b/g/f/oa;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/oa;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/g/f/pa;->a:Lc/e/a/b/g/f/oa;

    iput-object p2, p0, Lc/e/a/b/g/f/pa;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/e/a/b/g/f/pa;->a:Lc/e/a/b/g/f/oa;

    iget-object v1, p0, Lc/e/a/b/g/f/pa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/g/f/oa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
