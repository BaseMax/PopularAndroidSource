.class public Lf/a/a/e/b/b;
.super Ljava/lang/Object;
.source "AudioInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/c;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/c;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b;->a:Lf/a/a/e/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/b;->a:Lf/a/a/e/b/c;

    iget-object v1, v0, Lf/a/a/e/b/c;->b:Landroid/widget/SeekBar;

    iget-object v0, v0, Lf/a/a/e/b/c;->c:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b;->a:Lf/a/a/e/b/c;

    iget-object v0, v0, Lf/a/a/e/b/c;->d:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/a/a/f/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/b;->a:Lf/a/a/e/b/c;

    iget-object v1, v0, Lf/a/a/e/b/c;->e:Landroid/widget/TextView;

    iget-object v0, v0, Lf/a/a/e/b/c;->c:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/f/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lf/a/a/e/b/b;->a:Lf/a/a/e/b/c;

    iget-object v1, v0, Lf/a/a/e/b/c;->g:Lf/a/a/e/b/i;

    iget-object v2, v0, Lf/a/a/e/b/c;->a:Lf/a/a/e/g;

    iget-object v0, v0, Lf/a/a/e/b/c;->c:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    invoke-static {v1, v2, v0}, Lf/a/a/e/b/i;->a(Lf/a/a/e/b/i;Lf/a/a/e/g;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;)V

    .line 5
    iget-object v0, p0, Lf/a/a/e/b/b;->a:Lf/a/a/e/b/c;

    iget-object v0, v0, Lf/a/a/e/b/c;->f:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    sget-object v1, Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;->STOPPED:Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ux/audio/PlayPauseView;->setState(Lir/cafebazaar/inline/ux/audio/PlayPauseView$State;)V

    return-void
.end method
