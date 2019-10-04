.class public Lc/e/a/a/e/a$a;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"

# interfaces
.implements Lc/e/a/a/e/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/a$e;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Lc/e/a/a/e/a$e;JJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/a$a;->a:Lc/e/a/a/e/a$e;

    .line 3
    iput-wide p2, p0, Lc/e/a/a/e/a$a;->b:J

    .line 4
    iput-wide p4, p0, Lc/e/a/a/e/a$a;->c:J

    .line 5
    iput-wide p6, p0, Lc/e/a/a/e/a$a;->d:J

    .line 6
    iput-wide p8, p0, Lc/e/a/a/e/a$a;->e:J

    .line 7
    iput-wide p10, p0, Lc/e/a/a/e/a$a;->f:J

    .line 8
    iput-wide p12, p0, Lc/e/a/a/e/a$a;->g:J

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/e/a$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$a;->c:J

    return-wide v0
.end method

.method public static synthetic b(Lc/e/a/a/e/a$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$a;->d:J

    return-wide v0
.end method

.method public static synthetic c(Lc/e/a/a/e/a$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$a;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lc/e/a/a/e/a$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$a;->f:J

    return-wide v0
.end method

.method public static synthetic e(Lc/e/a/a/e/a$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/a$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public b(J)Lc/e/a/a/e/o$a;
    .locals 13

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/a$a;->a:Lc/e/a/a/e/a$e;

    .line 3
    invoke-interface {v0, p1, p2}, Lc/e/a/a/e/a$e;->a(J)J

    iget-wide v3, p0, Lc/e/a/a/e/a$a;->c:J

    iget-wide v5, p0, Lc/e/a/a/e/a$a;->d:J

    iget-wide v7, p0, Lc/e/a/a/e/a$a;->e:J

    iget-wide v9, p0, Lc/e/a/a/e/a$a;->f:J

    iget-wide v11, p0, Lc/e/a/a/e/a$a;->g:J

    move-wide v1, p1

    .line 4
    invoke-static/range {v1 .. v12}, Lc/e/a/a/e/a$d;->a(JJJJJJ)J

    move-result-wide v0

    .line 5
    new-instance v2, Lc/e/a/a/e/o$a;

    new-instance v3, Lc/e/a/a/e/p;

    invoke-direct {v3, p1, p2, v0, v1}, Lc/e/a/a/e/p;-><init>(JJ)V

    invoke-direct {v2, v3}, Lc/e/a/a/e/o$a;-><init>(Lc/e/a/a/e/p;)V

    return-object v2
.end method

.method public c(J)J
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/e/a$a;->a:Lc/e/a/a/e/a$e;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/e/a$e;->a(J)J

    return-wide p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lc/e/a/a/e/a$a;->b:J

    return-wide v0
.end method
