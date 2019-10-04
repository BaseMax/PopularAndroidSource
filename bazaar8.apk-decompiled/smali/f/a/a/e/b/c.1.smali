.class public Lf/a/a/e/b/c;
.super Ljava/lang/Object;
.source "AudioInflater.java"

# interfaces
.implements Lf/a/a/g/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/i;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Landroid/widget/SeekBar;

.field public final synthetic c:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

.field public final synthetic g:Lf/a/a/e/b/i;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/i;Lf/a/a/e/g;Landroid/widget/SeekBar;Lir/cafebazaar/inline/ux/audio/MusicDescriptor;Landroid/widget/TextView;Landroid/widget/TextView;Lir/cafebazaar/inline/ux/audio/PlayPauseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/c;->g:Lf/a/a/e/b/i;

    iput-object p2, p0, Lf/a/a/e/b/c;->a:Lf/a/a/e/g;

    iput-object p3, p0, Lf/a/a/e/b/c;->b:Landroid/widget/SeekBar;

    iput-object p4, p0, Lf/a/a/e/b/c;->c:Lir/cafebazaar/inline/ux/audio/MusicDescriptor;

    iput-object p5, p0, Lf/a/a/e/b/c;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lf/a/a/e/b/c;->e:Landroid/widget/TextView;

    iput-object p7, p0, Lf/a/a/e/b/c;->f:Lir/cafebazaar/inline/ux/audio/PlayPauseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/a/a/e/b/c;->a:Lf/a/a/e/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/c;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/c;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/c;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    new-instance v1, Lf/a/a/e/b/b;

    invoke-direct {v1, p0}, Lf/a/a/e/b/b;-><init>(Lf/a/a/e/b/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
