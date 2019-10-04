.class public final Lc/e/a/a/j/e/f$a;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lc/e/a/a/j/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/e/c$a;

.field public final b:Lc/e/a/a/n/j$a;

.field public c:Lc/e/a/a/n/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/n/y$a<",
            "+",
            "Lc/e/a/a/j/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/e/a/a/j/q;

.field public f:Lc/e/a/a/n/v;

.field public g:J

.field public h:Z

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/e/c$a;Lc/e/a/a/n/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/j/e/c$a;

    iput-object p1, p0, Lc/e/a/a/j/e/f$a;->a:Lc/e/a/a/j/e/c$a;

    .line 4
    iput-object p2, p0, Lc/e/a/a/j/e/f$a;->b:Lc/e/a/a/n/j$a;

    .line 5
    new-instance p1, Lc/e/a/a/n/t;

    invoke-direct {p1}, Lc/e/a/a/n/t;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/e/f$a;->f:Lc/e/a/a/n/v;

    const-wide/16 p1, 0x7530

    .line 6
    iput-wide p1, p0, Lc/e/a/a/j/e/f$a;->g:J

    .line 7
    new-instance p1, Lc/e/a/a/j/r;

    invoke-direct {p1}, Lc/e/a/a/j/r;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/e/f$a;->e:Lc/e/a/a/j/q;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/j/e/b$a;

    invoke-direct {v0, p1}, Lc/e/a/a/j/e/b$a;-><init>(Lc/e/a/a/n/j$a;)V

    invoke-direct {p0, v0, p1}, Lc/e/a/a/j/e/f$a;-><init>(Lc/e/a/a/j/e/c$a;Lc/e/a/a/n/j$a;)V

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Lc/e/a/a/j/e/f;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/e/a/a/j/e/f$a;->h:Z

    .line 2
    iget-object v1, v0, Lc/e/a/a/j/e/f$a;->c:Lc/e/a/a/n/y$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    iput-object v1, v0, Lc/e/a/a/j/e/f$a;->c:Lc/e/a/a/n/y$a;

    .line 4
    :cond_0
    iget-object v1, v0, Lc/e/a/a/j/e/f$a;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lc/e/a/a/h/c;

    iget-object v3, v0, Lc/e/a/a/j/e/f$a;->c:Lc/e/a/a/n/y$a;

    invoke-direct {v2, v3, v1}, Lc/e/a/a/h/c;-><init>(Lc/e/a/a/n/y$a;Ljava/util/List;)V

    iput-object v2, v0, Lc/e/a/a/j/e/f$a;->c:Lc/e/a/a/n/y$a;

    .line 6
    :cond_1
    new-instance v1, Lc/e/a/a/j/e/f;

    const/4 v5, 0x0

    .line 7
    invoke-static/range {p1 .. p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p1

    check-cast v6, Landroid/net/Uri;

    iget-object v7, v0, Lc/e/a/a/j/e/f$a;->b:Lc/e/a/a/n/j$a;

    iget-object v8, v0, Lc/e/a/a/j/e/f$a;->c:Lc/e/a/a/n/y$a;

    iget-object v9, v0, Lc/e/a/a/j/e/f$a;->a:Lc/e/a/a/j/e/c$a;

    iget-object v10, v0, Lc/e/a/a/j/e/f$a;->e:Lc/e/a/a/j/q;

    iget-object v11, v0, Lc/e/a/a/j/e/f$a;->f:Lc/e/a/a/n/v;

    iget-wide v12, v0, Lc/e/a/a/j/e/f$a;->g:J

    iget-object v14, v0, Lc/e/a/a/j/e/f$a;->i:Ljava/lang/Object;

    const/4 v15, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lc/e/a/a/j/e/f;-><init>(Lc/e/a/a/j/e/a/a;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/e/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JLjava/lang/Object;Lc/e/a/a/j/e/e;)V

    return-object v1
.end method
