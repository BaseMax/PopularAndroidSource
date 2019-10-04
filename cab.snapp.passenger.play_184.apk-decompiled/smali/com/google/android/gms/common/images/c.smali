.class public final Lcom/google/android/gms/common/images/c;
.super Lcom/google/android/gms/common/images/a;


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/av;->zzv(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/c;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/av;->zzv(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/c;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/images/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    instance-of v4, v0, Lcom/google/android/gms/internal/zzbfk;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbfk;->zzakg()I

    move-result v4

    iget v5, p0, Lcom/google/android/gms/common/images/c;->b:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/google/android/gms/common/images/c;->b:I

    if-eq v4, v5, :cond_9

    .line 1000
    :cond_1
    iget-boolean v4, p0, Lcom/google/android/gms/common/images/a;->c:Z

    if-eqz v4, :cond_2

    if-nez p3, :cond_2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 p2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of v4, p3, Lcom/google/android/gms/internal/ee;

    if-eqz v4, :cond_4

    check-cast p3, Lcom/google/android/gms/internal/ee;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->zzake()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_2

    :cond_3
    move-object p3, p2

    :cond_4
    :goto_2
    new-instance v4, Lcom/google/android/gms/internal/ee;

    invoke-direct {v4, p3, p1}, Lcom/google/android/gms/internal/ee;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v4

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p3, v0, Lcom/google/android/gms/internal/zzbfk;

    if-eqz p3, :cond_8

    if-eqz p4, :cond_6

    iget-object p2, p0, Lcom/google/android/gms/common/images/c;->a:Lcom/google/android/gms/common/images/b;

    iget-object p2, p2, Lcom/google/android/gms/common/images/b;->uri:Landroid/net/Uri;

    :cond_6
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbfk;->zzn(Landroid/net/Uri;)V

    if-eqz v3, :cond_7

    iget v2, p0, Lcom/google/android/gms/common/images/c;->b:I

    :cond_7
    invoke-static {v2}, Lcom/google/android/gms/internal/zzbfk;->zzcd(I)V

    :cond_8
    if-eqz v1, :cond_9

    check-cast p1, Lcom/google/android/gms/internal/ee;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ee;->startTransition(I)V

    :cond_9
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/common/images/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/c;

    iget-object v2, p0, Lcom/google/android/gms/common/images/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/google/android/gms/common/images/c;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/ag;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
