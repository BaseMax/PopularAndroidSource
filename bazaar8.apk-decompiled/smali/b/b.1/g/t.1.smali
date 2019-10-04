.class public Lb/b/g/t;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field public final a:Lb/b/g/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget v0, Lb/b/a;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lb/b/g/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lb/b/g/u;

    invoke-direct {p1, p0}, Lb/b/g/u;-><init>(Landroid/widget/SeekBar;)V

    iput-object p1, p0, Lb/b/g/t;->a:Lb/b/g/u;

    .line 4
    iget-object p1, p0, Lb/b/g/t;->a:Lb/b/g/u;

    invoke-virtual {p1, p2, p3}, Lb/b/g/u;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lb/b/g/t;->a:Lb/b/g/u;

    invoke-virtual {v0}, Lb/b/g/u;->d()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Lb/b/g/t;->a:Lb/b/g/u;

    invoke-virtual {v0}, Lb/b/g/u;->e()V

    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lb/b/g/t;->a:Lb/b/g/u;

    invoke-virtual {v0, p1}, Lb/b/g/u;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
