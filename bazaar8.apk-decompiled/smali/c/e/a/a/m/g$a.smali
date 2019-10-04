.class public final Lc/e/a/a/m/g$a;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Lc/e/a/a/M$b;
.implements Lc/e/a/a/m/p$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/m/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/m/g;


# direct methods
.method public constructor <init>(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/m/g;Lc/e/a/a/m/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/m/g$a;-><init>(Lc/e/a/a/m/g;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 8
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->u(Lc/e/a/a/m/g;)V

    .line 9
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;)V

    return-void
.end method

.method public synthetic a(Lc/e/a/a/K;)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lc/e/a/a/K;)V

    return-void
.end method

.method public a(Lc/e/a/a/Z;Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;)V

    .line 11
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->c(Lc/e/a/a/m/g;)V

    return-void
.end method

.method public a(Lc/e/a/a/m/p;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->h(Lc/e/a/a/m/g;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->h(Lc/e/a/a/m/g;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v0}, Lc/e/a/a/m/g;->p(Lc/e/a/a/m/g;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->q(Lc/e/a/a/m/g;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lc/e/a/a/o/I;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/m/p;JZ)V
    .locals 1

    .line 3
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;Z)Z

    if-nez p4, :cond_0

    .line 4
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->r(Lc/e/a/a/m/g;)Lc/e/a/a/M;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->r(Lc/e/a/a/m/g;)Lc/e/a/a/M;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;Lc/e/a/a/M;J)V

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V

    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;Z)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 6
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->s(Lc/e/a/a/m/g;)V

    .line 7
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->t(Lc/e/a/a/m/g;)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lc/e/a/a/N;->a(Lc/e/a/a/M$b;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 6
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;)V

    .line 7
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->c(Lc/e/a/a/m/g;)V

    return-void
.end method

.method public b(Lc/e/a/a/m/p;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;Z)Z

    .line 2
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->h(Lc/e/a/a/m/g;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->h(Lc/e/a/a/m/g;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v0}, Lc/e/a/a/m/g;->p(Lc/e/a/a/m/g;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->q(Lc/e/a/a/m/g;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lc/e/a/a/o/I;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 4
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->b(Lc/e/a/a/m/g;)V

    .line 5
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v0}, Lc/e/a/a/m/g;->r(Lc/e/a/a/m/g;)Lc/e/a/a/M;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->d(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 3
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1, v0}, Lc/e/a/a/m/g;->a(Lc/e/a/a/m/g;Lc/e/a/a/M;)V

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->e(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 5
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1, v0}, Lc/e/a/a/m/g;->b(Lc/e/a/a/m/g;Lc/e/a/a/M;)V

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->f(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 7
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1, v0}, Lc/e/a/a/m/g;->c(Lc/e/a/a/m/g;Lc/e/a/a/M;)V

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->g(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 9
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1, v0}, Lc/e/a/a/m/g;->d(Lc/e/a/a/m/g;Lc/e/a/a/M;)V

    goto/16 :goto_1

    .line 10
    :cond_4
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->i(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_7

    .line 11
    invoke-interface {v0}, Lc/e/a/a/M;->b()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 12
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->j(Lc/e/a/a/m/g;)Lc/e/a/a/L;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->j(Lc/e/a/a/m/g;)Lc/e/a/a/L;

    move-result-object p1

    invoke-interface {p1}, Lc/e/a/a/L;->a()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-interface {v0}, Lc/e/a/a/M;->b()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 15
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->k(Lc/e/a/a/m/g;)Lc/e/a/a/r;

    move-result-object p1

    invoke-interface {v0}, Lc/e/a/a/M;->j()I

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p1, v0, v1, v3, v4}, Lc/e/a/a/r;->a(Lc/e/a/a/M;IJ)Z

    .line 16
    :cond_6
    :goto_0
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->k(Lc/e/a/a/m/g;)Lc/e/a/a/r;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Lc/e/a/a/r;->b(Lc/e/a/a/M;Z)Z

    goto :goto_1

    .line 17
    :cond_7
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->l(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_8

    .line 18
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->k(Lc/e/a/a/m/g;)Lc/e/a/a/r;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lc/e/a/a/r;->b(Lc/e/a/a/M;Z)Z

    goto :goto_1

    .line 19
    :cond_8
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->m(Lc/e/a/a/m/g;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_9

    .line 20
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->k(Lc/e/a/a/m/g;)Lc/e/a/a/r;

    move-result-object p1

    .line 21
    invoke-interface {v0}, Lc/e/a/a/M;->d()I

    move-result v1

    iget-object v2, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v2}, Lc/e/a/a/m/g;->n(Lc/e/a/a/m/g;)I

    move-result v2

    invoke-static {v1, v2}, Lc/e/a/a/o/y;->a(II)I

    move-result v1

    .line 22
    invoke-interface {p1, v0, v1}, Lc/e/a/a/r;->a(Lc/e/a/a/M;I)Z

    goto :goto_1

    .line 23
    :cond_9
    iget-object v1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {v1}, Lc/e/a/a/m/g;->o(Lc/e/a/a/m/g;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 24
    iget-object p1, p0, Lc/e/a/a/m/g$a;->a:Lc/e/a/a/m/g;

    invoke-static {p1}, Lc/e/a/a/m/g;->k(Lc/e/a/a/m/g;)Lc/e/a/a/r;

    move-result-object p1

    invoke-interface {v0}, Lc/e/a/a/M;->s()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Lc/e/a/a/r;->a(Lc/e/a/a/M;Z)Z

    :cond_a
    :goto_1
    return-void
.end method
