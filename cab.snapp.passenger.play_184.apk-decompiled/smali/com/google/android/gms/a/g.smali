.class final Lcom/google/android/gms/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/k;


# instance fields
.field private synthetic a:Landroid/widget/FrameLayout;

.field private synthetic b:Landroid/view/LayoutInflater;

.field private synthetic c:Landroid/view/ViewGroup;

.field private synthetic d:Landroid/os/Bundle;

.field private synthetic e:Lcom/google/android/gms/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/c;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/g;->e:Lcom/google/android/gms/a/c;

    iput-object p2, p0, Lcom/google/android/gms/a/g;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/a/g;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/a/g;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/a/g;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/a/b;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/a/g;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/google/android/gms/a/g;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/a/g;->e:Lcom/google/android/gms/a/c;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/a/c;->a:Lcom/google/android/gms/a/b;

    iget-object v1, p0, Lcom/google/android/gms/a/g;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/gms/a/g;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/gms/a/g;->d:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/a/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
