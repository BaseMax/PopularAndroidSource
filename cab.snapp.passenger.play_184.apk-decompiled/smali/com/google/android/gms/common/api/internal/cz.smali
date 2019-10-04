.class final Lcom/google/android/gms/common/api/internal/cz;
.super Lcom/google/android/gms/common/api/internal/ax;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lcom/google/android/gms/common/api/internal/cy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/cy;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cz;->b:Lcom/google/android/gms/common/api/internal/cy;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cz;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/ax;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzahg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cz;->b:Lcom/google/android/gms/common/api/internal/cy;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cy;->a:Lcom/google/android/gms/common/api/internal/cw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/cw;->b()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cz;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cz;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
