.class public final Lcom/google/android/material/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/i$a;
    }
.end annotation


# instance fields
.field a:Landroid/animation/ValueAnimator;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/material/internal/i$a;

.field private final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/i;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/google/android/material/internal/i;->c:Lcom/google/android/material/internal/i$a;

    .line 40
    iput-object v0, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    .line 42
    new-instance v0, Lcom/google/android/material/internal/i$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/i$1;-><init>(Lcom/google/android/material/internal/i;)V

    iput-object v0, p0, Lcom/google/android/material/internal/i;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public final addState([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 60
    new-instance v0, Lcom/google/android/material/internal/i$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/i$a;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 61
    iget-object p1, p0, Lcom/google/android/material/internal/i;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    iget-object p1, p0, Lcom/google/android/material/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final jumpToCurrentState()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public final setState([I)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/google/android/material/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 70
    iget-object v3, p0, Lcom/google/android/material/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/i$a;

    .line 71
    iget-object v4, v3, Lcom/google/android/material/internal/i$a;->a:[I

    invoke-static {v4, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 76
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/internal/i;->c:Lcom/google/android/material/internal/i$a;

    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 1096
    iget-object p1, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    .line 1097
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1098
    iput-object v2, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    .line 83
    :cond_3
    iput-object v3, p0, Lcom/google/android/material/internal/i;->c:Lcom/google/android/material/internal/i$a;

    if-eqz v3, :cond_4

    .line 2091
    iget-object p1, v3, Lcom/google/android/material/internal/i$a;->b:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    .line 2092
    iget-object p1, p0, Lcom/google/android/material/internal/i;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method
