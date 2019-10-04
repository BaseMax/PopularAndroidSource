.class public final Lc/e/a/a/j/I$a;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/j$a;

.field public b:Lc/e/a/a/n/v;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/n/j$a;

    iput-object p1, p0, Lc/e/a/a/j/I$a;->a:Lc/e/a/a/n/j$a;

    .line 3
    new-instance p1, Lc/e/a/a/n/t;

    invoke-direct {p1}, Lc/e/a/a/n/t;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/I$a;->b:Lc/e/a/a/n/v;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;J)Lc/e/a/a/j/I;
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/j/I$a;->d:Z

    .line 2
    new-instance v0, Lc/e/a/a/j/I;

    iget-object v3, p0, Lc/e/a/a/j/I$a;->a:Lc/e/a/a/n/j$a;

    iget-object v7, p0, Lc/e/a/a/j/I$a;->b:Lc/e/a/a/n/v;

    iget-boolean v8, p0, Lc/e/a/a/j/I$a;->c:Z

    iget-object v9, p0, Lc/e/a/a/j/I$a;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v10}, Lc/e/a/a/j/I;-><init>(Landroid/net/Uri;Lc/e/a/a/n/j$a;Lcom/google/android/exoplayer2/Format;JLc/e/a/a/n/v;ZLjava/lang/Object;Lc/e/a/a/j/H;)V

    return-object v0
.end method
