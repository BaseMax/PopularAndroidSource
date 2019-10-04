.class public Lc/e/a/a/e/f/c$a;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lc/e/a/a/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/e/f/c;


# direct methods
.method public constructor <init>(Lc/e/a/a/e/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/e/f/c$a;->a:Lc/e/a/a/e/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/e/f/c;Lc/e/a/a/e/f/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/e/f/c$a;-><init>(Lc/e/a/a/e/f/c;)V

    return-void
.end method


# virtual methods
.method public b(J)Lc/e/a/a/e/o$a;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1
    new-instance p1, Lc/e/a/a/e/o$a;

    new-instance p2, Lc/e/a/a/e/p;

    iget-object v2, p0, Lc/e/a/a/e/f/c$a;->a:Lc/e/a/a/e/f/c;

    invoke-static {v2}, Lc/e/a/a/e/f/c;->a(Lc/e/a/a/e/f/c;)J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lc/e/a/a/e/p;-><init>(JJ)V

    invoke-direct {p1, p2}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/f/c$a;->a:Lc/e/a/a/e/f/c;

    invoke-static {v0}, Lc/e/a/a/e/f/c;->b(Lc/e/a/a/e/f/c;)Lc/e/a/a/e/f/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/e/f/k;->b(J)J

    move-result-wide v4

    .line 3
    iget-object v1, p0, Lc/e/a/a/e/f/c$a;->a:Lc/e/a/a/e/f/c;

    invoke-static {v1}, Lc/e/a/a/e/f/c;->a(Lc/e/a/a/e/f/c;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lc/e/a/a/e/f/c;->a(Lc/e/a/a/e/f/c;JJJ)J

    move-result-wide v0

    .line 4
    new-instance v2, Lc/e/a/a/e/o$a;

    new-instance v3, Lc/e/a/a/e/p;

    invoke-direct {v3, p1, p2, v0, v1}, Lc/e/a/a/e/p;-><init>(JJ)V

    invoke-direct {v2, v3}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object v2
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/e/f/c$a;->a:Lc/e/a/a/e/f/c;

    invoke-static {v0}, Lc/e/a/a/e/f/c;->b(Lc/e/a/a/e/f/c;)Lc/e/a/a/e/f/k;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/e/f/c$a;->a:Lc/e/a/a/e/f/c;

    invoke-static {v1}, Lc/e/a/a/e/f/c;->c(Lc/e/a/a/e/f/c;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/e/f/k;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
