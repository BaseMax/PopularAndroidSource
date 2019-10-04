.class public final Lc/e/a/a/b/B$a;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/b/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/b/B;


# direct methods
.method public constructor <init>(Lc/e/a/a/b/B;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/b/B;Lc/e/a/a/b/A;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/b/B$a;-><init>(Lc/e/a/a/b/B;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    invoke-virtual {v0}, Lc/e/a/a/b/B;->V()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/e/a/a/b/B;->a(Lc/e/a/a/b/B;Z)Z

    return-void
.end method

.method public a(IJJ)V
    .locals 8

    .line 3
    iget-object v0, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    invoke-static {v0}, Lc/e/a/a/b/B;->a(Lc/e/a/a/b/B;)Lc/e/a/a/b/q$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lc/e/a/a/b/q$a;->a(IJJ)V

    .line 4
    iget-object v2, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lc/e/a/a/b/B;->a(IJJ)V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    invoke-static {v0}, Lc/e/a/a/b/B;->a(Lc/e/a/a/b/B;)Lc/e/a/a/b/q$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/a/b/q$a;->a(I)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/b/B$a;->a:Lc/e/a/a/b/B;

    invoke-virtual {v0, p1}, Lc/e/a/a/b/B;->c(I)V

    return-void
.end method
