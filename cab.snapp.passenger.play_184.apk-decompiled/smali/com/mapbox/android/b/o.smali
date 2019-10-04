.class public final Lcom/mapbox/android/b/o;
.super Lcom/mapbox/android/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/android/b/o$a;,
        Lcom/mapbox/android/b/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mapbox/android/b/b<",
        "Lcom/mapbox/android/b/o$b;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Lcom/mapbox/android/b/o$b;

.field private final e:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/b;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    .line 33
    new-instance p2, Lcom/mapbox/android/b/o$1;

    invoke-direct {p2, p0}, Lcom/mapbox/android/b/o$1;-><init>(Lcom/mapbox/android/b/o;)V

    iput-object p2, p0, Lcom/mapbox/android/b/o;->d:Lcom/mapbox/android/b/o$b;

    .line 30
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    iget-object v0, p0, Lcom/mapbox/android/b/o;->d:Lcom/mapbox/android/b/o$b;

    invoke-direct {p2, p1, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/mapbox/android/b/o;->e:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method protected final b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/mapbox/android/b/o;->e:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final isLongpressEnabled()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mapbox/android/b/o;->e:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0}, Landroidx/core/view/GestureDetectorCompat;->isLongpressEnabled()Z

    move-result v0

    return v0
.end method

.method public final setIsLongpressEnabled(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mapbox/android/b/o;->e:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    return-void
.end method
