.class final Lcom/google/android/material/textfield/b$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/b;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:I

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/google/android/material/textfield/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/b;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/google/android/material/textfield/b$1;->e:Lcom/google/android/material/textfield/b;

    iput p2, p0, Lcom/google/android/material/textfield/b$1;->a:I

    iput-object p3, p0, Lcom/google/android/material/textfield/b$1;->b:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/b$1;->c:I

    iput-object p5, p0, Lcom/google/android/material/textfield/b$1;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcom/google/android/material/textfield/b$1;->e:Lcom/google/android/material/textfield/b;

    iget v0, p0, Lcom/google/android/material/textfield/b$1;->a:I

    .line 1057
    iput v0, p1, Lcom/google/android/material/textfield/b;->d:I

    const/4 v0, 0x0

    .line 2057
    iput-object v0, p1, Lcom/google/android/material/textfield/b;->c:Landroid/animation/Animator;

    .line 232
    iget-object p1, p0, Lcom/google/android/material/textfield/b$1;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    .line 233
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget p1, p0, Lcom/google/android/material/textfield/b$1;->c:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/b$1;->e:Lcom/google/android/material/textfield/b;

    .line 3057
    iget-object p1, p1, Lcom/google/android/material/textfield/b;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/google/android/material/textfield/b$1;->e:Lcom/google/android/material/textfield/b;

    .line 4057
    iget-object p1, p1, Lcom/google/android/material/textfield/b;->h:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/google/android/material/textfield/b$1;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
